
using Amazon.S3.Model;
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

        public async Task UpdatePost(PostModel postModel)
        {
            var post = await Context.tPosts
                .Include(p => p.PostTags)
                .Include(p => p.PostUserTags)
                .Include(p => p.PostContent)
                .FirstOrDefaultAsync(p => p.PostId == postModel.PostId);

            if (post == null)
                return;

            // Update fields using PostModel properties
            post.Caption = postModel.PostCaption;
            post.PostTypeId = postModel.PostType;
            post.FileId = postModel.FileId;

            // Update PostTags
            post.PostTags.Clear();
            post.PostTags = postModel.PostTags
                ?.Select(tag => new tPostTag(tag.TagId))
                .ToList() ?? new List<tPostTag>();

            // Update PostUserTags
            post.PostUserTags.Clear();
            var userTags = await Context.tUsers
                .Where(u => postModel.PostUserTags.Contains(u.Username))
                .Select(u => new tPostUserTag(u.UserId))
                .ToListAsync();
            post.PostUserTags.AddRange(userTags);

            // Update PostContent
            if (post.PostContent != null && postModel.PostContent != null)
            {
                post.PostContent.PostTextContent = postModel.PostContent.PostTextContent;
                post.PostContent.BackgroundColour = postModel.PostContent.BackgroundColour;
                post.PostContent.FontColour = postModel.PostContent.FontColour;
            }

            await Context.SaveChangesAsync();
        }

        public async Task CreatePost(NewPostModel newPost)
        {
            var postToAdd = new tPost()
            {
                UserId = newPost.UserId,
                PostTypeId = newPost.PostTypeId,
                //PostTypeId = newPost.FileTypeId,
                Caption = newPost.Caption,
                IsPremium = newPost.IsPremium,
                IsMature = newPost.IsMature,
                IsDeleted = false,
                PostTags = newPost.PostTags.Select(o => new tPostTag(o.TagId)).ToList(),
                PostContent = CreatePostContent(newPost),
                CreatedDate = DateTime.Now,
                PublishDate = newPost.PublishDate,
                FileId = newPost.FileId,
                PostUserTags = await Context.tUsers.Where(o => newPost.PostUserTags.Contains(o.Username)).Select(o => new tPostUserTag(o.UserId)).ToListAsync()
            };
            Context.tPosts.Add(postToAdd);
            await Context.SaveChangesAsync();

            if (newPost.PostUserTags != null && newPost.PostUserTags.Any())
            {
                var userIds = postToAdd.PostUserTags.Select(o => o.UserId).ToList();
                var notifications = 
                (
                    from setting in Context.tNotificationSettings.Include(o => o.NotificationType)
                    where userIds.Contains(setting.UserId) && setting.NotificationType.Description == "Tag"
                    let username = Context.tUsers.Where(o => o.UserId == newPost.UserId).Select(o => o.Username).FirstOrDefault()
                    where setting.SendNotification

                    select new tNotification
                    {
                        NotificationTypeId = setting.NotificationTypeId,
                        UserId = setting.UserId,
                        Message = "tagged you in a post",
                        ReferenceId = postToAdd.PostId,
                        ReferenceName = username,
                        CreatedDate = DateTime.Now
                    }).ToList();
                if (notifications != null && notifications.Any())
                {
                    Context.tNotifications.AddRange(notifications);
                    await Context.SaveChangesAsync();
                }

            }

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
            int tagPageSize = 8;
            var usersPosts =await
            (
                from post in Context.tPosts
                    .Include(o => o.PostContent)
                            .Include(o => o.PostTags).ThenInclude(o => o.Tag)
                            .Include(o => o.User)
                            .Include(o => o.PostUserTags).ThenInclude(o => o.User)
                let userTags = Context.tUserTags.Where(o => o.UserId == userId).Select(o => o.TagId).ToList()
                where post.PostTags.Any(o => userTags.Contains(o.TagId)) && post.UserId != userId && !post.IsDeleted
                let isLiked = Context.tPostLikes.Any(o => o.PostId == post.PostId && o.UserId == userId)
                let isSaved = Context.tPostSaves.Any(o => o.PostId == post.PostId && o.UserId == userId)
                orderby post.CreatedDate descending
                select new { post, isLiked, isSaved }
            ).Distinct().Skip(page * tagPageSize).Take(tagPageSize).ToListAsync();

            int newPageSize = 2;
            var newPosts = await
            (
                from post in Context.tPosts
                    .Include(o => o.PostContent)
                    .Include(o => o.PostTags).ThenInclude(o => o.Tag)
                    .Include(o => o.User)
                    .Include(o => o.PostUserTags).ThenInclude(o => o.User)
                let userTags = Context.tUserTags.Where(o => o.UserId == userId).Select(o => o.TagId).ToList()
                where !post.PostTags.Any(o => userTags.Contains(o.TagId)) && post.UserId != userId && !post.IsDeleted
                let isLiked = Context.tPostLikes.Any(o => o.PostId == post.PostId && o.UserId == userId)
                let isSaved = Context.tPostSaves.Any(o => o.PostId == post.PostId && o.UserId == userId)
                orderby post.CreatedDate descending
                select new { post, isLiked, isSaved }
            ).Distinct().Skip(page * newPageSize).Take(newPageSize).ToListAsync();

            var rawPosts = usersPosts.Union(newPosts).ToList();

            var posts = rawPosts.Select(post => new PostModel(post.post, post.isLiked, post.isSaved)).OrderByDescending(o => o.CreatedDate).ToList();

            return posts;
        }
        public async Task<List<PostModel>> GetPostsForUser(int userId, int page)
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
            return await SelectPosts(posts, userId, page).ToListAsync();
        }

        public async Task<List<PostModel>> GetPostsForUsername(int userId, string username, int page)
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
            return await SelectPosts(posts, userId, page).ToListAsync();
        }

        public async Task<List<PostModel>> GetTaggedPostsForUsername(int userId, string username, int page)
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
            return await SelectPosts(posts, userId, page).ToListAsync();
        }

        public async Task<List<PostModel>> GetSavedPostsForUser(int userId, int page)
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
            return await SelectPosts(posts, userId, page).ToListAsync(); ;
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
                    select new PostModel(post, isLiked, isSaved)
                ).Skip(page * pageSize).Take(pageSize).ToListAsync();
            return posts;
        }


        public async Task<List<PostModel>> GetFollowingPosts(int userId, int page)
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
            return await SelectPosts(posts, userId, page).ToListAsync(); ;
        }
        public async Task<List<PostModel>> GetPostsByTag(int userId, int tagId, int page)
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
            return await SelectPosts(posts, userId, page).ToListAsync(); ;
        }

        public async Task<List<PostModel>> SearchPosts(int userId, string searchTerm, int page)
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
            return await SelectPosts(posts, userId, page).ToListAsync(); ;
        }

        public async Task<PostModel> GetPost(int userId, int postId)
        {
            var post = await
            (
                from p in Context.tPosts
                    .Include(o => o.PostContent)
                    .Include(o => o.PostTags).ThenInclude(o => o.Tag)
                    .Include(o => o.User).Include(o => o.PostUserTags)
                    .ThenInclude(o => o.User)
                let isLiked = Context.tPostLikes.Any(o => o.PostId == p.PostId && o.UserId == userId)
                let isSaved = Context.tPostSaves.Any(o => o.PostId == p.PostId && o.UserId == userId)
                where p.PostId == postId
                select new PostModel(p, isLiked, isSaved)
            ).FirstOrDefaultAsync();
            return post;
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
                select new PostModel(post, isLiked, isSaved)
            ).Skip(page * pageSize).Take(pageSize);
            return posts;

        }
    }
}
