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
        public async Task CreateComment([FromBody] NewPostCommentModel newComment)
        {
            var comment = new tPostComment(newComment.PostId, newComment.UserId, newComment.CommentContent, DateTime.Now);
            await Context.tPostComments.AddAsync(comment);
            await Context.SaveChangesAsync();
        }

        public async Task<List<CommentModel>> GetCommentsForPost([FromQuery] int postId)
        {
            var comments = await Context.tPostComments.Include(o => o.User).Where(o => o.PostId == postId).Select(o => new CommentModel(o)).ToListAsync();
            return comments;
        }

        public async Task LikePost([FromQuery] int postId, [FromQuery] int userId)
        {
            var like = new tPostLike(postId, userId);
            await Context.tPostLikes.AddAsync(like);
            await Context.SaveChangesAsync();
        }

        public async Task UnlikePost([FromQuery] int postId, [FromQuery] int userId)
        {
            var like = await Context.tPostLikes.Where(o => o.PostId == postId && o.UserId == userId).FirstOrDefaultAsync();
            if(like != null)
            {
                Context.tPostLikes.Remove(like);
                await Context.SaveChangesAsync();
            }
        }

    }
}
