using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPostComment
    {
        [Key]
        public int PostCommentId { get; set; }
        public int PostId { get; set; }
        public tPost? post { get; set; } = null;
        public int UserId { get; set; }
        public tUser? User { get; set; } = null;

        string CommentContent { get; set; }

        public tPostComment(int postId, int userId, string commentContent)
        {
            PostId = postId;
            UserId = userId;
            CommentContent = commentContent;
        }
    }
}
