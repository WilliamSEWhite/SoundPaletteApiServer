using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPostTag
    {
        [Key]
        public int PostTagId { get; set; }
        public int PostId { get; set; }
        public tPost post { get; set; }
        public int TagId { get; set; }
        
        public tPostTag(int postId, int tagId)
        {
            PostId = postId;
            TagId = tagId;
        }
    }
}
