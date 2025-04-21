using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.Models;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;

namespace SoundPaletteApiServer.Controllers
{
    public class NotificationController : BaseApiController
    {
        private readonly NotificationFacade notificationFacade;

        public NotificationController(NotificationFacade _notificationFacade)
        {
            notificationFacade = _notificationFacade;
        }
        [HttpGet("get-notifications")]
        public async Task<IActionResult> GetNotifications([FromQuery] int userId)
        {
            return Ok(await notificationFacade.GetNotifications(userId));
        }

        [HttpGet("get-notification-settings")]
        public async Task<IActionResult> GetNotificationSettings([FromQuery] int userId)
        {
            return Ok(await notificationFacade.GetNotificationSettings(userId));
        }

        [HttpPost("set-notification-settings")]
        public async Task<IActionResult> SetNotificationSettings([FromBody] List<NotificationSettingModel> settings)
        {
            await notificationFacade.SetNotificationSettings(settings);
            return Ok();
        }

    }
}
