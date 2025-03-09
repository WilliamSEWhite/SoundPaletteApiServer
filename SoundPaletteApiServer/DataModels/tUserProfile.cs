using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tUserProfile
    {
        [Key]
        public int UserProfileId { get; set; }
        public int UserId { get; set; }
        public virtual tUser User { get; } = null!;
        public string Bio { get; set; }
        public string Picture { get; set; }
        public tUserProfile(int userId, string bio, string picture)
        {
            UserId = userId;
            Bio = bio;
            Picture = picture;
        }
    }
}
