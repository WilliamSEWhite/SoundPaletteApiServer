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

        public async Task<List<TagModel>> GetTags()
        {
            return await tagDbHelper.GetTags();
        }
    }
}
