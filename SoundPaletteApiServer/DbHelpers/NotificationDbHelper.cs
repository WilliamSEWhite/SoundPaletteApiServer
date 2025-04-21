using Microsoft.EntityFrameworkCore;
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.DataModels;
using SoundPaletteApiServer.Models;
using System.Xml.Linq;

namespace SoundPaletteApiServer.DbHelpers
{
    public class NotificationDbHelper : DbHelperBase
    {
        private readonly IConfiguration _configuration;

        public NotificationDbHelper(SPContext context, IConfiguration configuration)
            : base(context)
        {
            _configuration = configuration;
        }

        public async Task<List<NotificationModel>> GetNotifications(int userId)
        {
            var rawNotifications = await Context.tNotifications.Where(o => o.AppIsActive && o.UserId == userId).Select(o => new tNotification
            {
                NotificationTypeId = o.NotificationTypeId,
                UserId = o.UserId,
                Message = o.Message,
                ReferenceId = o.ReferenceId,
                ReferenceName = o.ReferenceName,
                CreatedDate = DateTime.Now,
                AppIsActive = false,
                DeviceIsActive = false
            }).ToListAsync();

            Context.tNotifications.UpdateRange(rawNotifications);
            await Context.SaveChangesAsync();

            var notifications = rawNotifications.Select(o => new NotificationModel(o)).ToList();

            return notifications;
        }

        public async Task<List<NotificationSettingModel>> GetNotificationSettings(int userId)
        {
            var settings = await Context.tNotificationSettings.Include(o => o.NotificationType).Where(o => o.UserId == userId).Select(o => new NotificationSettingModel
            {
               NotificationSettingId = o.NotificationSettingId,
               SettingName = o.NotificationType.Description,
               Value = o.SendNotification,
               NotificationTypeId = o.NotificationTypeId,
            }).ToListAsync();

            return settings;
        }

        public async Task SetNotificationSettings(List<NotificationSettingModel> settings)
        {
            var newSettings = settings.Select(o => new tNotificationSetting
            {
                NotificationSettingId = o.NotificationSettingId,
                SendNotification = o.Value,
                NotificationTypeId = o.NotificationTypeId,
                UserId = o.UserId,
            }).ToList();
            Context.tNotificationSettings.UpdateRange(newSettings);
            await Context.SaveChangesAsync();
        }
        public async Task<bool> HasNotification(int userId)
        {
            return await Context.tNotifications.Include(o => o.NotificationType).Where(o => o.UserId == userId && o.AppIsActive && o.NotificationType.Description != "Message").AnyAsync();
        }

        public async Task<bool> HasMessage(int userId)
        {
            return await Context.tNotifications.Include(o => o.NotificationType).Where(o => o.UserId == userId && o.AppIsActive && o.NotificationType.Description == "Message").AnyAsync();
        }

    }
}
