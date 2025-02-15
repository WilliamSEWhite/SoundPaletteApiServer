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

        [HttpGet("get-user/{id}")]
        public async Task<IActionResult> LoginUser(int id)
        {
            var user = await userFacade.GetUser(id);
            return Ok(user);
        }

        [HttpPost("update-user-info")]
        public async Task<IActionResult> UpdateUserInfo([FromBody] UserInfoModel userInfo)
        {
            Console.WriteLine($"Received User Info:");
            Console.WriteLine($"UserID: {userInfo.UserId}");
            Console.WriteLine($"Email: {userInfo.Email}");
            Console.WriteLine($"Phone: {userInfo.Phone}");
            Console.WriteLine($"DOB: {userInfo.DOB}");
            Console.WriteLine($"DateCreated: {userInfo.DateCreated}");
            //Console.WriteLine($"LocationID: {userInfo.LocationId}");
            return Ok(await userFacade.UpdateUserInfo(userInfo));
        }
    }
}
