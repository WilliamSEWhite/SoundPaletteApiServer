using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tUser
    {
        [Key]
        public int UserId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public tUserInfo? tUserInfo { get; } = null!;
        public tUserProfile? tUserProfile { get; set; }
        public List<tPost> tPosts { get; } = new List<tPost>();
        public tUser(string username, string password)
        {
            Username = username;
            Password = password;
        }
        public tUser()
        {
        }
    }
}
