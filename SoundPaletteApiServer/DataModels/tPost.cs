using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPost
    {
        [Key]
        public int PostId { get; set; }
        public int UserId { get; set; }
        public tUser tUser { get; } = new tUser();
        public int PostTypeId { get; set; }
        public tPostType tPostType { get; } = null!;
        public string Caption { get; set; }
        public bool IsPremium { get; set; }
        public bool IsMature { get; set; }
        public bool IsDeleted { get; set; }
        public List<tPostTag> tPostTags { get; set; } = new List<tPostTag>();
        public tPostContent tPostContent { get; set; } = new tPostContent();
        public DateTime CreatedDate { get; set; }
        public DateTime PublishDate { get; set; }
        public int CommentCount { get; set; }
        public int LikeCount { get; set; }
        public List<tPostComment> tPostComments { get; set; } = new List<tPostComment>();

        public tPost(int userId, tUser tuser, int postTypeId, tPostType tpostType, string caption, bool isPremium, bool isMature, bool isDeleted, DateTime createdDate, DateTime publishDate, int commentCount, int likeCount)
        {
            UserId = userId;
            tUser = tuser;
            PostTypeId = postTypeId;
            tPostType = tpostType;
            Caption = caption;
            IsPremium = isPremium;
            IsMature = isMature;
            IsDeleted = isDeleted;
            CreatedDate = createdDate;
            PublishDate = publishDate;
            CommentCount = commentCount;
            LikeCount = likeCount;
        }

        public tPost() { }
    }
}
