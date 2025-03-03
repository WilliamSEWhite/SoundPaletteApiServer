namespace SoundPaletteApiServer.Models
{
    public class NewPostCommentModel
    {
        public int UserId { get; set; }
        public int PostId { get; set; }
        public string CommentContent { get; set; }
        public NewPostCommentModel(int userId, int postId, string commentContent)
        {
            UserId = userId;
            PostId = postId;
            CommentContent = commentContent;
        }


    }
}
