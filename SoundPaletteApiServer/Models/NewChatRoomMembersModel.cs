namespace SoundPaletteApiServer.Models
{
    public class NewChatRoomMembersModel
    {
        public int ChatroomId { get; set; }
        public List<string> Users { get; set; }

        public NewChatRoomMembersModel(int chatroomId, List<string> users)
        {
            ChatroomId = chatroomId;
            Users = users;
        }
    }
}
