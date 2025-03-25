using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    public class ChatMessageModel
    {

        public int MessageId { get; set; }
        public string Message { get; set; }
        public string SentBy { get; set; }
        public DateTime SentDate { get; set; }
        public bool IsActiveMember { get; set; }

        public ChatMessageModel(int messageId, string message, string sentBy, DateTime sentDate)
        {
            MessageId = messageId;
            Message = message;
            SentBy = sentBy;
            SentDate = sentDate;
        }

        public ChatMessageModel(tMessage message)
        {
            MessageId = message.MessageId;
            Message = message.Message;
            SentBy = message.ChatroomMember.User.Username;
            SentDate = message.SentDate;
            IsActiveMember = message.ChatroomMember.IsActive;
        }
    }
}
