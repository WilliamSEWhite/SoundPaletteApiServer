﻿namespace SoundPaletteApiServer.Models
{
    public class PostModel
    {
        public int PostId { get; set; }
        public string PostCaption { get; set; }
        public List<TagModel> PostTags {  get; set; }
        public PostContentModel PostContent { get; set; }
        public DateTime CreatedDate { get; set; }
        public string CreatedByUsername { get; set; }
        public int PostType { get; set; }
        public int CommentCount { get; set; }
        public int LikeCount { get; set; }
        public bool IsLiked { get; set; }
        public bool IsSaved { get; set; }

        public PostModel()
        {

        }
        public PostModel(int postId, string postCaption, List<TagModel> postTags, PostContentModel postContent, DateTime createdDate, string createdByUsername, int postType, int commentCount, int likeCount, bool isLiked, bool isSaved)
        {
            PostId = postId;
            PostCaption = postCaption;
            PostTags = postTags;
            PostContent = postContent;
            CreatedDate = createdDate;
            CreatedByUsername = createdByUsername;
            PostType = postType;
            CommentCount = commentCount;
            LikeCount = likeCount;
            IsLiked = isLiked;
            IsSaved = isSaved;

        }
    }
}
