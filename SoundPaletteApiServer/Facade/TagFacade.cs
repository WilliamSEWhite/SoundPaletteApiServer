using SoundPaletteApiServer.DbHelpers;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Facade
{
    public class TagFacade : FacadeBase
    {
        private readonly TagDbHelper tagDbHelper;

        public TagFacade(TagDbHelper _tagDbHelper)
        {
            tagDbHelper = _tagDbHelper;
        }

        /** global tag list */
        public async Task<List<TagModel>> GetTags()
        {
            return await tagDbHelper.GetTags();
        }

        /** user tags */
        public async Task<List<TagModel>> GetUserTags(int id)
        {
            return await tagDbHelper.GetUserTags(id);
        }
        public async Task<List<TagModel>> UpdateUserTags(int id, List<TagModel> userTags)
        {
            return await tagDbHelper.UpdateUserTags(id, userTags);
        }
    }
}
