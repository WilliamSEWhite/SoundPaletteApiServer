namespace SoundPaletteApiServer.Models
{
    //class is recieved by client and used to create new chatroom in database
    public class NewChatroomModel
    {
        public int CreatedById { get; set; }
        public string Name { get; set; }
        public List<string> Users { get; set; }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public NewChatroomModel(string name, List<string> users)
        {
            Name = name;
            Users = users;
        }
    }
}
