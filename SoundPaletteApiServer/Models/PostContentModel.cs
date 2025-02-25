namespace SoundPaletteApiServer.Models
{
    public class PostContentModel
    {
        public string PostTextContent { get; set; }

        public PostContentModel()
        {

        }
        public PostContentModel(string postTextContent)
        {
            PostTextContent = postTextContent;
        }
    }
}
