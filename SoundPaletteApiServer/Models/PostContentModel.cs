using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    //class represents the content of a post
    public class PostContentModel
    {
        public string PostTextContent { get; set; }
        public string BackgroundColour { get; set; }
        public string FontColour { get; set; }

        //default constructor
        public PostContentModel()
        {

        }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public PostContentModel(string postTextContent, string backgroundColour, string fontColour)
        {
            PostTextContent = postTextContent;
            BackgroundColour = backgroundColour;
            FontColour = fontColour;
        }
        
        //constructor used to manifest model from database
        public PostContentModel(tPostContent content)
        {
            PostTextContent = content.PostTextContent;
            BackgroundColour = content.BackgroundColour;
            FontColour = content.FontColour;
        }
    }
}
