using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.DbHelpers
{
    public class TagDbHelper : DbHelperBase
    {
        private readonly IConfiguration _configuration;

        public TagDbHelper(SPContext context, IConfiguration configuration) : base(context)
        {
            _configuration = configuration;

        }

        public async Task<List<TagModel>> GetTags()
        {
            return await Context.tTags.Select(o => new TagModel(o)).ToListAsync(); 
        }

    }
}
