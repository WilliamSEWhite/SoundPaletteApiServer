using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    public class UserProfileModelLite
    {
        public string Username { get; set; }
        public string Bio { get; set; }
        public string Picture { get; set; }
        public int FollowerCount { get; set; }
        public int FollowingCount { get; set; }
        public bool IsFollowing { get; set; }
        public List<TagModel> UserTags { get; set; }

        public UserProfileModelLite(string username, string bio, string picture, int followerCount, int followingCount, bool isFollowing, List<TagModel> userTags)
        {
            Username = username;
            Bio = bio;
            Picture = picture;
            FollowerCount = followerCount;
            FollowingCount = followingCount;
            IsFollowing = isFollowing;
            UserTags = userTags;
        }

        public UserProfileModelLite() { }
    }
}
