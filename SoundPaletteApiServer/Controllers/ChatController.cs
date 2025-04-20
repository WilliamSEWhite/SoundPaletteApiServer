using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Controllers
{
    //this class acts as an entry point for all chat related services
    public class ChatController : BaseApiController
    {
        private readonly ChatFacade chatFacade;

        public ChatController(ChatFacade _chatFacade)
        {
            chatFacade = _chatFacade;
        }

        //returns a list of all chatrooms for a given userId
        [HttpGet("get-user-chatrooms")]
        public async Task<IActionResult> GetChatroomsForUser([FromQuery]int userId)
        {
            var chatrooms = await chatFacade.GetChatroomsForUser(userId);
            return Ok(chatrooms);
        }//end getChatroomsForUser

        //returns a list of all messages for a given chatroomId
        [HttpGet("get-messages-for-chatroom")]
        public async Task<IActionResult> GetMessagesForChatroom([FromQuery]int chatroomId)
        {
            var messages = await chatFacade.GetMessagesForChatroom(chatroomId);
            return Ok(messages);
        }//end GetMessagesForChatroom

        //returns a private chatroom when a user clicks message on a profile
        [HttpGet("get-private-chatroom")]
        public async Task<IActionResult> GetPrivateChatroom([FromQuery]int userId, [FromQuery]string username)
        {
            var chatroom = await chatFacade.GetPrivateChatroom(userId, username);
            return Ok(chatroom);
        }//end GetPrivateChatroom

        //creates and returns a new chatroom
        [HttpPost("create-chatroom")]
        public async Task<IActionResult> CreateChatRoom([FromBody]NewChatroomModel newChatroom)
        {
            var chatroom = await chatFacade.CreateChatRoom(newChatroom);
            return Ok(chatroom);
        }//end CreateChatroom

        //creates message and notification in database
        [HttpPost("send-message")]
        public async Task<IActionResult> SendMessage([FromBody]NewMessageModel newMessage)
        {
            await chatFacade.SendMessage(newMessage);
            return Ok();
        }//end SendMessage

        //removes a single user from a chat based on userId
        [HttpGet("remove-user-from-chat")]
        public async Task<IActionResult> RemoveUserFromChatroom([FromQuery] int chatroomId, [FromQuery]int userId)
        {
            await chatFacade.RemoveUserFromChatroom(chatroomId, userId);
            return Ok();
        }//end RemoveUsersFromChatroom

        //returns chatroom info that is displayed when a user is editing a chatroom
        [HttpGet("get-chatroom")]
        public async Task<IActionResult> GetChatroom([FromQuery] int userId, [FromQuery] int chatroomId)
        {
            return Ok(await chatFacade.GetChatroomInfo(userId, chatroomId));
        }//end GetChatroom

        //updates a chatrooms list of users and name
        [HttpPost("update-chatroom")]
        public async Task<IActionResult> AddChatroomMembers([FromBody] ChatroomUpdateModel chatroomUpdate)
        {
            await chatFacade.UpdateChatroom(chatroomUpdate);
            return Ok();
        }//end AddChatroomMembers
    }//end ChatController
}
