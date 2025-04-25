using System;

namespace SoundPaletteApiServer.Models
{
    //class represents a single notifcation setting, used to determine what notifications are created for users as well as to update settings in database
    public class NotificationSettingModel
    {
        public int NotificationSettingId { get; set; }
        public bool Value { get; set; }
        public string SettingName { get; set; }
        public int NotificationTypeId { get; set; }
        public int UserId { get; set; }

        //default constructor
        public NotificationSettingModel()
        {
        }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public NotificationSettingModel(int notificationSettingId, bool value, string settingName, int notificationTypeId, int userId)
        {
            NotificationSettingId = notificationSettingId;
            Value = value;
            SettingName = settingName;
            NotificationTypeId = notificationTypeId;
            UserId = userId;
        }
    }
}
