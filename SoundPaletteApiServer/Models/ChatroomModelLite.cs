namespace SoundPaletteApiServer.Models
{
    //class containsn data needed to navigate to a chatroom that has just been created
    public class ChatroomModelLite
    {
        public int ChatroomId { get; set; }
        public string Name { get; set; }

        //default constructor
        public ChatroomModelLite() { }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public ChatroomModelLite(int chatroomId, string name) { ChatroomId = chatroomId; Name = name; }
    }
}
