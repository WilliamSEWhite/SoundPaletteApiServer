using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    //this class is used to insert and manifest entries in tPostLike
    public class tPostLike
    {
        [Key]
        public int PostLikeId { get; set; }
        public int PostId { get; set; }
        public virtual tPost? Post { get; set; } = null;
        public int UserId { get; set; }
        public virtual tUser? User { get; set; } = null;

        public tPostLike(int postId, int userId)
        {
            PostId = postId;
            UserId = userId;
        }
        public tPostLike(){}
    }
}
