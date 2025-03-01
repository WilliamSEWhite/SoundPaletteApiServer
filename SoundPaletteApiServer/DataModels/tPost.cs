using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPost
    {
        [Key]
        public int PostId { get; set; }
        public int UserId { get; set; }
        public tUser tUser { get; } = null!;
        public int PostTypeId { get; set; }
        public tPostType tPostType { get; } = null!;
        public string Caption { get; set; }
        public bool IsPremium { get; set; }
        public bool IsMature { get; set; }
        public bool IsDeleted { get; set; }
        public List<tPostTag> tPostTags { get; set; } = new List<tPostTag>();
        public tPostContent tPostContent { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime PublishDate { get; set; }
        public tPost(int userId, tUser tuser, int postTypeId, tPostType tpostType, string caption, bool isPremium, bool isMature, bool isDeleted, DateTime createdDate, DateTime publishDate)
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
        }

        public tPost() { }
    }
}
