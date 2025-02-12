using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;

namespace SoundPaletteApiServer.Controllers
{
    public class LocationController : BaseApiController
    {
        private readonly LocationFacade locationFacade;

        public LocationController(LocationFacade _locationFacade)
        {
            locationFacade = _locationFacade;
        }

        [HttpGet("get-locations")]
        public async Task<IActionResult> GetLocations()
        {
            return Ok(await locationFacade.GetLocations());
        }
    }
}
