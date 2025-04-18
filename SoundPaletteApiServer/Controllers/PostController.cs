using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.Models;

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

        //returns a list of posts to be displayed in Home/Explore
        [HttpGet("get-feed")]
        public async Task<IActionResult> GetPostsForFeed([FromQuery] int userId)
        {
            return Ok(await postFacade.GetPostsForFeed(userId));
        }//end GetPostsForFeed

        //returns a list of posts that were created by the user with id userId
        [HttpGet("get-user-posts")]
        public async Task<IActionResult> GetPostsForUser([FromQuery] int userId)
        {
            return Ok(await postFacade.GetPostsForUser(userId));
        }//end GetPostsForUser

        //returns a list of posts that were created by the user with username
        [HttpGet("get-username-posts")]
        public async Task<IActionResult> GetPostsForUsername([FromQuery] int userId, [FromQuery] string username)
        {
            return Ok(await postFacade.GetPostsForUsername(userId, username));
        }//end GetPostsForUsername

        //returns a list of posts that a user has been tagged in
        [HttpGet("get-tagged-username-posts")]
        public async Task<IActionResult> GetTaggedPostsForUsername([FromQuery] int userId, [FromQuery] string username)
        {
            return Ok(await postFacade.GetTaggedPostsForUsername(userId, username));
        }//end GetTaggedPostsForUsername

        //return a list of posts that a user has saved
        [HttpGet("get-user-saved-posts")]
        public async Task<IActionResult> GetSavedPostsForUser([FromQuery] int userId)
        {
            return Ok(await postFacade.GetSavedPostsForUser(userId));
        }//end GetSavedPostsForUser

        //returns a list of posts from users that userId is following
        [HttpGet("get-following-posts")]
        public async Task<IActionResult> GetFollowingPosts([FromQuery] int userId)
        {
            return Ok(await postFacade.GetFollowingPosts(userId));
        }//end GetFollowingPosts

        //returns a list of posts that include a given tag
        [HttpGet("get-posts-by-tag")]
        public async Task<IActionResult> GetPostsByTag([FromQuery] int userId, [FromQuery] int tagId)
        {
            return Ok(await postFacade.GetPostsByTag(userId, tagId));
        }//end GetPostsByTag

        //returns a list of posts sorted by number of likes that have been created withing range
        [HttpGet("get-trending-posts")]
        public async Task<IActionResult> GetTrendingPosts([FromQuery] int userId, [FromQuery] string range)
        {
            return Ok(await postFacade.GetTrendingPosts(userId, range));
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
        public async Task<IActionResult> SearchPosts([FromQuery] int userId, [FromQuery] string searchTerm)
        {
            var posts = await postFacade.SearchPosts(userId, searchTerm);
            return Ok(posts);
        }//end SearchPosts

        public async Task<IActionResult> UpdatePost()
        {

            return Ok();
        }
    }
}
