using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.DbHelpers;
using SoundPaletteApiServer.Models;
using System.Collections.Generic;

namespace SoundPaletteApiServer.Facade
{
    public class NotificationFacade : FacadeBase
    {
        private readonly NotificationDbHelper notificationDbHelper;

        public NotificationFacade(NotificationDbHelper _notificationDbHelper)
        {
            notificationDbHelper = _notificationDbHelper;
        }

        public async Task<List<NotificationModel>> GetNotifications(int userId)
        {
            return await notificationDbHelper.GetNotifications(userId);
        }

        public async Task<List<NotificationSettingModel>> GetNotificationSettings(int userId)
        {
            return await notificationDbHelper.GetNotificationSettings(userId);
        }

        public async Task SetNotificationSettings(List<NotificationSettingModel> settings)
        {
            await notificationDbHelper.SetNotificationSettings(settings);
        }

        public async Task<bool> HasNotification(int userId)
        {
            return await notificationDbHelper.HasNotification(userId);
        }
        public async Task<bool> HasMessage(int userId)
        {
            return await notificationDbHelper.HasMessage(userId);
        }
    }
}
