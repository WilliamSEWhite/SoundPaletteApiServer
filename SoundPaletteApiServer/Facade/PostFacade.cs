using SoundPaletteApiServer.DbHelpers;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Facade
{
    public class PostFacade
    {
        private readonly PostDbHelper postDbHelper;

        public PostFacade(PostDbHelper _postDbHelper)
        {
            postDbHelper = _postDbHelper;
        }

        public async Task CreatePost(NewPostModel newPost)
        {
            await postDbHelper.CreatePost(newPost);
        }
    }
}
