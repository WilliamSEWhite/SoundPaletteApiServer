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

        public async Task CreateComment(NewPostCommentModel newComment)
        {
            await postInteractionDbHelper.CreateComment(newComment);
        }

        public async Task<List<CommentModel>> GetCommentsForPost(int postId)
        {
            var comments = await postInteractionDbHelper.GetCommentsForPost(postId);
            return comments;
        }

        public async Task LikePost(int postId, int userId)
        {
            await postInteractionDbHelper.LikePost(postId, userId);
        }


        public async Task UnlikePost(int postId, int userId)
        {
            await postInteractionDbHelper.UnlikePost(postId, userId);
        }
        public async Task SavePost(int postId, int userId)
        {
            await postInteractionDbHelper.SavePost(postId, userId);
        }


        public async Task UnsavePost(int postId, int userId)
        {
            await postInteractionDbHelper.UnsavePost(postId, userId);
        }
    }
}
