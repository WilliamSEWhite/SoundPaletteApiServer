﻿using Microsoft.AspNetCore.Mvc;
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

        [HttpGet("delete-post")]
        public async Task<IActionResult> DeletePost([FromQuery] int postId, [FromQuery] int userId)
        {
            await postFacade.DeletePost(postId, userId);
            return Ok();
        }

        public async Task<IActionResult> UpdatePost()
        {

            return Ok();
        }
    }
}
