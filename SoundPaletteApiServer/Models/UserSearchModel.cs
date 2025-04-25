using System;

namespace SoundPaletteApiServer.Models
{
    //class represents what is seen when searching for a user
    public class UserSearchModel
    {
        public string Username { get; set; }
        public int FollowerCount { get; set; }
        public bool IsFollowing { get; set; }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public UserSearchModel(string username, int followerCount, bool isFollowing)
        {
            Username = username;
            FollowerCount = followerCount;
            IsFollowing = isFollowing;

        }
    }
}
