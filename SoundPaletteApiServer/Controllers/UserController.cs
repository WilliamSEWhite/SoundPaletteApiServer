using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;

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
            var user = await userFacade.getUser(id);
            return Ok(user);
        }
    }
}
