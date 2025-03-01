using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Controllers
{
    public class PostController : BaseApiController
    {
        private readonly PostFacade postFacade;

        public PostController(PostFacade _postFacade)
        {
            postFacade = _postFacade;
        }

        public async Task<IActionResult> GetPosts()
        {
            return Ok();
        }
        public async Task<IActionResult> SearchPosts()
        {
            return Ok();
        }

        [HttpPost("create-post")]
        public async Task<IActionResult> CreatePost([FromBody] NewPostModel newPost)
        {
            await postFacade.CreatePost(newPost);
            return Ok();
        }
        public async Task<IActionResult> UpdatePost()
        {

            return Ok();
        }
    }
}
