using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tNotificationSetting
    {
        [Key]
        public int NotificationSettingId { get; set; }
        public int NotificationTypeId { get; set; }
        public int UserId { get; set; }
        public bool SendNotification { get; set; }
        public tNotificationSetting() { }
        public tNotificationSetting(int notificationSettingId, int notificationTypeId, int userId, bool sendNotification)
        {
            NotificationSettingId = notificationSettingId;
            NotificationTypeId = notificationTypeId;
            UserId = userId;
            SendNotification = sendNotification;
        }
    }
}
