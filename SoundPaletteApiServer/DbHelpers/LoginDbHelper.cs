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

        public async Task<UserModel> LoginUser(string username, string password)
        {
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                return null;

            var user = await Context.tUsers.Where(o => o.Username == username).FirstOrDefaultAsync();
            if (user.Password == password)
            {
                return new UserModel(user.UserId, user.Username, user.Password);
            }
            else return null;
        }

        public async Task<UserModel> RegisterUser(string username, string password)
        {
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                return null;

            var user = await Context.tUsers.Where(o => o.Username == username).FirstOrDefaultAsync();
            if (user == null)
            {
                var newUser = new tUser(username, password);
                Context.tUsers.Add(newUser);
                await Context.SaveChangesAsync();
                user = await Context.tUsers.Where(o => o.Username == username).FirstOrDefaultAsync();
                return new UserModel(user.UserId, user.Username, user.Password);
            }
            else
            {
                return null;
            }
        }
    }
}
