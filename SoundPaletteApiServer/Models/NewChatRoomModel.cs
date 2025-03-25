namespace SoundPaletteApiServer.Models
{
    public class NewChatroomModel
    {
        public string Name { get; set; }
        public List<string> Users { get; set; }

        public NewChatroomModel(string name, List<string> users)
        {
            Name = name;
            Users = users;
        }
    }
}
