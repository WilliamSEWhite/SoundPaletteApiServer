namespace SoundPaletteApiServer.Models
{
    public class ChatroomModelLite
    {
        public int ChatroomId { get; set; }
        public string Name { get; set; }
        
        public ChatroomModelLite() { }
        public ChatroomModelLite(int chatroomId, string name) { ChatroomId = chatroomId; Name = name; }
    }
}
