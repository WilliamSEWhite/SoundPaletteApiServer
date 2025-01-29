using Microsoft.EntityFrameworkCore;
using SoundPaletteApiServer.Data;
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
            var user = await Context.tUsers.Where(o => o.Id == id).FirstOrDefaultAsync();
            return new UserModel(user.Id, user.Username, user.Password);
        }
    }
}
