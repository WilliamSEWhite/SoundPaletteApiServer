using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;

namespace SoundPaletteApiServer.Controllers
{
    public class LoginController : BaseApiController
    {
        private readonly LoginFacade loginFacade;

        public LoginController(LoginFacade _loginFacade)
        {
            loginFacade = _loginFacade;
        }

        [HttpGet]
        public async Task<IActionResult> LoginUser([FromQuery] string userName, [FromQuery] string password)
        {
            return Ok();
        }

        [HttpGet("register")]
        public async Task<IActionResult> RegisterUser([FromQuery] string userName, [FromQuery] string password)
        {
            return Ok();
        }
    }
}
