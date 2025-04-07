using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Controllers
{
    public class ChatController : BaseApiController
    {
        private readonly ChatFacade chatFacade;

        public ChatController(ChatFacade _chatFacade)
        {
            chatFacade = _chatFacade;
        }

        [HttpGet("get-user-chatrooms")]
        public async Task<IActionResult> GetChatroomsForUser([FromQuery]int userId)
        {
            var chatrooms = await chatFacade.GetChatroomsForUser(userId);
            return Ok(chatrooms);
        }

        [HttpGet("get-messages-for-chatroom")]
        public async Task<IActionResult> GetMessagesForChatroom([FromQuery]int chatroomId)
        {
            var messages = await chatFacade.GetMessagesForChatroom(chatroomId);
            return Ok(messages);
        }

        [HttpGet("get-private-chatroom")]
        public async Task<IActionResult> GetPrivateChatroom([FromQuery]int userId, [FromQuery]string username)
        {
            var chatroom = await chatFacade.GetPrivateChatroom(userId, username);
            return Ok(chatroom);
        }

        [HttpPost("create-chatroom")]
        public async Task<IActionResult> CreateChatRoom([FromBody]NewChatroomModel newChatroom)
        {
            var chatroom = await chatFacade.CreateChatRoom(newChatroom);
            return Ok(chatroom);
        }

        [HttpPost("send-message")]
        public async Task<IActionResult> SendMessage([FromBody]NewMessageModel newMessage)
        {
            await chatFacade.SendMessage(newMessage);
            return Ok();
        }

        [HttpGet("remove-user-from-chat")]
        public async Task<IActionResult> RemoveUserFromChatroom([FromQuery] int chatroomId, [FromQuery]int userId)
        {
            await chatFacade.RemoveUserFromChatroom(chatroomId, userId);
            return Ok();
        }

        [HttpPost("add-chatroom-members")]
        public async Task<IActionResult> AddChatroomMembers([FromBody]NewChatroomModel newChatroomMembers)
        {
            await chatFacade.AddChatroomMembers(newChatroomMembers);
            return Ok();
        }
        [HttpGet("get-chatroom")]
        public async Task<IActionResult> GetChatroom([FromQuery] int userId, [FromQuery] int chatroomId)
        {
            return Ok(await chatFacade.GetChatroomInfo(userId, chatroomId));
        }
    }
}
