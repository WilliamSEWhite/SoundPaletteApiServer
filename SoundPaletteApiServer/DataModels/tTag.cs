using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    //this class is used to insert and manifest entries in tTag
    public class tTag
    {
        [Key]
        public int TagId { get; set; }
        public string TagName { get; set; }
        public virtual List<tPostTag> PostTags { get; set; }
        public tTag(string tagName)
        {
            TagName = tagName;
        }
        public tTag() { }
    }
}
