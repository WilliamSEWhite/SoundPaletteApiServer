using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    //class represents a single tag 
    public class TagModel
    {
        public int TagId { get; set; }
        public string TagName { get; set; }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public TagModel(int id, string tagName) 
        {
            TagId = id;
            TagName = tagName;
        }

        //constructor used to manifest tags from database
        public TagModel(tTag tag)
        {
            TagId = tag.TagId;
            TagName = tag.TagName;
        }

        //default constructor
        public TagModel()
        {
        }
    }
}
