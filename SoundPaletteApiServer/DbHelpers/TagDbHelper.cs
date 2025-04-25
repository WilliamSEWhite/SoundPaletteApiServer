using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration.UserSecrets;
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.DataModels;
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

        /** global tag list */
        public async Task<List<TagModel>> GetTags()
        {
            return await Context.tTags.Select(o => new TagModel(o)).ToListAsync();
        }//end GetTags

        /** user tags */
        public async Task<List<TagModel>> GetUserTags(int id)
        {
            return await Context.tUserTags
                .Where(ut => ut.UserId == id)
                .Join(Context.tTags, ut => ut.TagId, t => t.TagId,
                    (ut, t) => new TagModel(t))
                .ToListAsync();
        }//end GetUserTags

        //update tags that user follows in database
        public async Task<List<TagModel>> UpdateUserTags(int userId, List<TagModel> userTags)
        {
            // get exisiting tags
            var existingTags = await Context.tUserTags.Where(ut => ut.UserId == userId).ToListAsync();

            // remove existing tags not in this new list
            Context.tUserTags.RemoveRange(existingTags.Where(et => !userTags.Any(ut => ut.TagId == et.TagId)));

            // add new tags
            foreach (var tag in userTags)
            {
                if(!existingTags.Any(et => et.TagId == tag.TagId))
                {
                    Context.tUserTags.Add(new tUserTag
                    {
                        UserId = userId,TagId = tag.TagId
                    }); 
                }
            }

            // save changes to database and return updated list
            await Context.SaveChangesAsync();
            return await Context.tUserTags.Where(ut => ut.UserId == userId)
                .Select(ut => new TagModel { TagId = ut.TagId})
                .ToListAsync();
        }//end UpdateUserTags

        //return tags whos description contains searchTerm
        public async Task<List<TagModel>> SearchTags(string searchTerm)
        {
            return await Context.tTags
                .Where(o => o.TagName.ToLower().Contains(searchTerm.ToLower())).Select(o => new TagModel(o))
                .ToListAsync();
        }//end SearchTags
    }
}
