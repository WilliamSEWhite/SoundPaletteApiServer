﻿using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
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
        public List<string> PostUserTags { get; set; }

        public PostModel()
        {

        }
        public PostModel(int postId, string postCaption, List<TagModel> postTags, PostContentModel postContent, DateTime createdDate, string createdByUsername, int postType, int commentCount, int likeCount, bool isLiked, bool isSaved, List<string> postUserTags)
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
            PostUserTags = postUserTags;
        }
        public PostModel(tPost post, bool isLiked, bool isSaved)
        {
            PostId = post.PostId;
            PostCaption = post.Caption;
            PostTags = post.PostTags.Select(o => new TagModel(o.Tag)).ToList();
            PostContent = new PostContentModel(post.PostContent);
            CreatedDate = post.CreatedDate;
            CreatedByUsername = post.User.Username;
            PostType = post.PostTypeId;
            CommentCount = post.CommentCount;
            LikeCount = post.CommentCount;
            IsLiked = isLiked;
            IsSaved = isSaved;
            PostUserTags = post.PostUserTags.Select(o => o.User.Username).ToList();
        }
    }
}
