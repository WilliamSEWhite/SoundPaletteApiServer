namespace SoundPaletteApiServer.Models
{
    public class NewPostModel
    {
        public int UserId { get; set; }
        public int PostTypeId { get; set; }
        public string Caption { get; set; }
        public bool IsMature { get; set; }
        public bool IsPremium { get; set; }

        public DateTime CreatedDate { get; set; }
        public DateTime PublishDate { get; set; }

        public List<TagModel> PostTags { get; set; }

        public List<string> PostUserTags { get; set; }
        public PostContentModel PostContent { get; set; }


        public NewPostModel(int userId, int postTypeId, string caption, bool isPremium, bool isMature, bool isDeleted, DateTime createdDate, DateTime publishDate, List<TagModel> postTags, List<string> postUserTags, PostContentModel postContent)
        {
            UserId = userId;
            PostTypeId = postTypeId;
            Caption = caption;
            IsPremium = isPremium;
            IsMature = isMature;
            CreatedDate = createdDate;
            PublishDate = publishDate;
            PostTags = postTags;
            PostUserTags = postUserTags;
            PostContent = postContent;
        }
        public NewPostModel() { }

    }
}
