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

        //return all active notification for user
        public async Task<List<NotificationModel>> GetNotifications(int userId)
        {
            //get active notifications
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

            //mark notifications as inactive
            Context.tNotifications.UpdateRange(rawNotifications);
            await Context.SaveChangesAsync();

            var notifications = rawNotifications.Select(o => new NotificationModel(o)).ToList();

            return notifications;
        }//end GetNotifications

        //return notification settings for user
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
        }//end GetNotificationSettings

        //update notification settings for user
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
        }//end SetNotificationSettings

        //check if user has active notifications
        public async Task<bool> HasNotification(int userId)
        {
            var hasNotification = await Context.tNotifications.Include(o => o.NotificationType).Where(o => o.UserId == userId && o.AppIsActive && o.NotificationType.Description != "Message").AnyAsync();
            return hasNotification;
        }//end HasNotification

        //check if user has message notification
        public async Task<bool> HasMessage(int userId)
        {
            var hasMessage = await Context.tNotifications.Include(o => o.NotificationType).Where(o => o.UserId == userId && o.AppIsActive && o.NotificationType.Description == "Message").AnyAsync();
            return hasMessage;
        }//end HasMessage

    }
}
