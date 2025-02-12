using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPostContent
    {
        [Key]
        public int PostContentId { get; set; }
        public int PostId { get; set; }
        public tPost Post { get; } = null!;
        public string PostContent { get; set; }
        public string S3Token { get; set; }
        public tPostContent(int postId, tPost post, string postContent, string s3Token)
        {
            PostId = postId;
            Post = post;
            PostContent = postContent;
            S3Token = s3Token;
        }

        public tPostContent() { }
    }
}
