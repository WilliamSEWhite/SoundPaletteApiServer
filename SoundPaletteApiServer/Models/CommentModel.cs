using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    //class represents a comment on a post
    public class CommentModel
    {
        public string CommentText { get; set; }
        public string CommentUsername { get; set; }
        public DateTime CommentDate { get; set; }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public CommentModel(string commentText, string commentUsername, DateTime commentDate) 
        {
            CommentText = commentText;
            CommentUsername = commentUsername;
            CommentDate = CommentDate;
        }

        //default constructor
        public CommentModel() { }
        
        //constructor used to manifest model from database
        public CommentModel(tPostComment comment) 
        {
            CommentText = comment.CommentContent;
            CommentDate = comment.CreatedDate;
            CommentUsername = comment.User.Username;
        }  

    }
}
