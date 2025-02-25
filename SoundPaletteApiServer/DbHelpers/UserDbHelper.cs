using Microsoft.AspNetCore.Components;
using Microsoft.EntityFrameworkCore;
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.DataModels;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.DbHelpers
{
    public class UserDbHelper : DbHelperBase
    {
        private readonly IConfiguration _configuration;

        public UserDbHelper(SPContext context, IConfiguration configuration)
            : base(context)
        {
            _configuration = configuration;
        }

        public async Task<UserModel> GetUser(int id)
        {
            return new UserModel(await Context.tUsers.Where(o => o.UserId == id).Include(o => o.tUserInfo).FirstOrDefaultAsync());
        }

        public async Task<UserModel> GetUserProfile(int id)
        {
            var user = await Context.tUsers.Where(o => o.UserId == id).FirstOrDefaultAsync();
            return new UserModel(user.UserId, user.Username, user.Password);
        }


        public async Task UpdateUserInfo(UserInfoModel userInfo)
        {
            var existingInfo = await Context.tUserInfo.Where(o => o.UserId == userInfo.UserId).FirstOrDefaultAsync();
            // if user exists, update info
            if (existingInfo != null)
            {
                existingInfo.Email = userInfo.Email;
                existingInfo.Phone = userInfo.Phone;
                existingInfo.DOB = userInfo.DOB;
                existingInfo.LocationId = userInfo.LocationId;

                // mark the entity as modified
                Context.Entry(existingInfo).State = EntityState.Modified;
                Context.tUserInfo.Update(existingInfo);
                await Context.SaveChangesAsync();
            }
            // else create new entry by user id
            else
            {
                var newUserInfo = new tUserInfo(userInfo.UserId, userInfo.LocationId, userInfo.Email, userInfo.Phone, userInfo.DOB, DateTime.Now);
                Context.tUserInfo.Add(newUserInfo);
                await Context.SaveChangesAsync();
            }
        }
    }
}
