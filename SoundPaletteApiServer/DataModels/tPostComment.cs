using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPostComment
    {
        [Key]
        public int PostCommentId { get; set; }
        public int PostId { get; set; }
        public tPost? tPost { get; set; } = null!;
        public int UserId { get; set; }
        public tUser? tUser { get; set; } = null!;
        public DateTime CreatedDate { get; set; }

        public string CommentContent { get; set; }

        public tPostComment(int postId, int userId, string commentContent, DateTime createdDate)
        {
            PostId = postId;
            UserId = userId;
            CommentContent = commentContent;
            CreatedDate = createdDate;
        }
    }
}
