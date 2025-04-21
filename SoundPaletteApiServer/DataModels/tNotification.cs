using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tNotification
    {
        [Key]
        public int NotificationId { get; set; }
        public int NotificationTypeId { get; set; }
        public int UserId { get; set; }
        public string Message { get; set; } 
        public int ReferenceId { get; set; }
        public string ReferenceName { get; set; }
        public bool DeviceIsActive { get; set; }
        public bool AppIsActive { get; set; }
        public DateTime CreatedDate { get; set; }
        public tNotification() { }
        public tNotification(int notificationId, int notificationTypeId, int userId, string message, int referenceId, string referenceName, bool deviceIsActive, bool appIsActive, DateTime createdDate)
        {
            NotificationId = notificationId;
            NotificationTypeId = notificationTypeId;
            UserId = userId;
            Message = message;
            ReferenceId = referenceId;
            ReferenceName = referenceName;
            DeviceIsActive = deviceIsActive;
            AppIsActive = appIsActive;
            CreatedDate = createdDate;
        }
    }
}
