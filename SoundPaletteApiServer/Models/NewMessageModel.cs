namespace SoundPaletteApiServer.Models
{
    //class is recieved from client and used to create new message in database
    public class NewMessageModel
    {
        public int UserId { get; set; }
        public string Message { get; set; }
        public int ChatRoomId { get; set; }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public NewMessageModel(int userId, string message, int chatRoomId)
        {
            UserId = userId;
            Message = message;
            ChatRoomId = chatRoomId;
        }
    }
}
