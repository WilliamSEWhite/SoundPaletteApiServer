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

        //check if username and passwords exist in database, return user model if they do
        public async Task<UserModel> LoginUser(string username, string password)
        {
            //ensure username and password params are not empty
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                return null;

            //get user that matches username
            var user = await Context.tUsers.Where(o => o.Username == username).Include(o => o.UserInfo).FirstOrDefaultAsync();
            //if user exists
            if(user != null)
            {
                //check if user password matches param password
                if (user.Password == password)
                {
                    //if userinfo does not exist, return empty user info, otherwise return info with user
                    if(user.UserInfo == null)
                        return new UserModel(user.UserId, user.Username, user.Password);
                    else
                        return new UserModel(user.UserId, user.Username, user.Password, new UserInfoModel(user.UserInfo));

                }
            }
            return null;
        }//end LoginUser

        //add new user with username and password to database
        public async Task<UserModel> RegisterUser(string username, string password)
        {
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                return null;

            //create default notification settings
            var notificationSettings = await Context.tNotificationTypes.Select(o => new tNotificationSetting { NotificationTypeId = o.NotificationTypeId }).ToListAsync();

            //create user and insert into database
            var newUser = new tUser(username, password, notificationSettings);
            Context.tUsers.Add(newUser);
            await Context.SaveChangesAsync();
            //var user = await Context.tUsers.Where(o => o.Username == username).FirstOrDefaultAsync();
            return new UserModel(newUser.UserId, newUser.Username, newUser.Password);
        }//end RegisterUser
    }
}
