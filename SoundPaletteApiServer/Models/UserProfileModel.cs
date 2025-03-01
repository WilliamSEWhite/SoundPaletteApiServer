using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    public class UserProfileModel
    {
        public int UserProfileId { get; set; }
        public int UserId { get; set; }
        public string Bio { get; set; }
        public string Picture { get; set; }

        public UserProfileModel(int userId, string bio, string picture)
        {
            UserId = userId;
            Bio = bio;
            Picture = picture;
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
