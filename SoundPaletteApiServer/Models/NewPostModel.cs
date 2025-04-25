namespace SoundPaletteApiServer.Models
{
    //class is recieved from database and used to create new post in database
    public class NewPostModel
    {
        public int UserId { get; set; }
        public int PostTypeId { get; set; }
        public string Caption { get; set; }
        public bool IsMature { get; set; }
        public bool IsPremium { get; set; }

        public DateTime CreatedDate { get; set; }
        public DateTime PublishDate { get; set; }
        public int FileTypeId { get; set; }
        public int FileId { get; set; }

        public List<TagModel> PostTags { get; set; }        //used to create all post tags for new post in database

        public List<string> PostUserTags { get; set; }      //used to create all user tags for new post in database
        public PostContentModel PostContent { get; set; }   //used to create new post content in database

        //constructor to initialize all values, used to serialize/deserialize JSON
        public NewPostModel(int userId, int postTypeId, string caption, bool isPremium, bool isMature, bool isDeleted, DateTime createdDate, DateTime publishDate, int fileId,  List<TagModel> postTags, List<string> postUserTags, PostContentModel postContent)
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
            FileId = fileId;
        }

        //default constructor
        public NewPostModel() { }

    }
}
