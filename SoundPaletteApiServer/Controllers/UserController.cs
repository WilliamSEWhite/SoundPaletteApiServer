using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.DataModels;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Controllers
{
    //this class acts as an entry point for all user related services
    public class UserController : BaseApiController
    {
        private readonly UserFacade userFacade;

        public UserController(UserFacade _userFacade)
        {
            userFacade = _userFacade;
        }

        /** return a user by their Id */
        [HttpGet("get-user/{id}")]
        public async Task<IActionResult> GetUser(int id)
        {
            var user = await userFacade.GetUser(id);
            return Ok(user);
        }//end GetUser

        //return a user by their username
        [HttpGet("get-user-by-name/{userName}")]
        public async Task<IActionResult> GetUserByName(string userName)
        {
            var user = await userFacade.GetUserByName(userName);
            return Ok(user);
        }//end GetUserByName

        /** Update users info in database */
        [HttpPost("update-user-info/{id}")]
        public async Task<IActionResult> UpdateUserInfo(int id, [FromBody] UserInfoModel userInfo)
        {
            return Ok(await userFacade.UpdateUserInfo(id, userInfo));
        }//end UpdateUserInfo

        //return user info based on Id
        [HttpGet("get-user-info/{id}")]
        public async Task<IActionResult> GetUserInfo(int id)
        {
            var userInfo = await userFacade.getUserInfo(id);
            return Ok(userInfo);
        }//end GetUserInfo

        /** return user profile by Id */
        [HttpGet("get-user-profile/{id}")]
        public async Task<IActionResult> GetUserProfile(int id)
        {
            var userProfile = await userFacade.GetUserProfileInfo(id);
            return Ok(userProfile);
        }//end GetUserProfile

        /** return user profile by username */
        [HttpGet("get-user-profile-by-username/{username}")]
        public async Task<IActionResult> GetUserProfileByUsername(string username, [FromQuery] int userId)
        {
            var userProfile = await userFacade.GetUserProfileByUsername(userId, username);
            return Ok(userProfile);
        }//end GetUserProfileByUsername

        //update user profile in database
        [HttpPost("update-user-profile")]
        public async Task<IActionResult> UpdateUserProfileInfo([FromBody] UserProfileModel userProfile)
        {
            return Ok(await userFacade.UpdateUserProfileInfo(userProfile));
        }//end UpdateUserProfileInfo

        //create follower relation where followerId is following followingUsername
        [HttpGet("follow-user")]
        public async Task<IActionResult> FollowUser([FromQuery] int followerId, [FromQuery] string followingUsername)
        {
            await userFacade.FollowUser(followerId, followingUsername);
            return Ok();
        }//end FollowUser

        //delete follower relation where followerId is following followingUsername
        [HttpGet("unfollow-user")]
        public async Task<IActionResult> UnfollowUser([FromQuery] int followerId, [FromQuery] string followingUsername)
        {
            await userFacade.UnfollowUser(followerId, followingUsername);
            return Ok();
        }//end UnfollowUser

        //return a list of usernames that contain searchTerm
        [HttpGet("search-users-lite")]
        public async Task<IActionResult> SearchUsersLite([FromQuery] int userId, [FromQuery] string searchTerm)
        {
            var users = await userFacade.SearchUsersLite(userId, searchTerm);
            return Ok(users);
        }//end SearchUsersLite

        //return list of users for search tab
        [HttpGet("search-users")]
        public async Task<IActionResult> SearchUsers([FromQuery] int userId, [FromQuery] string searchTerm)
        {
            var users = await userFacade.SearchUsers(userId, searchTerm);
            return Ok(users);
        }//end SearchUsers
    }
}
