using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPost
    {
        [Key]
        public int PostId { get; set; }
        public int UserId { get; set; }
        public tUser User { get; } = null!;
        public int PostTypeId { get; set; }
        public tPostType PostType { get; } = null!;
        public string Caption { get; set; }
        public bool IsPremium { get; set; }
        public bool IsMature { get; set; }
        public bool IsDeleted { get; set; }
        public List<tPostTag> PostTags { get; } = new List<tPostTag>();
        public tPostContent PostContent { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime PublishDate { get; set; }
        public tPost(int userId, tUser user, int postTypeId, tPostType postType, string caption, bool isPremium, bool isMature, bool isDeleted, DateTime createdDate, DateTime publishDate)
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
        }
    }
}
