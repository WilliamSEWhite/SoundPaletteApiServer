using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    //class represents all information seen when viewing someone elses profile
    public class UserProfileModelLite
    {
        public string Username { get; set; }
        public string Bio { get; set; }
        public string Picture { get; set; }
        public int FollowerCount { get; set; }
        public int FollowingCount { get; set; }
        public bool IsFollowing { get; set; }
        public List<TagModel> UserTags { get; set; }

        //constructor to initialize all values, used to serialize/deserialize JSON
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

        //default constructor
        public UserProfileModelLite() { }
    }
}
