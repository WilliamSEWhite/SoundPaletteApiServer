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
        public async Task<UserInfoModel> UpdateUserInfo(UserInfoModel userInfo)
        {
            return await userDbHelper.UpdateUserInfo(userInfo);

        }
        public async Task<UserInfoModel> getUserInfo(int id)
        {
            return await userDbHelper.GetUserInfo(id);
        }
        public async Task<UserProfileModel> GetUserProfile(int id)
        {
            return await userDbHelper.GetUserProfile(id);
        }
        public async Task<UserProfileModel> UpdateUserProfile(UserProfileModel userProfile)
        {
            return await userDbHelper.UpdateUserProfile(userProfile);
        }
    }
}
