﻿using Microsoft.AspNetCore.Mvc;
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
        public async Task<List<PostModel>> GetTaggedPostsForUsername(int userId, string username)
        {
            return await postDbHelper.GetTaggedPostsForUsername(userId, username);
        }
        public async Task<List<PostModel>> GetSavedPostsForUser( int userId)
        {
            return await postDbHelper.GetSavedPostsForUser(userId);
        }
        public async Task<List<PostModel>> GetFollowingPosts(int userId)
        {
            return await postDbHelper.GetFollowingPosts(userId);
        }
        public async Task<List<PostModel>> GetTrendingPosts(int userId, string range)
        {
            return await postDbHelper.GetTrendingPosts(userId, range);
        }

        public async Task<List<PostModel>> GetPostsByTag(int userId, int tagId)
        {
            return await postDbHelper.GetPostsByTag(userId, tagId);
        }

        public async Task DeletePost(int postId, int userId)
        {
            await postDbHelper.DeletePost(postId, userId);
        }
        public async Task<List<PostModel>> SearchPosts(int userId, string searchTerm)
        {
            return await postDbHelper.SearchPosts(userId, searchTerm);
        }
    }
}
