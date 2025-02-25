using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    public class TagModel
    {
        public int TagId { get; set; }
        public string TagName { get; set; }

        public TagModel(int id, string tagName) 
        {
            TagId = id;
            TagName = tagName;
        }
        public TagModel(tTag tag)
        {
            TagId = tag.TagId;
            TagName = tag.TagName;
        }
    }
}
