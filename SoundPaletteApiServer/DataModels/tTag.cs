using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tTag
    {
        [Key]
        public int TagId { get; set; }
        public string TagName { get; set; }

        public tTag(string tagName)
        {
            TagName = tagName;
        }
    }
}
