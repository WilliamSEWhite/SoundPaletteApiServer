using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPostTag
    {
        [Key]
        public int PostTagId { get; set; }
        public int PostId { get; set; }
        public tPost tPost { get; } = null!;
        public int TagId { get; set; }
        public tTag tTag { get; } = null!;

        public tPostTag(int postId, int tagId)
        {
            PostId = postId;
            TagId = tagId;
        }
    }
}
