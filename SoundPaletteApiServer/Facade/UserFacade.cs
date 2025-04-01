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
        
        /** logon user */
        public async Task<UserModel> GetUser(int id)
        {
            return await userDbHelper.GetUser(id);
        }
        public async Task<UserModel> GetUserProfile(int id)
        {
            return await userDbHelper.GetUserProfile(id);
        }
        /** user info */
        public async Task<UserModel> UpdateUserInfo(int id, UserInfoModel userInfo)
        {
            await userDbHelper.UpdateUserInfo(userInfo);
            return await userDbHelper.GetUser(id);

        }
        public async Task<UserInfoModel> getUserInfo(int id)
        {
            return await userDbHelper.GetUserInfo(id);
        }
        /** user profile */
        public async Task<UserProfileModel> GetUserProfileInfo(int id)
        {
            return await userDbHelper.GetUserProfileInfo(id);
        }
        public async Task<UserProfileModelLite> GetUserProfileByUsername(int userId, string username)
        {
            return await userDbHelper.GetUserProfileByUsername(userId, username);
        }

        public async Task<UserProfileModel> UpdateUserProfileInfo(UserProfileModel userProfile)
        {
            return await userDbHelper.UpdateUserProfileInfo(userProfile);
        }

        public async Task FollowUser(int followerId, string followingUsername)
        {
            await userDbHelper.FollowUser(followerId, followingUsername);
        }


        public async Task UnfollowUser(int followerId, string followingUsername)
        {
            await userDbHelper.UnfollowUser(followerId, followingUsername);
        }
        public async Task<List<string>> SearchUsers(string searchTerm)
        {
            return await userDbHelper.SearchUsers(searchTerm);
        }
    }
}
