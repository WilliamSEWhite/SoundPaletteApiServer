namespace SoundPaletteApiServer.Models
{
    //class is recieved by client to update chatroom in database
    public class ChatroomUpdateModel
    {
        public int ChatroomId { get; set; }
        public string ChatroomName { get; set; }
        public List<string> MembersToAdd { get; set; }
        public List<string> MembersToRemove { get; set; }

        //default constructor
        public ChatroomUpdateModel() { }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public ChatroomUpdateModel(int chatroomId, string newChatroomName, List<string> membersToAdd, List<string> membersToRemove)
        {
            ChatroomId = chatroomId;
            ChatroomName = newChatroomName;
            MembersToAdd = membersToAdd;
            MembersToRemove = membersToRemove;
        }

    }
}
