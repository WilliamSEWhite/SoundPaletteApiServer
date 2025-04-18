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
        public async Task<List<PostModel>> GetPostsForFeed(int userId, int page)
        {
            return await postDbHelper.GetPostsForFeed(userId, page);
        }

        public async Task<List<PostModel>> GetPostsForUser(int userId, int page)
        {
            return await postDbHelper.GetPostsForUser(userId, page);
        }
        public async Task<List<PostModel>> GetPostsForUsername(int userId, string username, int page)
        {
            return await postDbHelper.GetPostsForUsername(userId, username, page);
        }
        public async Task<List<PostModel>> GetTaggedPostsForUsername(int userId, string username, int page)
        {
            return await postDbHelper.GetTaggedPostsForUsername(userId, username, page);
        }
        public async Task<List<PostModel>> GetSavedPostsForUser( int userId, int page)
        {
            return await postDbHelper.GetSavedPostsForUser(userId, page);
        }
        public async Task<List<PostModel>> GetFollowingPosts(int userId, int page)
        {
            return await postDbHelper.GetFollowingPosts(userId, page);
        }
        public async Task<List<PostModel>> GetTrendingPosts(int userId, string range, int page)
        {
            return await postDbHelper.GetTrendingPosts(userId, range, page);
        }

        public async Task<List<PostModel>> GetPostsByTag(int userId, int tagId, int page)
        {
            return await postDbHelper.GetPostsByTag(userId, tagId, page);
        }

        public async Task DeletePost(int postId, int userId)
        {
            await postDbHelper.DeletePost(postId, userId);
        }
        public async Task<List<PostModel>> SearchPosts(int userId, string searchTerm, int page)
        {
            return await postDbHelper.SearchPosts(userId, searchTerm, page);
        }
        public async Task<PostModel> GetPost(int userId, int postId)
        {
            return await postDbHelper.GetPost(userId, postId);
        }
    }
}
