using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    public class CommentModel
    {
        public string CommentText { get; set; }
        public string CommentUsername { get; set; }
        public DateTime CommentDate { get; set; }
        public CommentModel(string commentText, string commentUsername, DateTime commentDate) 
        {
            CommentText = commentText;
            CommentUsername = commentUsername;
            CommentDate = CommentDate;
        }
        public CommentModel() { }
        public CommentModel(tPostComment comment) 
        {
            CommentText = comment.CommentContent;
            CommentDate = comment.CreatedDate;
            CommentUsername = comment.User.Username;
        }  

    }
}
