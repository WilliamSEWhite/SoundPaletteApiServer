using Microsoft.EntityFrameworkCore;
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.DataModels;
using SoundPaletteApiServer.Models;
using System;

namespace SoundPaletteApiServer.DbHelpers
{
    public class LoginDbHelper : DbHelperBase
    {

        private readonly IConfiguration _configuration;

        public LoginDbHelper(SPContext context, IConfiguration configuration)
            : base(context)
        {
            _configuration = configuration;
        }

        public async Task<UserModel> LoginUser(string username, string password)
        {
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                return null;

            var user = await Context.tUsers.Where(o => o.Username == username).Include(o => o.UserInfo).FirstOrDefaultAsync();
            if(user != null)
            {
                if (user.Password == password)
                {
                    if(user.UserInfo == null)
                        return new UserModel(user.UserId, user.Username, user.Password);
                    else
                        return new UserModel(user.UserId, user.Username, user.Password, new UserInfoModel(user.UserInfo));

                }
            }
            return null;
        }

        public async Task<UserModel> RegisterUser(string username, string password)
        {
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                return null;

            var notificationSettings = await Context.tNotificationTypes.Select(o => new tNotificationSetting { NotificationTypeId = o.NotificationTypeId }).ToListAsync();

            var newUser = new tUser(username, password, notificationSettings);
            Context.tUsers.Add(newUser);
            await Context.SaveChangesAsync();
            var user = await Context.tUsers.Where(o => o.Username == username).FirstOrDefaultAsync();
            return new UserModel(user.UserId, user.Username, user.Password);
        }
    }
}
