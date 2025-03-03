using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPostLike
    {
        [Key]
        public int PostCommentId { get; set; }
        public int PostId { get; set; }
        public tPost? Post { get; set; } = null;
        public int UserId { get; set; }
        public tPost? User { get; set; } = null;

        public tPostLike(int postId, int userId)
        {
            PostId = postId;
            UserId = userId;
        }
        public tPostLike(){}
    }
}
