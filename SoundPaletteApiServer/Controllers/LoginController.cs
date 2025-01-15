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
        public async Task<IActionResult> TestLogin()
        {
            return Ok();
        }

        [HttpGet("login-user")]
        public async Task<IActionResult> LoginUser([FromQuery] string userName, [FromQuery] string password)
        {
            var user = await loginFacade.LoginUser(userName, password);
            return Ok(user);
        }

        [HttpGet("register")]
        public async Task<IActionResult> RegisterUser([FromQuery] string username, [FromQuery] string password)
        {
            var user = await loginFacade.RegisterUser(username, password);
            return Ok(user);
        }
    }
}
