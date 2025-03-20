namespace SoundPaletteApiServer.Models
{
    public class MessageModel
    {
        public int MessageId { get; set; }
        public string Message { get; set; }
        public string SentBy { get; set; }
        public DateTime SentDate { get; set; }

        public MessageModel(int messageId, string message, string sentBy, DateTime sentDate)
        {
            MessageId = messageId;
            Message = message;
            SentBy = sentBy;
            SentDate = sentDate;
        }
    }
}
