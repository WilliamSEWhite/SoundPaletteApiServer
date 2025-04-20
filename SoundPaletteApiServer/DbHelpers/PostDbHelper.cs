
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
                //PostTypeId = newPost.PostTypeId,
                PostTypeId = newPost.FileTypeId,
                Caption = newPost.Caption,
                IsPremium = newPost.IsPremium,
                IsMature = newPost.IsMature,
                IsDeleted = false,
                PostTags = newPost.PostTags.Select(o => new tPostTag(o.TagId)).ToList(),
                PostContent = CreatePostContent(newPost),
                CreatedDate = DateTime.Now,
                PublishDate = newPost.PublishDate,
                PostUserTags = await Context.tUsers.Where(o => newPost.PostUserTags.Contains(o.Username)).Select(o => new tPostUserTag(o.UserId)).ToListAsync(),
                FileId = newPost.FileId
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
        public async Task<List<PostModel>> GetPostsForFeed(int userId, int page)
        {
            var posts =                 (
                    from post in Context.tPosts.Include(o => o.PostContent).Include(o => o.PostTags).ThenInclude(o => o.Tag).Include(o => o.User).Include(o => o.PostUserTags).ThenInclude(o => o.User)
                    let isLiked = Context.tPostLikes.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    let isSaved = Context.tPostSaves.Any(o => o.PostId == post.PostId && o.UserId == userId)

                    where post.UserId != userId  && !post.IsDeleted
                    orderby post.PostId descending
                    select new PostModel(post.PostId, post.Caption, post.PostTags.Select(o => new TagModel(o.Tag)).ToList(), new PostContentModel(post.PostContent), post.CreatedDate, post.User.Username, post.PostTypeId, post.CommentCount, post.LikeCount, isLiked, isSaved, post.PostUserTags.Select(o => o.User.Username).ToList())
                ).ToListAsync();
            return posts;
        }
        public async Task<List<PostModel>> GetPostsForUser(int userId, int page)
        {
            var posts = 
                (
                    from post in Context.tPosts.Include(o => o.PostContent).Include(o => o.PostTags).ThenInclude(o => o.Tag).Include(o => o.User).Include(o => o.PostUserTags).ThenInclude(o => o.User)
                    let isLiked = Context.tPostLikes.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    let isSaved = Context.tPostSaves.Any(o => o.PostId == post.PostId && o.UserId == userId)

                    where post.UserId == userId && !post.IsDeleted
                    orderby post.PostId descending
                    select new PostModel(post.PostId, post.Caption, post.PostTags.Select(o => new TagModel(o.Tag)).ToList(), new PostContentModel(post.PostContent), post.CreatedDate, post.User.Username, post.PostTypeId, post.CommentCount, post.LikeCount, isLiked, isSaved, post.PostUserTags.Select(o => o.User.Username).ToList())
                ).ToListAsync();
            return posts;
        }

        public async Task<List<PostModel>> GetPostsForUsername(int userId, string username, int page)
        {
            var posts =  
                (
                    from post in Context.tPosts.Include(o => o.PostContent).Include(o => o.PostTags).ThenInclude(o => o.Tag).Include(o => o.User).Include(o => o.PostUserTags).ThenInclude(o => o.User)
                    let isLiked = Context.tPostLikes.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    let isSaved = Context.tPostSaves.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    orderby post.PostId descending
                    where post.User.Username == username && !post.IsDeleted

                    select new PostModel(post.PostId, post.Caption, post.PostTags.Select(o => new TagModel(o.Tag)).ToList(), new PostContentModel(post.PostContent), post.CreatedDate, post.User.Username, post.PostTypeId, post.CommentCount, post.LikeCount, isLiked, isSaved, post.PostUserTags.Select(o => o.User.Username).ToList())
                ).ToListAsync();
            return posts;
        }

        public async Task<List<PostModel>> GetTaggedPostsForUsername(int userId, string username, int page)
        {
            var posts = 
                (
                    from postUserTags in Context.tPostUserTags
                    let user = Context.tUsers.FirstOrDefault(o => o.Username == username )
                    where postUserTags.UserId == user.UserId
                    join post in Context.tPosts.Include(o => o.PostContent).Include(o => o.PostTags).ThenInclude(o => o.Tag).Include(o => o.User).Include(o => o.PostUserTags).ThenInclude(o => o.User) on postUserTags.PostId equals post.PostId
                    let isLiked = Context.tPostLikes.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    let isSaved = Context.tPostSaves.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    where !post.IsDeleted
                    orderby post.PostId descending
                    select new PostModel(post.PostId, post.Caption, post.PostTags.Select(o => new TagModel(o.Tag)).ToList(), new PostContentModel(post.PostContent), post.CreatedDate, post.User.Username, post.PostTypeId, post.CommentCount, post.LikeCount, isLiked, isSaved, post.PostUserTags.Select(o => o.User.Username).ToList())
                ).ToListAsync();
            return posts;
        }

        public async Task<List<PostModel>> GetSavedPostsForUser(int userId, int page)
        {
            var posts =
                (
                    from postSaves in Context.tPostSaves
                    where postSaves.UserId == userId
                    join post in Context.tPosts.Include(o => o.PostContent).Include(o => o.PostTags).ThenInclude(o => o.Tag).Include(o => o.User).Include(o => o.PostUserTags).ThenInclude(o => o.User) on postSaves.PostId equals post.PostId
                    let isLiked = Context.tPostLikes.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    let isSaved = Context.tPostSaves.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    where !post.IsDeleted
                    orderby post.PostId descending
                    select new PostModel(post.PostId, post.Caption, post.PostTags.Select(o => new TagModel(o.Tag)).ToList(), new PostContentModel(post.PostContent), post.CreatedDate, post.User.Username, post.PostTypeId, post.CommentCount, post.LikeCount, isLiked, isSaved, post.PostUserTags.Select(o => o.User.Username).ToList())
                ).ToListAsync();
            return posts;
        }

        public async Task<List<PostModel>> GetTrendingPosts(int userId, string range, int page)
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
            int pageSize = 10;

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
                    select new PostModel(post.PostId, post.Caption, post.PostTags.Select(o => new TagModel(o.Tag)).ToList(), new PostContentModel(post.PostContent), post.CreatedDate, post.User.Username, post.PostTypeId, post.CommentCount, post.LikeCount, isLiked, isSaved, post.PostUserTags.Select(o => o.User.Username).ToList())
                ).ToListAsync();
            return posts;
        }


        public async Task<List<PostModel>> GetFollowingPosts(int userId, int page)
        {
            var posts = 
                (
                    from userFollower in Context.tUserFollowers
                    where userFollower.FollowerId == userId
                    join post in Context.tPosts.Include(o => o.PostContent).Include(o => o.PostTags).ThenInclude(o => o.Tag).Include(o => o.User).Include(o => o.PostUserTags).ThenInclude(o => o.User) on userFollower.FollowingId equals post.UserId
                    let isLiked = Context.tPostLikes.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    let isSaved = Context.tPostSaves.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    where !post.IsDeleted
                    orderby post.PostId descending
                    select new PostModel(post.PostId, post.Caption, post.PostTags.Select(o => new TagModel(o.Tag)).ToList(), new PostContentModel(post.PostContent), post.CreatedDate, post.User.Username, post.PostTypeId, post.CommentCount, post.LikeCount, isLiked, isSaved, post.PostUserTags.Select(o => o.User.Username).ToList())
                ).ToListAsync();
            return posts;
        }

        public async Task<PostModel> GetPost(int userId, int postId)
        {
            var posts = await
                (
                    from post in Context.tPosts.Include(o => o.PostContent).Include(o => o.PostTags).ThenInclude(o => o.Tag).Include(o => o.User).Include(o => o.PostUserTags).ThenInclude(o => o.User)
                    where post.PostTags.Any(o => o.TagId == tagId)
                    let isLiked = Context.tPostLikes.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    let isSaved = Context.tPostSaves.Any(o => o.PostId == post.PostId && o.UserId == userId)
                    where post.UserId == userId && !post.IsDeleted
                    orderby post.PostId descending
                    select new PostModel(post.PostId, post.Caption, post.PostTags.Select(o => new TagModel(o.Tag)).ToList(), new PostContentModel(post.PostContent), post.CreatedDate, post.User.Username, post.PostTypeId, post.CommentCount, post.LikeCount, isLiked, isSaved, post.PostUserTags.Select(o => o.User.Username).ToList())
                ).ToListAsync();
            return posts;
        }


        private IQueryable<PostModel> SelectPosts(IQueryable<tPost> tPosts, int userId, int page)
        {
            int pageSize = 10;
            var posts =
            (
                from post in tPosts
                where !post.IsDeleted
                let isLiked = Context.tPostLikes.Any(o => o.PostId == post.PostId && o.UserId == userId)
                let isSaved = Context.tPostSaves.Any(o => o.PostId == post.PostId && o.UserId == userId)
                orderby post.PostId descending
                select new PostModel(post.PostId, post.Caption, post.PostTags.Select(o => new TagModel(o.Tag)).ToList(), new PostContentModel(post.PostContent), post.CreatedDate, post.User.Username, post.PostTypeId, post.CommentCount, post.LikeCount, isLiked, isSaved, post.PostUserTags.Select(o => o.User.Username).ToList())
            ).ToListAsync();
            return posts;

        }
    }
}
