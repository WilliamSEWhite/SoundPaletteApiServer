using System.Text.Json;
using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.Models;
using SoundPaletteApiServer.Services;

namespace SoundPaletteApiServer.Controllers
{
    //this class acts as an entry point for all post related services
    public class PostController : BaseApiController
    {
        private readonly PostFacade postFacade;

        public PostController(PostFacade _postFacade)
        {
            postFacade = _postFacade;
        }
        // create a post with a file attachment
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
        public async Task<IActionResult> GetPostsForFeed([FromQuery] int userId, [FromQuery] int page)
        {
            return Ok(await postFacade.GetPostsForFeed(userId, page));
        }//end GetPostsForFeed

        //returns a list of posts that were created by the user with id userId
        [HttpGet("get-user-posts")]
        public async Task<IActionResult> GetPostsForUser([FromQuery] int userId, [FromQuery] int page)
        {
            return Ok(await postFacade.GetPostsForUser(userId, page));
        }//end GetPostsForUser

        //returns a list of posts that were created by the user with username
        [HttpGet("get-username-posts")]
        public async Task<IActionResult> GetPostsForUsername([FromQuery] int userId, [FromQuery] string username, [FromQuery] int page)
        {
            return Ok(await postFacade.GetPostsForUsername(userId, username, page));
        }//end GetPostsForUsername

        //returns a list of posts that a user has been tagged in
        [HttpGet("get-tagged-username-posts")]
        public async Task<IActionResult> GetTaggedPostsForUsername([FromQuery] int userId, [FromQuery] string username, [FromQuery] int page)
        {
            return Ok(await postFacade.GetTaggedPostsForUsername(userId, username, page));
        }//end GetTaggedPostsForUsername

        //return a list of posts that a user has saved
        [HttpGet("get-user-saved-posts")]
        public async Task<IActionResult> GetSavedPostsForUser([FromQuery] int userId, [FromQuery] int page)
        {
            return Ok(await postFacade.GetSavedPostsForUser(userId, page));
        }//end GetSavedPostsForUser

        //returns a list of posts from users that userId is following
        [HttpGet("get-following-posts")]
        public async Task<IActionResult> GetFollowingPosts([FromQuery] int userId, [FromQuery] int page)
        {
            return Ok(await postFacade.GetFollowingPosts(userId, page));
        }//end GetFollowingPosts

        //returns a list of posts that include a given tag
        [HttpGet("get-posts-by-tag")]
        public async Task<IActionResult> GetPostsByTag([FromQuery] int userId, [FromQuery] int tagId, [FromQuery] int page)
        {
            return Ok(await postFacade.GetPostsByTag(userId, tagId, page));
        }//end GetPostsByTag

        //returns a list of posts sorted by number of likes that have been created withing range
        [HttpGet("get-trending-posts")]
        public async Task<IActionResult> GetTrendingPosts([FromQuery] int userId, [FromQuery] string range, [FromQuery] int page)
        {
            return Ok(await postFacade.GetTrendingPosts(userId, range, page));
        }//end GetTrendingPosts

        //create post in database
        [HttpPost("create-post")]
        public async Task<IActionResult> CreatePost([FromBody] NewPostModel newPost)
        {
            await postFacade.CreatePost(newPost);
            return Ok();
        }//end CreatePost

        //mark post as deleted in database
        [HttpGet("delete-post")]
        public async Task<IActionResult> DeletePost([FromQuery] int postId, [FromQuery] int userId)
        {
            await postFacade.DeletePost(postId, userId);
            return Ok();
        }//end DeletePosts

        //return list of posts whos caption contains searchTerm
        [HttpGet("search-posts")]
        public async Task<IActionResult> SearchPosts([FromQuery] int userId, [FromQuery] string searchTerm, [FromQuery] int page)
        {
            var posts = await postFacade.SearchPosts(userId, searchTerm, page);
            return Ok(posts);
        }//end SearchPosts


        //returns post based on id
        [HttpGet("get-post")]
        public async Task<IActionResult> GetPost([FromQuery] int userId, [FromQuery] int postId)
        {
            var post = await postFacade.GetPost(userId, postId);
            return Ok(post);
        }//end GetPost

        // updates posts
        [HttpPost("update-post")]
        public async Task<IActionResult> UpdatePost([FromBody] PostModel postModel)
        {
            await postFacade.UpdatePost(postModel);
            return Ok();
        }
    }
}
