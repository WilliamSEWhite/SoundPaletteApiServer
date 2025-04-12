using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPostUserTag
    {
        [Key]
        public int PostUserTagId { get; set; }
        public int PostId { get; set; }
        public virtual tPost? Post { get; set; } = null;
        public int UserId { get; set; }
        public virtual tUser? User { get; set; } = null;

        public tPostUserTag(int postId, int userId)
        {
            PostId = postId;
            UserId = userId;
        }
        public tPostUserTag(int userId)
        {
            UserId = userId;
        }
        public tPostUserTag() { }
    }
}

