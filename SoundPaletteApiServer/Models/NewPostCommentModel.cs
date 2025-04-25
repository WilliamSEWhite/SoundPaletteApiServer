namespace SoundPaletteApiServer.Models
{
    //class is recieved from client and used to create a new comment on a post in database
    public class NewPostCommentModel
    {
        public int UserId { get; set; }
        public int PostId { get; set; }
        public string CommentContent { get; set; }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public NewPostCommentModel(int userId, int postId, string commentContent)
        {
            UserId = userId;
            PostId = postId;
            CommentContent = commentContent;
        }

    }
}
