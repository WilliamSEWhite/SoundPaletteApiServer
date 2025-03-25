using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tChatroomMember
    {
        [Key]
        public int ChatroomMemberId { get; set; }
        public int ChatroomId { get; set; }
        public int UserId { get; set; }
        public bool IsActive { get; set; }
        public tChatroom? Chatroom { get; set; } = null!;
        public tUser? User { get; set; } = null!;
        public List<tMessage> Messages { get; set; } = new List<tMessage>();
        public tChatroomMember() { }
        public tChatroomMember(int chatroomMemberId, int chatroomId, int userId, bool isActive)
        {
            ChatroomMemberId = chatroomMemberId;
            ChatroomId = chatroomId;
            UserId = userId;
            IsActive = isActive;
        }
        public tChatroomMember(int userId, bool isActive)
        {
            UserId = userId;
            IsActive = isActive;
        }
    }
}
