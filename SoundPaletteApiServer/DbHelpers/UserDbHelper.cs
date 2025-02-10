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
            var user = await Context.tUsers.Where(o => o.UserId == id).FirstOrDefaultAsync();
            return new UserModel(user.UserId, user.Username, user.Password);
        }

        public async Task<UserInfoModel> UpdateUserInfo(UserInfoModel userInfo)
        {
            var existingInfo = await Context.tUserInfos.Where(o => o.UserId == userInfo.UserId).FirstOrDefaultAsync();
            if (existingInfo != null)
            {
                return new UserInfoModel(existingInfo);
            }
            else
            {
                var newUserInfo = new tUserInfo(userInfo.UserId, null, userInfo.Email, userInfo.Phone, DateTime.Now, DateTime.Now);
                Context.tUserInfos.Add(newUserInfo);
                await Context.SaveChangesAsync();
                return new UserInfoModel(await Context.tUserInfos.Where(o => o.UserId == userInfo.UserId).FirstOrDefaultAsync());
            }
        }
    }
}
