using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Controllers
{
    public class UserController : BaseApiController
    {
        private readonly UserFacade userFacade;

        public UserController(UserFacade _userFacade)
        {
            userFacade = _userFacade;
        }

        /** user */
        [HttpGet("get-user/{id}")]
        public async Task<IActionResult> LoginUser(int id)
        {
            var user = await userFacade.GetUser(id);
            return Ok(user);
        }

        /** user info */
        [HttpPost("update-user-info/{id}")]
        public async Task<IActionResult> UpdateUserInfo(int id, [FromBody] UserInfoModel userInfo)
        {
            return Ok(await userFacade.UpdateUserInfo(id, userInfo));
        }
        
        [HttpGet("get-user-info/{id}")]
        public async Task<IActionResult> GetUserInfo(int id)
        {
            var userInfo = await userFacade.getUserInfo(id);
            return Ok(userInfo);
        }
        
        /** user profile */
        [HttpGet("get-user-profile/{id}")]
        public async Task<IActionResult> GetUserProfile(int id)
        {
            var userProfile = await userFacade.GetUserProfileInfo(id);
            return Ok(userProfile);
        }
        /** user profile */
        [HttpGet("get-user-profile-by-username/{username}")]
        public async Task<IActionResult> GetUserProfileByUsername(string username, [FromQuery] int userId)
        {
            var userProfile = await userFacade.GetUserProfileByUsername(userId, username);
            return Ok(userProfile);
        }
        [HttpPost("update-user-profile")]
        public async Task<IActionResult> UpdateUserProfileInfo([FromBody] UserProfileModel userProfile)
        {
            return Ok(await userFacade.UpdateUserProfileInfo(userProfile));
        }

        [HttpGet("follow-user")]
        public async Task<IActionResult> FollowUser([FromQuery] int followerId, [FromQuery] string followingUsername)
        {
            await userFacade.FollowUser(followerId, followingUsername);
            return Ok();
        }

        [HttpGet("unfollow-user")]
        public async Task<IActionResult> UnfollowUser([FromQuery] int followerId, [FromQuery] string followingUsername)
        {
            await userFacade.UnfollowUser(followerId, followingUsername);
            return Ok();
        }
        [HttpGet("search-users")]
        public async Task<IActionResult> SearchUsers([FromQuery] string searchTerm)
        {
            var users = await userFacade.SearchUsers(searchTerm);
            return Ok(users);
        }
    }
}
