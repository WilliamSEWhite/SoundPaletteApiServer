using Microsoft.EntityFrameworkCore;
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.DataModels;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.DbHelpers
{
    public class LoginDbHelper
    {
        private readonly SPContext SPContext;

        public LoginDbHelper(SPContext _SPContext)
        {
            SPContext = _SPContext;
        }

        public async Task<UserModel> LoginUser(string username, string password)
        {
            var user = await SPContext.tUsers.Where(o => o.Username == username).FirstOrDefaultAsync();
            if (user.Password == password)
            {
                return new UserModel(user.Username, user.Password);
            }
            else return null;
        }

        public async Task<UserModel> RegisterUser(string username, string password)
        {
            var user = await SPContext.tUsers.Where(o => o.Username == username).FirstOrDefaultAsync();
            if (user == null)
            {
                var newUser = new tUser(username, password);
                await SPContext.tUsers.AddAsync(newUser);
                await SPContext.SaveChangesAsync();
                return new UserModel(username, password);
        }
            else
            {
                return null;
            }
        }
    }
}
