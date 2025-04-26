using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    //this class is used to insert and manifest entries in tMessage
    public class tMessage
    {
        [Key]
        public int MessageId { get; set; }
        public string Message { get; set; } 
        public DateTime SentDate { get; set; }
        public int ChatroomMemberId { get; set; }
        public bool IsDeleted { get; set; }
        public tChatroomMember ChatroomMember { get; set; }
        public tMessage() { }
        public tMessage(int messageId, string message, DateTime sentDate, int chatroomMemberId, bool isDeleted)
        {
            MessageId = messageId;
            Message = message;
            SentDate = sentDate;
            ChatroomMemberId = chatroomMemberId;
            IsDeleted = isDeleted;
        }
        public tMessage(string message, DateTime sentDate, int chatroomMemberId, bool isDeleted)
        {
            Message = message;
            SentDate = sentDate;
            ChatroomMemberId = chatroomMemberId;
            IsDeleted = isDeleted;
        }
    }
}
