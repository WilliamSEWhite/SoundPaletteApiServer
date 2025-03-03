using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.DbHelpers;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Facade
{
    public class PostInteractionFacade : FacadeBase
    {
        private readonly PostInteractionDbHelper postInteractionDbHelper;

        public PostInteractionFacade(PostInteractionDbHelper _postInteractionDbHelper)
        {
            postInteractionDbHelper = _postInteractionDbHelper;
        }

        public async Task CreateComment([FromBody] NewPostCommentModel newComment)
        {
            await postInteractionDbHelper.CreateComment(newComment);
        }

        public async Task<List<CommentModel>> GetCommentsForPost([FromQuery] int postId)
        {
            var comments = await postInteractionDbHelper.GetCommentsForPost(postId);
            return comments;
        }

        public async Task LikePost([FromQuery] int postId, [FromQuery] int userId)
        {
            await postInteractionDbHelper.LikePost(postId, userId);
        }


        public async Task UnlikePost([FromQuery] int postId, [FromQuery] int userId)
        {
            await postInteractionDbHelper.UnlikePost(postId, userId);
        }
    }
}
