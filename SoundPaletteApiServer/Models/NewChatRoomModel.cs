namespace SoundPaletteApiServer.Models
{
    public class NewChatRoomModel
    {
        public string Name { get; set; }
        public List<string> Users { get; set; }

        public NewChatRoomModel(string name, List<string> users)
        {
            Name = name;
            Users = users;
        }
    }
}
