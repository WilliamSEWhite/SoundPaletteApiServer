namespace SoundPaletteApiServer.Models
{
    public class NewMessageModel
    {
        public int UserId { get; set; }
        public string Message { get; set; }
        public int ChatRoomId { get; set; }
        public NewMessageModel(int userId, string message, int chatRoomId)
        {
            UserId = userId;
            Message = message;
            ChatRoomId = chatRoomId;
        }
    }
}
