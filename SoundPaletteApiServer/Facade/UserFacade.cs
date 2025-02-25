using SoundPaletteApiServer.DbHelpers;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Facade
{
    public class UserFacade : FacadeBase
    {
        private readonly UserDbHelper userDbHelper;

        public UserFacade(UserDbHelper _userDbHelper)
        {
            userDbHelper = _userDbHelper;
        }
        public async Task<UserModel> GetUser(int id)
        {
            return await userDbHelper.GetUser(id);

        }
        public async Task<UserModel> UpdateUserInfo(int id, UserInfoModel userInfo)
        {
            await userDbHelper.UpdateUserInfo(userInfo);
            return await userDbHelper.GetUser(id);

        }
    }
}
