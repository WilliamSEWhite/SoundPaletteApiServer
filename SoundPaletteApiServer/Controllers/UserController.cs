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

        [HttpPost("update-user-info/{id}")]
        public async Task<IActionResult> UpdateUserInfo(int id, [FromBody] UserInfoModel userInfo)
        {
            return Ok(await userFacade.UpdateUserInfo(id, userInfo));
        }
    }
}
