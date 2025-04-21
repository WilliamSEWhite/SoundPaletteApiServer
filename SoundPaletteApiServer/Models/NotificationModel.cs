using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    public class NotificationModel
    {
        public int NotificationTypeId { get; set; }
        public int? ReferenceId { get; set; }
        public string ReferenceName { get; set; }
        public string Message { get; set; }
        public DateTime CreatedDate { get; set; }

        public NotificationModel(int notificationIdType, int? referenceId, string referenceName, string message, DateTime createdDate)
        {
            NotificationTypeId = notificationIdType;
            ReferenceId = referenceId;
            ReferenceName = referenceName;
            Message = message;
            CreatedDate = createdDate;
        }
        public NotificationModel(tNotification n)
        {
            NotificationTypeId = n.NotificationTypeId;
            ReferenceId = n.ReferenceId;
            ReferenceName = n.ReferenceName;
            Message = n.Message;
            CreatedDate = n.CreatedDate;
        }
    }
}
