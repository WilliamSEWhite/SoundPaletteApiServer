using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tChatroom
    {
        [Key]
        public int ChatroomId { get; set; }
        public string ChatroomName { get; set; }
        public DateTime CreatedDate { get; set; }
        public bool IsGroupChat { get; set; }
        public List<tChatroomMember> ChatroomMembers { get; set; } = new List<tChatroomMember>();

        public tChatroom() { }
        public tChatroom(int chatroomId, string chatroomName, DateTime createdDate, bool isGroupChat)
        {
            ChatroomId = chatroomId;
            ChatroomName = chatroomName;
            CreatedDate = createdDate;
            IsGroupChat = isGroupChat;
        }
        public tChatroom(List<tChatroomMember> chatroomMembers, DateTime createdDate, bool isGroupChat)
        {
            ChatroomName = string.Empty;
            ChatroomMembers = chatroomMembers;
            CreatedDate = createdDate;
            IsGroupChat = isGroupChat;
        }
        public tChatroom(string name, List<tChatroomMember> chatroomMembers, DateTime createdDate, bool isGroupChat)
        {
            ChatroomName = name;
            ChatroomMembers = chatroomMembers;
            CreatedDate = createdDate;
            IsGroupChat = isGroupChat;
        }
    }
}
