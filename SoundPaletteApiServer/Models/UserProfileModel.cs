using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    public class UserProfileModel
    {
        public int UserProfileId { get; set; }
        public int UserId { get; set; }
        public string Bio { get; set; }
        public string Picture { get; set; }
        public int FollowerCount { get; set; }
        public int FollowingCount { get; set; }

        public UserProfileModel(int userId, string bio, string picture, int followerCount, int followingCount)
        {
            UserId = userId;
            Bio = bio;
            Picture = picture;
            FollowerCount = followerCount;
            FollowingCount = followingCount;
        }

        public UserProfileModel(tUserProfile existingInfo)
        {
            UserId = existingInfo.UserId;
            Bio = existingInfo.Bio;
            Picture = existingInfo.Picture;
        }
        public UserProfileModel() { }
    }

}
