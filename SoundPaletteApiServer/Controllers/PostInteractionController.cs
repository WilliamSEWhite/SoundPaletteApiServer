using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Controllers
{
    public class PostInteractionController : BaseApiController
    {
        private readonly PostInteractionFacade postInterationFacade;

        public PostInteractionController(PostInteractionFacade _postInterationFacade)
        {
            postInterationFacade = _postInterationFacade;
        }

        [HttpPost("create-comment")]
        public async Task<IActionResult> CreateComment([FromBody] NewPostCommentModel newComment)
        {
            await postInterationFacade.CreateComment(newComment);
            return Ok();
        }
        [HttpGet("get-post-comments")]
        public async Task<IActionResult> GetCommentsForPost([FromQuery] int postId)
        {
            var comments = await postInterationFacade.GetCommentsForPost(postId);
            return Ok(comments);
        }
        [HttpGet("like-post")]
        public async Task<IActionResult> LikePost([FromQuery] int postId, [FromQuery] int userId)
        {
            await postInterationFacade.LikePost(postId, userId);
            return Ok();
        }

        [HttpGet("unlike-post")]
        public async Task<IActionResult> UnlikePost([FromQuery] int postId, [FromQuery] int userId)
        {
            await postInterationFacade.UnlikePost(postId, userId);
            return Ok();
        }

        [HttpGet("save-post")]
        public async Task<IActionResult> SavePost([FromQuery] int postId, [FromQuery] int userId)
        {
            await postInterationFacade.SavePost(postId, userId);
            return Ok();
        }

        [HttpGet("unsave-post")]
        public async Task<IActionResult> UnsavePost([FromQuery] int postId, [FromQuery] int userId)
        {
            await postInterationFacade.UnsavePost(postId, userId);
            return Ok();
        }
    }
}
