using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPostTag
    {
        [Key]
        public int PostTagId { get; set; }
        public int PostId { get; set; }
        public virtual tPost Post { get; } = null!;
        public int TagId { get; set; }
        public virtual tTag Tag { get; } = null!;

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
