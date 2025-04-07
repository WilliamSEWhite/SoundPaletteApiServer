using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.DbHelpers;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Facade
{
    public class ChatFacade : FacadeBase
    {
        private readonly ChatDbHelper chatDbHelper;

        public ChatFacade(ChatDbHelper _chatDbHelper)
        {
            chatDbHelper = _chatDbHelper;
        }

        public async Task<List<ChatroomModel>> GetChatroomsForUser(int userId)
        {
            return await chatDbHelper.GetChatroomsForUser(userId);
        }

        public async Task<List<ChatMessageModel>> GetMessagesForChatroom(int chatroomId)
        {
            return await chatDbHelper.GetMessagesForChatroom(chatroomId);
        }

        public async Task<ChatroomModelLite> GetPrivateChatroom(int userId, string username)
        {
            return await chatDbHelper.GetPrivateChatroom(userId, username);
        }

        public async Task<ChatroomModelLite> CreateChatRoom(NewChatroomModel newChatRoom)
        {
            return await chatDbHelper.CreateChatRoom(newChatRoom);
        }

        public async Task SendMessage(NewMessageModel newMessage)
        {
            await chatDbHelper.SendMessage(newMessage);
        }

        public async Task RemoveUserFromChatroom(int chatroomId, int userId)
        {
            await chatDbHelper.RemoveUserFromChatroom(chatroomId, userId);
        }

        public async Task AddChatroomMembers(NewChatroomModel newChatroomMembers)
        {
            await chatDbHelper.AddChatroomMembers(newChatroomMembers);
        }

        public async Task<ChatroomInfoModel> GetChatroomInfo(int userId, int chatroomId)
        {
            return await chatDbHelper.GetChatroomInfo(userId, chatroomId);
        }
    }
}
