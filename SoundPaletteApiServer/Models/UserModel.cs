using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    //class represents a single user in database
    public class UserModel
    {
        public int UserId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }

        public UserInfoModel UserInfo { get; set; }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public UserModel(int userId, string username, string password, UserInfoModel userInfo)
        {
            UserId = userId;
            Username = username;
            Password = password;
            UserInfo = userInfo;
        }


        //constructor to initialize primitive data types, used to serialize/deserialize JSON
        public UserModel(int userId, string username, string password)
        {
            UserId = userId;
            Username = username;
            Password = password;
            UserInfo = null;
        }

        //constructor used to manifest model from database
        public UserModel(tUser user)
        {
            UserId = user.UserId;
            Username = user.Username;
            Password = user.Password;
            UserInfo = new UserInfoModel(user.UserInfo);
        }
    }
    }

