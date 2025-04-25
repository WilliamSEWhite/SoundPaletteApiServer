namespace SoundPaletteApiServer.Models
{
    //class represents a single chatroom retrieved whem retrieving all chatrooms for user 
    public class ChatroomModel
    {
        public int ChatRoomId { get; set; }
        public string ChatRoomName { get; set; }
        public string LastMessage { get; set; }
        public DateTime LastMessageDate { get; set; }
        public string LastMessageBy { get; set; }
        public bool IsGroupChat { get; set; }

        //default constructor
        public ChatroomModel(){ }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public ChatroomModel(int chatRoomId, string chatRoomName, string lastMessage, DateTime lastMessageDate, string lastMessageBy, bool isGroupChat)
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
