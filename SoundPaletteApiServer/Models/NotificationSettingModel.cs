using System;

namespace SoundPaletteApiServer.Models
{
    public class NotificationSettingModel
    {
        public int NotificationSettingId { get; set; }
        public bool Value { get; set; }
        public string SettingName { get; set; }
        public int NotificationTypeId { get; set; }
        public int UserId { get; set; }

        public NotificationSettingModel()
        {
        }
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
