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
                        let name =  string.IsNullOrEmpty(chatroom.ChatroomName) ? string.Join(", ", chatroom.ChatroomMembers.Where(o => o.UserId != userId).Select(o => o.User.Username))
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
                        where chatroom.ChatroomMembers.Any(o => o.UserId == userId) && chatroom.ChatroomMembers.Any(o => o.User.Username == username) && !chatroom.IsGroupChat
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
            return new ChatroomModelLite(privateChatroom.ChatroomId, string.IsNullOrEmpty(privateChatroom.ChatroomName) ? username: privateChatroom.ChatroomName);
            
        }

        public async Task<ChatroomModelLite> CreateChatRoom(NewChatroomModel newChatRoom)
        {
            var members = await Context.tUsers.Where(o => newChatRoom.Users.Contains(o.Username)).Select(o => new tChatroomMember(o.UserId, true)).ToListAsync();
            var chatroom = new tChatroom(newChatRoom.Name, members, DateTime.Now, false);
            Context.tChatrooms.Add(chatroom);
            return new ChatroomModelLite(chatroom.ChatroomId, string.IsNullOrEmpty(chatroom.ChatroomName) ? chatroom.ChatroomName : string.Join(", ", newChatRoom.Users));
        }

        public async Task SendMessage(NewMessageModel newMessage)
        {
            var chatRoomMember = await Context.tChatroomMembers.Where(o => o.ChatroomId == newMessage.ChatRoomId && o.UserId == newMessage.UserId).FirstOrDefaultAsync();
            if(chatRoomMember != null)
            {
                var message = new tMessage(newMessage.Message, DateTime.Now, chatRoomMember.ChatroomMemberId, false);
                Context.tMessages.Add(message);
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

        public async Task AddChatroomMembers(NewChatroomModel newChatroomMembers)
        {

        }

    }
}
