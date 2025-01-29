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
        public async Task<UserModel> getUser(int id)
        {
            return await userDbHelper.GetUser(id);

        }
    }
}
