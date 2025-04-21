using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tNotificationType
    {
        [Key]
        public int NotificationTypeId { get; set; }
        public string Description { get; set; }
        public List<tNotificationSetting> NotificationSettings { get; } = new List<tNotificationSetting>();
        public tNotificationType() { }
        public tNotificationType(int notificationTypeId, string description)
        {
            NotificationTypeId = notificationTypeId;
            Description = description;
        }
    }
}
