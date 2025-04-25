using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    //class represents all additional information seen when viewing your own profile
    public class UserProfileModel
    {
        public int UserProfileId { get; set; }
        public int UserId { get; set; }
        public string Bio { get; set; }
        public string Picture { get; set; }
        public int FollowerCount { get; set; }
        public int FollowingCount { get; set; }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public UserProfileModel(int userId, string bio, string picture, int followerCount, int followingCount)
        {
            UserId = userId;
            Bio = bio;
            Picture = picture;
            FollowerCount = followerCount;
            FollowingCount = followingCount;
        }

        //constructor used to manifest model from database
        public UserProfileModel(tUserProfile existingInfo)
        {
            UserId = existingInfo.UserId;
            Bio = existingInfo.Bio;
            Picture = existingInfo.Picture;
        }

        //default constructor
        public UserProfileModel() { }
    }

}
