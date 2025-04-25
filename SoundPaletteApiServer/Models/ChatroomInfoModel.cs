namespace SoundPaletteApiServer.Models
{
    //class represents data displayed when modifying chatroom
    public class ChatroomInfoModel
    {
        public int ChatroomId { get; set; }                 //chatroom indentifier
        public string ChatroomName { get; set; }
        public List<string> ChatroomMembers { get; set; }

        //default constructor
        public ChatroomInfoModel() { }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public ChatroomInfoModel(int chatroomId, string chatroomName, List<string> chatroomMembers)
        {
            ChatroomId = chatroomId;
            ChatroomName = chatroomName;
            ChatroomMembers = chatroomMembers;
        }
    }
}
