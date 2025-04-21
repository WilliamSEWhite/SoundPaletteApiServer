using SoundPaletteApiServer.DbHelpers;

namespace SoundPaletteApiServer.Facade
{
    public class NotificationFacade : FacadeBase
    {
        private readonly NotificationDbHelper notificationDbHelper;

        public NotificationFacade(NotificationDbHelper _notificationDbHelper)
        {
            notificationDbHelper = _notificationDbHelper;
        }
    }
}
