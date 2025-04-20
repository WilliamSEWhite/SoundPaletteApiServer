using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPost
    {
        [Key]
        public int PostId { get; set; }
        public int UserId { get; set; }
        public virtual tUser User { get; } = null!;
        public int PostTypeId { get; set; }
        public virtual tPostType PostType { get; } = null!;
        public string Caption { get; set; }
        public bool IsPremium { get; set; }
        public bool IsMature { get; set; }
        public bool IsDeleted { get; set; }
        public virtual List<tPostTag> PostTags { get; set; } = new List<tPostTag>();
        public virtual tPostContent PostContent { get; set; } = null!;
        public DateTime CreatedDate { get; set; }
        public DateTime PublishDate { get; set; }
        public int CommentCount { get; set; }
        public int LikeCount { get; set; }
        public int FileId {  get; set; }
        public virtual List<tPostComment> PostComments { get; set; } = new List<tPostComment>();
        public virtual List<tPostSave> PostSaves { get; set; } = new List<tPostSave>();
        public virtual List<tPostUserTag> PostUserTags { get; set; } = new List<tPostUserTag>();

        public tPost(int userId, tUser user, int postTypeId, tPostType postType, string caption, bool isPremium, bool isMature, bool isDeleted, DateTime createdDate, DateTime publishDate, int commentCount, int likeCount, int fileId )
        {
            UserId = userId;
            User = user;
            PostTypeId = postTypeId;
            PostType = postType;
            Caption = caption;
            IsPremium = isPremium;
            IsMature = isMature;
            IsDeleted = isDeleted;
            CreatedDate = createdDate;
            PublishDate = publishDate;
            LikeCount = likeCount;
            FileId = fileId;
        }

        public tPost() { }
    }
}
