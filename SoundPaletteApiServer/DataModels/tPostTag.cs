using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPostTag
    {
        [Key]
        public int PostTagId { get; set; }
        public int PostId { get; set; }
        public tPost tPost { get; } = new tPost();
        public int TagId { get; set; }
        public tTag tTag { get; } = new tTag();

        public tPostTag(int postId, int tagId)
        {
            PostId = postId;
            TagId = tagId;
        }
        public tPostTag(int tagId)
        {
            TagId = tagId;
        }
    }
}
