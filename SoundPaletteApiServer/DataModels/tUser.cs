using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tUser
    {
        [Key]
        public int UserId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public tUserInfo User { get; } = null!;
        public tUserProfile? UserProfile { get; set; }

        public tUser(string username, string password)
        {
            Username = username;
            Password = password;
        }
    }
}
