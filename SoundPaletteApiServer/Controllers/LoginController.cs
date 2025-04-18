using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;

namespace SoundPaletteApiServer.Controllers
{
    //this class acts as an entry point for all login/registration related services
    public class LoginController : BaseApiController
    {
        private readonly LoginFacade loginFacade;

        public LoginController(LoginFacade _loginFacade)
        {
            loginFacade = _loginFacade;
        }

        //returns user model if username and passwords match what is in database
        [HttpGet("login-user")]
        public async Task<IActionResult> LoginUser([FromQuery] string userName, [FromQuery] string password)
        {
            var user = await loginFacade.LoginUser(userName, password);
            return Ok(user);
        }//end LoginUser

        //creates user in database and returns new usermodel
        [HttpGet("register")]
        public async Task<IActionResult> RegisterUser([FromQuery] string username, [FromQuery] string password)
        {
            var user = await loginFacade.RegisterUser(username, password);
            return Ok(user);
        }//end RegisterUser
    }
}
