namespace SoundPaletteApiServer.Models
{
    public class ChatroomUpdateModel
    {
        public int ChatroomId { get; set; }
        public string ChatroomName { get; set; }
        public List<string> MembersToAdd { get; set; }
        public List<string> MembersToRemove { get; set; }
        public ChatroomUpdateModel() { }
        public ChatroomUpdateModel(int chatroomId, string newChatroomName, List<string> membersToAdd, List<string> membersToRemove)
        {
            this.ChatroomId = chatroomId;
            this.ChatroomName = newChatroomName;
            this.MembersToAdd = membersToAdd;
            this.MembersToRemove = membersToRemove;
        }

    }
}
