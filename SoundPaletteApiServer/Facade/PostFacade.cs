using Microsoft.AspNetCore.Mvc;
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
        public async Task DeletePost(int postId, int userId)
        {
            await postDbHelper.DeletePost(postId, userId);
        }
    }
}
