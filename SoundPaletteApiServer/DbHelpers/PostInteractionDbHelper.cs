using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.DataModels;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.DbHelpers
{
    public class PostInteractionDbHelper : DbHelperBase
    {
        private readonly IConfiguration _configuration;

        public PostInteractionDbHelper(SPContext context, IConfiguration configuration) : base(context)
        {
            _configuration = configuration;

        }

        //create new comment on post in database
        public async Task CreateComment(NewPostCommentModel newComment)
        {
            //make comment
            var comment = new tPostComment(newComment.PostId, newComment.UserId, newComment.CommentContent, DateTime.Now);
            await Context.tPostComments.AddAsync(comment);

            //make notification for comment
            var notification = await
            (
                from notificationSetting in Context.tNotificationSettings.Include(o => o.NotificationType)
                where notificationSetting.NotificationType.Description == "Comment" && notificationSetting.SendNotification
                let username = Context.tUsers.Where(o => o.UserId == newComment.UserId).Select(o => o.Username).FirstOrDefault()
                let postUserId = Context.tPosts.Where(o => o.PostId == newComment.PostId).Select(o => o.UserId).FirstOrDefault()
                select new tNotification
                {
                    NotificationTypeId = notificationSetting.NotificationTypeId,
                    UserId = postUserId,
                    Message = "commented on your post",
                    ReferenceId = newComment.PostId,
                    ReferenceName = username,
                    CreatedDate = DateTime.Now,
                    AppIsActive = true,
                    DeviceIsActive = true

                }
            ).FirstOrDefaultAsync();

            //if the notification is not null, insert in database
            if (notification != null)
                Context.tNotifications.Add(notification);

            await Context.SaveChangesAsync();
        }//end CreateComment

        //return all comments for one post
        public async Task<List<CommentModel>> GetCommentsForPost(int postId)
        {
            var comments = await Context.tPostComments.Include(o => o.User).Where(o => o.PostId == postId).Select(o => new CommentModel(o)).ToListAsync();
            return comments;
        }//end GetCommentsForPost

        //mark post as liked by user in database
        public async Task LikePost(int postId, int userId)
        {
            var like = new tPostLike(postId, userId);
            await Context.tPostLikes.AddAsync(like);

            //make notification for liked post based on notification settings
            var notification = await
            (
                from notificationSetting in Context.tNotificationSettings.Include(o => o.NotificationType)
                where notificationSetting.NotificationType.Description == "Like" && notificationSetting.SendNotification
                let username = Context.tUsers.Where(o => o.UserId == userId).Select(o => o.Username).FirstOrDefault()
                let postUserId = Context.tPosts.Where(o => o.PostId == postId).Select(o => o.UserId).FirstOrDefault()
                select new tNotification
                {
                    NotificationTypeId = notificationSetting.NotificationTypeId,
                    UserId = postUserId,
                    Message = "liked your post",
                    ReferenceId = userId,
                    ReferenceName = username,
                    CreatedDate = DateTime.Now,
                    AppIsActive = true,
                    DeviceIsActive = true

                }
            ).FirstOrDefaultAsync();

            //if notification is not null, insert
            if (notification != null)
                Context.tNotifications.Add(notification);

            await Context.SaveChangesAsync();
        }//end LikePost

        //unlike post in database
        public async Task UnlikePost(int postId, int userId)
        {
            var like = await Context.tPostLikes.Where(o => o.PostId == postId && o.UserId == userId).FirstOrDefaultAsync();
            if (like != null)
            {
                Context.tPostLikes.Remove(like);
                await Context.SaveChangesAsync();
            }
        }//end UnlikePost

        //save post for user
        public async Task SavePost(int postId, int userId)
        {
            var save = new tPostSave(postId, userId);
            await Context.tPostSaves.AddAsync(save);
            await Context.SaveChangesAsync();
        }//end SavePost

        //unsave post for user
        public async Task UnsavePost(int postId, int userId)
        {
            var save = await Context.tPostSaves.Where(o => o.PostId == postId && o.UserId == userId).FirstOrDefaultAsync();
            if (save != null)
            {
                Context.tPostSaves.Remove(save);
                await Context.SaveChangesAsync();
            }
        }//end UnsavePost

    }
}
