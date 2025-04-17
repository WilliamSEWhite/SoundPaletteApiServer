using System;

namespace SoundPaletteApiServer.Models
{
    public class UserSearchModel
    {
        public string Username { get; set; }
        public int FollowerCount { get; set; }
        public bool IsFollowing { get; set; }

        public UserSearchModel(string username, int followerCount, bool isFollowing)
        {
            Username = username;
            FollowerCount = followerCount;
            IsFollowing = isFollowing;

        }
    }
}
