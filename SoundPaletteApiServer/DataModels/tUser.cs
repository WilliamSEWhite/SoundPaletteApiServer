using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    //this class is used to insert and manifest entries in tUser
    public class tUser
    {
        [Key]
        public int UserId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public virtual tUserInfo? UserInfo { get; } = null!;
        public virtual tUserProfile? UserProfile { get; } = null!;
        public virtual List<tPost>? Posts { get; } = new List<tPost>();
        public virtual List<tPostComment>? PostComments { get; } = new List<tPostComment>();
        public virtual List<tUserTag>? UserTags { get; } = new List<tUserTag>();
        public virtual List<tPostSave>? PostSaves { get; } = new List<tPostSave>();
        public virtual List<tUserFollower>? UserFollowers { get; } = new List<tUserFollower>();
        public virtual List<tUserFollower>? UserFollowings { get; } = new List<tUserFollower>();
        public virtual List<tChatroomMember>? ChatroomMembers { get; } = new List<tChatroomMember>();
        public virtual List<tPostUserTag>? PostUserTags { get; } = new List<tPostUserTag>();
        public virtual List<tNotificationSetting>? NotificationSettings { get; } = new List<tNotificationSetting>();


        public tUser(string username, string password)
        {
            Username = username;
            Password = password;
        }
        public tUser(string username, string password, List<tNotificationSetting>? notificationSettings)
        {
            Username = username;
            Password = password;
            NotificationSettings = notificationSettings;
        }
        public tUser()
        {
        }
    }
}
