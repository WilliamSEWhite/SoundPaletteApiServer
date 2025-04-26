using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    //this class is used to insert and manifest entries in tNotificationSetting
    public class tNotificationSetting
    {
        [Key]
        public int NotificationSettingId { get; set; }
        public int NotificationTypeId { get; set; }
        public int UserId { get; set; }
        public bool SendNotification { get; set; }
        public tUser? User { get; } = null!;
        public tNotificationType? NotificationType { get; } = null;
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
