namespace SoundPaletteApiServer.Models
{
    public class ChatroomInfoModel
    {
        public int ChatroomId { get; set; }
        public string ChatroomName { get; set; }
        public List<string> ChatroomMembers { get; set; }
        public ChatroomInfoModel() { }
        public ChatroomInfoModel(int chatroomId, string chatroomName, List<string> chatroomMembers)
        {
            ChatroomId = chatroomId;
            ChatroomName = chatroomName;
            ChatroomMembers = chatroomMembers;
        }
    }
}
