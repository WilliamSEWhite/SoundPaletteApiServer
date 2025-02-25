using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    public class UserModel
    {
        public int UserId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }

        public UserInfoModel UserInfo { get; set; }

        public UserModel(int userId, string username, string password, UserInfoModel userInfo)
        {
            UserId = userId;
            Username = username;
            Password = password;
            UserInfo = userInfo;
        }
        public UserModel(int userId, string username, string password)
        {
            UserId = userId;
            Username = username;
            Password = password;
            UserInfo = null;
        }
        public UserModel(tUser user)
        {
            UserId = user.UserId;
            Username = user.Username;
            Password = user.Password;
            UserInfo = new UserInfoModel(user.tUserInfo);
        }
    }
    }

