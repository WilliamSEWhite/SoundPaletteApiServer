using Microsoft.EntityFrameworkCore; 
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.DataModels;
using SoundPaletteApiServer.Models;
using System.Linq;

namespace SoundPaletteApiServer.DbHelpers
{
    public class ChatDbHelper : DbHelperBase
    {
        private readonly IConfiguration _configuration;

        public ChatDbHelper(SPContext context, IConfiguration configuration)
            : base(context)
        {
            _configuration = configuration;
        }

        public async Task<List<ChatroomModel>> GetChatroomsForUser(int userId)
        {
            var chatrooms = await
                (
                        from chatroom in Context.tChatrooms.Include(o => o.ChatroomMembers).ThenInclude(o => o.User)
                        where chatroom.ChatroomMembers.Any(o => o.UserId == userId && o.IsActive)
                        let lastMessage = Context.tMessages.Include(o => o.ChatroomMember).ThenInclude(o => o.User)
                                                           .Where(o => o.ChatroomMember.ChatroomId == chatroom.ChatroomId)
                                                           .OrderByDescending(o => o.MessageId).FirstOrDefault()
                        let name =  string.IsNullOrEmpty(chatroom.ChatroomName) ? string.Join(", ", chatroom.ChatroomMembers.Where(o => o.UserId != userId && o.IsActive).Select(o => o.User.Username))
                                                                                : chatroom.ChatroomName
                        select new ChatroomModel(chatroom.ChatroomId, name, 
                                                 lastMessage != null ? lastMessage.Message : string.Empty,
                                                 lastMessage != null ? lastMessage.SentDate : chatroom.CreatedDate, 
                                                 lastMessage != null ? lastMessage.ChatroomMember.User.Username : string.Empty,
                                                 chatroom.IsGroupChat)

                ).ToListAsync();
            return chatrooms;
        }

        public async Task<List<ChatMessageModel>> GetMessagesForChatroom(int chatroomId)
        {
            var messages = await Context.tMessages.Include(o => o.ChatroomMember).ThenInclude(o => o.User)
                                                  .Where(o => o.ChatroomMember.ChatroomId == chatroomId && !o.IsDeleted).OrderBy(o => o.MessageId)
                                                  .Select(o => new ChatMessageModel(o)).ToListAsync();
            return messages;
        }

        public async Task<ChatroomModelLite> GetPrivateChatroom(int userId, string username)
        {
            var privateChatroom = await
                (
                        from chatroom in Context.tChatrooms.Include(o => o.ChatroomMembers).ThenInclude(o => o.User)
                        where chatroom.ChatroomMembers.Any(o => o.UserId == userId) && chatroom.ChatroomMembers.Any(o => o.User.Username == username) && chatroom.ChatroomMembers.Count == 2
                        orderby chatroom.ChatroomId descending
                        select chatroom
                ).FirstOrDefaultAsync(); 

            
            if(privateChatroom == null)
            {

                var members = new List<tChatroomMember>() 
                { 
                    new tChatroomMember(userId, true), 
                    new tChatroomMember(await Context.tUsers.Where(o => o.Username == username).Select(o => o.UserId).FirstOrDefaultAsync(), true) 
                };
                privateChatroom = new tChatroom(members, DateTime.Now, false);
                Context.tChatrooms.Add(privateChatroom);
                await Context.SaveChangesAsync();
            }
            else if (privateChatroom.ChatroomMembers.Any(o => !o.IsActive))
            {
                foreach(tChatroomMember m in privateChatroom.ChatroomMembers)
                {
                    m.IsActive = true;
                }
                Context.tChatrooms.Update(privateChatroom);
                await Context.SaveChangesAsync();

            }
            return new ChatroomModelLite(privateChatroom.ChatroomId, string.IsNullOrEmpty(privateChatroom.ChatroomName) ? username: privateChatroom.ChatroomName);
            
        }

        public async Task<ChatroomModelLite> CreateChatRoom(NewChatroomModel newChatRoom)
        {
            var members = await Context.tUsers.Where(o => newChatRoom.Users.Contains(o.Username)).Select(o => new tChatroomMember(o.UserId, true)).ToListAsync();
            var chatroom = new tChatroom(newChatRoom.Name, members, DateTime.Now, true);
            Context.tChatrooms.Add(chatroom);
            await Context.SaveChangesAsync();
            return new ChatroomModelLite(chatroom.ChatroomId, string.IsNullOrEmpty(chatroom.ChatroomName) ? chatroom.ChatroomName : string.Join(", ", newChatRoom.Users));
        }

        public async Task SendMessage(NewMessageModel newMessage)
        {
            var chatRoomMember = await Context.tChatroomMembers.Where(o => o.ChatroomId == newMessage.ChatRoomId && o.UserId == newMessage.UserId).FirstOrDefaultAsync();
            if(chatRoomMember != null)
            {
                var message = new tMessage(newMessage.Message, DateTime.Now, chatRoomMember.ChatroomMemberId, false);
                Context.tMessages.Add(message);
                var notifications = await 
                    (
                        from user in Context.tChatroomMembers.Include(o => o.User).Include(o => o.Chatroom).ThenInclude(o => o.ChatroomMembers).ThenInclude(o => o.User)
                        where user.ChatroomId == chatRoomMember.ChatroomId
                        let notificationSetting = Context.tNotificationSettings.Include(o => o.NotificationType).Where(o => o.NotificationType.Description == "Message" && o.UserId == user.UserId).FirstOrDefault()
                        where notificationSetting.SendNotification && user.IsActive && notificationSetting.UserId != newMessage.UserId
                        let name = string.IsNullOrEmpty(user.Chatroom.ChatroomName) ? string.Join(", ", user.Chatroom.ChatroomMembers.Where(o => o.UserId != newMessage.UserId && o.IsActive).Select(o => o.User.Username))
                                                        : user.Chatroom.ChatroomName
                        select new tNotification
                        {
                            NotificationTypeId = notificationSetting.NotificationTypeId,
                            UserId = user.UserId,
                            Message = newMessage.Message,
                            ReferenceId = user.ChatroomId,
                            ReferenceName = name,
                            CreatedDate = DateTime.Now,
                            AppIsActive = true,
                            DeviceIsActive = true
                        }
                    ).ToListAsync();


                if (notifications != null && notifications.Any())
                    Context.tNotifications.AddRange(notifications);

                await Context.SaveChangesAsync();
            }
        }

        public async Task RemoveUserFromChatroom(int chatroomId, int userId)
        {
            var chatRoomMember = await Context.tChatroomMembers.Where(o => o.ChatroomId == chatroomId && o.UserId == userId).FirstOrDefaultAsync();
            if (chatRoomMember != null)
            {
                chatRoomMember.IsActive = false;
                await Context.SaveChangesAsync();
            }
        }

        public async Task UpdateChatroom(ChatroomUpdateModel chatroomUpdate)
        {
            var chatroom = Context.tChatrooms.Include(o => o.ChatroomMembers).ThenInclude(o => o.User)
                .FirstOrDefault(o => o.ChatroomId == chatroomUpdate.ChatroomId);
            chatroom.ChatroomName = chatroomUpdate.ChatroomName;
            foreach (tChatroomMember m in chatroom.ChatroomMembers)
            {
                if (chatroomUpdate.MembersToRemove.Contains(m.User.Username))
                    m.IsActive = false;
            }
            var members = await Context.tUsers.Where(o => chatroomUpdate.MembersToAdd.Contains(o.Username)).Select(o => new tChatroomMember(o.UserId, true)).ToListAsync();
            chatroom.ChatroomMembers.AddRange(members);
            Context.tChatrooms.Update(chatroom);
            await Context.SaveChangesAsync();
        }

        public async Task<ChatroomInfoModel> GetChatroomInfo(int userId, int chatroomId)
        {
            var chatroom = await Context.tChatrooms.Include(o => o.ChatroomMembers).ThenInclude(o => o.User).Where(o => o.ChatroomId == chatroomId)
                                                   .Select(o => new ChatroomInfoModel(o.ChatroomId, o.ChatroomName, o.ChatroomMembers.Where(o => o.IsActive && o.UserId != userId).Select(o => o.User.Username).ToList())).FirstOrDefaultAsync();
            return chatroom;
        }



    }
}
