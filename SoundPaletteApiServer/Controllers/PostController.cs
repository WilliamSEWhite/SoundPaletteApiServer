using System.Text.Json;
using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.Models;
using SoundPaletteApiServer.Services;

namespace SoundPaletteApiServer.Controllers
{
    public class PostController : BaseApiController
    {
        private readonly PostFacade postFacade;

        public PostController(PostFacade _postFacade)
        {
            postFacade = _postFacade;
        }

        [HttpPost("create-file-post")]
        public async Task<IActionResult> CreateFilePost(IFormFile file, [FromForm] string metaData)
        {
            Console.WriteLine("Raw metadata String: ");
            Console.WriteLine("Metadata: " + metaData);

            if (file == null || string.IsNullOrWhiteSpace(metaData))
                return BadRequest("Missing file or metadata.");

            PostFileModel parsedMetaData;
            try
            {
                parsedMetaData = JsonSerializer.Deserialize<PostFileModel>(metaData, new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true,
                    PropertyNamingPolicy = JsonNamingPolicy.CamelCase
                });

                if (parsedMetaData == null || parsedMetaData.FileModel == null || parsedMetaData.NewPostModel == null)
                    return BadRequest("Metadata is incomplete.");
            }
            catch (Exception ex)
            {
                return BadRequest("Invalid metadata: " + ex.Message);
            }

            await postFacade.CreateFilePost(file, parsedMetaData);
            return Ok(1);
        }

        [HttpGet("get-feed")]
        public async Task<IActionResult> GetPostsForFeed([FromQuery] int userId)
        {
            return Ok(await postFacade.GetPostsForFeed(userId));
        }
        [HttpGet("get-user-posts")]
        public async Task<IActionResult> GetPostsForUser([FromQuery] int userId)
        {
            return Ok(await postFacade.GetPostsForUser(userId));
        }
        [HttpGet("get-username-posts")]
        public async Task<IActionResult> GetPostsForUsername([FromQuery] int userId, [FromQuery] string username)
        {
            return Ok(await postFacade.GetPostsForUsername(userId, username));
        }

        [HttpGet("get-tagged-username-posts")]
        public async Task<IActionResult> GetTaggedPostsForUsername([FromQuery] int userId, [FromQuery] string username)
        {
            return Ok(await postFacade.GetTaggedPostsForUsername(userId, username));
        }

        [HttpGet("get-user-saved-posts")]
        public async Task<IActionResult> GetSavedPostsForUser([FromQuery] int userId)
        {
            return Ok(await postFacade.GetSavedPostsForUser(userId));
        }
        [HttpGet("get-following-posts")]
        public async Task<IActionResult> GetFollowingPosts([FromQuery] int userId)
        {
            return Ok(await postFacade.GetFollowingPosts(userId));
        }

        [HttpGet("get-posts-by-tag")]
        public async Task<IActionResult> GetPostsByTag([FromQuery] int userId, [FromQuery] int tagId)
        {
            return Ok(await postFacade.GetPostsByTag(userId, tagId));
        }



        [HttpGet("get-trending-posts")]
        public async Task<IActionResult> GetTrendingPosts([FromQuery] int userId, [FromQuery] string range)
        {
            return Ok(await postFacade.GetTrendingPosts(userId, range));
        }

        [HttpPost("create-post")]
        public async Task<IActionResult> CreatePost([FromBody] NewPostModel newPost)
        {
            await postFacade.CreatePost(newPost);
            return Ok();
        }

        [HttpGet("delete-post")]
        public async Task<IActionResult> DeletePost([FromQuery] int postId, [FromQuery] int userId)
        {
            await postFacade.DeletePost(postId, userId);
            return Ok();
        }

        [HttpGet("search-posts")]
        public async Task<IActionResult> SearchPosts([FromQuery] int userId, [FromQuery] string searchTerm)
        {
            var posts = await postFacade.SearchPosts(userId, searchTerm);
            return Ok(posts);
        }
        public async Task<IActionResult> UpdatePost()
        {

            return Ok();
        }
    }
}
