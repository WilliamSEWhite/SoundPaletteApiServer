using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    public class CommentModel
    {
        public int CommentId { get; set; }
        public string CommentText { get; set; }
        public string CommentUsername { get; set; }
        public DateTime CommentDate { get; set; }
        public CommentModel(int commentId, string commentText, string commentUsername, DateTime commentDate) 
        {
            CommentId = commentId;
            CommentText = commentText;
            CommentUsername = commentUsername;
            CommentDate = CommentDate;
        }
        public CommentModel() { }
        public CommentModel(tPostComment comment) 
        {
            CommentId = comment.PostCommentId;
            CommentText = comment.CommentContent;
            CommentDate = comment.CreatedDate;
            CommentUsername = comment.User.Username;
        }  

    }
}
