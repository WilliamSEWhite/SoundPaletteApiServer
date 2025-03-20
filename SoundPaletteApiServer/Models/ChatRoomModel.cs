namespace SoundPaletteApiServer.Models
{
    public class ChatRoomModel
    {
        public int ChatRoomId { get; set; }
        public string ChatRoomName { get; set; }
        public string LastMessage { get; set; }
        public DateTime LastMessageDate { get; set; }
        public string LastMessageBy { get; set; }
        public bool IsGroupChat { get; set; }

        public ChatRoomModel(int chatRoomId, string chatRoomName, string lastMessage, DateTime lastMessageDate, string lastMessageBy, bool isGroupChat)
        {
            ChatRoomId = chatRoomId;
            ChatRoomName = chatRoomName;
            LastMessage = lastMessage;
            LastMessageDate = lastMessageDate;
            LastMessageBy = lastMessageBy;
            IsGroupChat = isGroupChat;
        }
    }
}
