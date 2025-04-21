using SoundPaletteApiServer.Facade;

namespace SoundPaletteApiServer.Controllers
{
    public class NotificationController : BaseApiController
    {
        private readonly NotificationFacade notificationFacade;

        public NotificationController(NotificationFacade _notificationFacade)
        {
            notificationFacade = _notificationFacade;
        }
    }
}
