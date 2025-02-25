namespace SoundPaletteApiServer.Models
{
    public class NewPostModel
    {
        public int UserId { get; set; }
        public int PostTypeId { get; set; }
        public string Caption { get; set; }
        public bool IsPremium { get; set; }
        public bool IsMature { get; set; }
        public bool IsDeleted { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime PublishDate { get; set; }

        public List<TagModel> PostTags { get; set; }
        public PostTypeModel PostType { get; set; }

        public string PostTextContent { get; set; }

        public NewPostModel(int userId, PostTypeModel postType, string caption, bool isPremium, bool isMature, bool isDeleted, DateTime createdDate, DateTime publishDate, List<TagModel> postTags)
        {
            UserId = userId;
            PostType = postType;
            Caption = caption;
            IsPremium = isPremium;
            IsMature = isMature;
            IsDeleted = isDeleted;
            CreatedDate = createdDate;
            PublishDate = publishDate;
            PostTags = postTags;
        }
    }
}
