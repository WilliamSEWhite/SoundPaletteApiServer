
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.DataModels;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.DbHelpers
{
    public class PostDbHelper : DbHelperBase
    {
        private readonly IConfiguration _configuration;

        public PostDbHelper(SPContext context, IConfiguration configuration) : base(context)
        {
            _configuration = configuration;

        }

        public async Task CreatePost(NewPostModel newPost)
        {

            var postToAdd = new tPost()
            {
                UserId = newPost.UserId,
                PostTypeId = newPost.PostTypeId,
                Caption = newPost.Caption,
                IsPremium = newPost.IsPremium,
                IsMature = newPost.IsMature,
                IsDeleted = false,
                PostTags = newPost.PostTags.Select(o => new tPostTag(o.TagId)).ToList(),
                PostContent = CreatePostContent(newPost),
                CreatedDate = DateTime.Now,
                PublishDate = newPost.PublishDate,
                PostUserTags = await Context.tUsers.Where(o => newPost.PostUserTags.Contains(o.Username)).Select(o => new tPostUserTag(o.UserId)).ToListAsync()

            };
            Context.tPosts.Add(postToAdd);
            await Context.SaveChangesAsync();
        }

        private tPostContent CreatePostContent(NewPostModel newPost)
        {
            tPostContent content = new tPostContent();
            switch (newPost.PostTypeId)
            {
                case 1:
                    return new tPostContent(newPost.PostContent);
                        break;
            }
            return content;
        }

        public async Task DeletePost(int postId, int userId)
        {
            var postToDelete = Context.tPosts.Where(o => o.PostId == postId).FirstOrDefault();
            if(postToDelete != null && userId == postToDelete.UserId)
            {
                postToDelete.IsDeleted = true;
                await Context.SaveChangesAsync();
            }
        }
        public async Task<List<PostModel>> GetPostsForFeed(int userId)
        {
            var posts =                 (
                    from post in Context.tPosts.Include(o => o.PostContent).Include(o => o.PostTags).ThenInclude(o => o.Tag).Include(o => o.User).Include(o => o.PostUserTags).ThenInclude(o => o.User)
                    where post.UserId != userId
                    select post
                );
            return await SelectPosts(posts, userId).ToListAsync();
        }
        public async Task<List<PostModel>> GetPostsForUser(int userId)
        {
            var posts = 
                (
                    from post in Context.tPosts
                        .Include(o => o.PostContent)
                        .Include(o => o.PostTags).ThenInclude(o => o.Tag)
                        .Include(o => o.User)
                        .Include(o => o.PostUserTags).ThenInclude(o => o.User)
                    where post.UserId == userId
                    select post
                );
            return await SelectPosts(posts, userId).ToListAsync();
        }

        public async Task<List<PostModel>> GetPostsForUsername(int userId, string username)
        {
            var posts =  
                (
                    from post in Context.tPosts
                        .Include(o => o.PostContent)
                        .Include(o => o.PostTags).ThenInclude(o => o.Tag)
                        .Include(o => o.User)
                        .Include(o => o.PostUserTags).ThenInclude(o => o.User)
                    where post.User.Username == username
                    select post
                );
            return await SelectPosts(posts, userId).ToListAsync();
        }

        public async Task<List<PostModel>> GetTaggedPostsForUsername(int userId, string username)
        {
            var posts = 
                (
                    from postUserTags in Context.tPostUserTags.Include(o => o.User)
                    where postUserTags.User.Username == username
                    join post in Context.tPosts
                        .Include(o => o.PostContent)
                        .Include(o => o.PostTags).ThenInclude(o => o.Tag)
                        .Include(o => o.User)
                        .Include(o => o.PostUserTags).ThenInclude(o => o.User)
                    on postUserTags.PostId equals post.PostId
                    select post
                );
            return await SelectPosts(posts, userId).ToListAsync();
        }

        public async Task<List<PostModel>> GetSavedPostsForUser(int userId)
        {
            var posts =
                (
                    from postSaves in Context.tPostSaves
                    where postSaves.UserId == userId
                    join post in Context.tPosts
                        .Include(o => o.PostContent)
                        .Include(o => o.PostTags).ThenInclude(o => o.Tag)
                        .Include(o => o.User)
                        .Include(o => o.PostUserTags).ThenInclude(o => o.User)
                    on postSaves.PostId equals post.PostId
                    select post
                );
            return await SelectPosts(posts, userId).ToListAsync(); ;
        }

        public async Task<List<PostModel>> GetTrendingPosts(int userId, string range)
        {
            int timespan = 0;
            switch (range)
            {
                case "Past Week":
                    timespan = 7;
                    break;
                case "Past Month":
                    timespan = 30;
                    break;
                case "Past Year":
                    timespan = 365;
                    break;
            }

            var date = timespan == 0 ? DateTime.MinValue : DateTime.Now.AddDays(-timespan);

            var posts = await
                (
                    from post in Context.tPosts
                        .Include(o => o.PostContent)
                        .Include(o => o.PostTags).ThenInclude(o => o.Tag)
                        .Include(o => o.User)
                        .Include(o => o.PostUserTags).ThenInclude(o => o.User)
                    where post.CreatedDate > date && !post.IsDeleted
                    let isLiked = Context.tPostLikes.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    let isSaved = Context.tPostSaves.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    orderby post.LikeCount descending
                    select new PostModel(post, isLiked, isSaved)
                ).ToListAsync();
            return posts;
        }


        public async Task<List<PostModel>> GetFollowingPosts(int userId)
        {
            var posts = 
                (
                    from userFollower in Context.tUserFollowers
                    where userFollower.FollowerId == userId
                    join post in Context.tPosts
                        .Include(o => o.PostContent)
                        .Include(o => o.PostTags).ThenInclude(o => o.Tag)
                        .Include(o => o.User)
                        .Include(o => o.PostUserTags).ThenInclude(o => o.User)
                    on userFollower.FollowingId equals post.UserId
                    select post
                );
            return await SelectPosts(posts, userId).ToListAsync(); ;
        }
        public async Task<List<PostModel>> GetPostsByTag(int userId, int tagId)
        {
            var posts =
                (
                    from post in Context.tPosts
                        .Include(o => o.PostContent)
                        .Include(o => o.PostTags).ThenInclude(o => o.Tag)
                        .Include(o => o.User)
                        .Include(o => o.PostUserTags).ThenInclude(o => o.User)
                    where post.PostTags.Any(o => o.TagId == tagId) && post.UserId != userId
                    select post
                );
            return await SelectPosts(posts, userId).ToListAsync(); ;
        }

        public async Task<List<PostModel>> SearchPosts(int userId, string searchTerm)
        {
            var posts =
            (
                from post in Context.tPosts
                    .Include(o => o.PostContent)
                    .Include(o => o.PostTags).ThenInclude(o => o.Tag)
                    .Include(o => o.User).Include(o => o.PostUserTags)
                    .ThenInclude(o => o.User)
                where post.UserId != userId && !post.IsDeleted && post.Caption.ToLower().Contains(searchTerm.ToLower())
                select post
            );
            return await SelectPosts(posts, userId).ToListAsync(); ;
        }

        
        private IQueryable<PostModel> SelectPosts(IQueryable<tPost> tPosts, int userId)
        {
            var posts =
            (
                from post in tPosts
                where !post.IsDeleted
                let isLiked = Context.tPostLikes.Any(o => o.PostId == post.PostId && o.UserId == userId)
                let isSaved = Context.tPostSaves.Any(o => o.PostId == post.PostId && o.UserId == userId)
                orderby post.PostId descending
                select new PostModel(post, isLiked, isSaved)
            );
            return posts;

        }
    }
}
