using SoundPaletteApiServer.DbHelpers;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Facade
{
    public class LoginFacade
    {
        private readonly LoginDbHelper loginDbHelper;

        public LoginFacade(LoginDbHelper _loginDbHelper)
        {
            loginDbHelper = _loginDbHelper;
        }

        public async Task<UserModel> LoginUser(string username, string password)
        {
            return await loginDbHelper.LoginUser(username, password);

        }

        public async Task<UserModel> RegisterUser(string username, string password)
        {
            return await loginDbHelper.RegisterUser(username, password);
        }
    }
}
