using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.DbHelpers;
using SoundPaletteApiServer.Models;
using SoundPaletteApiServer.Services;
using System.IO;
using System.Text.Json;

namespace SoundPaletteApiServer.Facade
{
    public class PostFacade
    {
        private readonly PostDbHelper postDbHelper;
        private readonly FileDbHelper fileDbHelper;
        private readonly S3Service s3Service;

        public PostFacade(PostDbHelper _postDbHelper)
        {
            postDbHelper = _postDbHelper;
        }

        public PostFacade(PostDbHelper _postDbHelper, FileDbHelper _fileDbHelper, S3Service _s3Service)
        {
            postDbHelper = _postDbHelper;
            fileDbHelper = _fileDbHelper;
            s3Service = _s3Service;
        }

        /** upload post file to database and S3 */
        public async Task CreateFilePost(IFormFile file, PostFileModel metaData)
        {
            if (metaData == null || metaData.FileModel == null || metaData.NewPostModel == null)
                throw new ArgumentNullException(nameof(metaData), "MetaData, FileModel, or NewPostModel cannot be null");

            var fileModel = metaData.FileModel;
            var newPostModel = metaData.NewPostModel;

            // upload to S3
            using var stream = file.OpenReadStream();
            string url = await s3Service.UploadFileAsync(stream, file.FileName);

            fileModel.FileName = file.FileName;
            fileModel.FileUrl = url;

            // Save file, get FileId
            int fileId = await fileDbHelper.UploadFile(fileModel);
            newPostModel.FileId = fileId;

            // Defensive programming: ensure tags lists are not null
            newPostModel.PostTags ??= new List<TagModel>();
            newPostModel.PostUserTags ??= new List<string>();

            await postDbHelper.CreatePost(newPostModel);
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
