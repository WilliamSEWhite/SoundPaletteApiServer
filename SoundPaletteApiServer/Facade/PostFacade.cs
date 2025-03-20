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
        public async Task<List<PostModel>> GetPostsForFeed(int userId)
        {
            return await postDbHelper.GetPostsForFeed(userId);
        }

        public async Task<List<PostModel>> GetPostsForUser(int userId)
        {
            return await postDbHelper.GetPostsForUser(userId);
        }
        public async Task<List<PostModel>> GetPostsForUsername(int userId, string username)
        {
            return await postDbHelper.GetPostsForUsername(userId, username);
        }
        
        public async Task<List<PostModel>> GetSavedPostsForUser( int userId)
        {
            return await postDbHelper.GetSavedPostsForUser(userId);
        }
        public async Task<List<PostModel>> GetFollowingPosts(int userId)
        {
            return await postDbHelper.GetFollowingPosts(userId);
        }
        public async Task DeletePost(int postId, int userId)
        {
            await postDbHelper.DeletePost(postId, userId);
        }
    }
}
