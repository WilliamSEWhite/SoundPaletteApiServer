using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;

namespace SoundPaletteApiServer.Controllers
{
    //this class acts as an entry point for all location related services
    public class LocationController : BaseApiController
    {
        private readonly LocationFacade locationFacade;

        public LocationController(LocationFacade _locationFacade)
        {
            locationFacade = _locationFacade;
        }

        //returns a list of all locations
        [HttpGet("get-locations")]
        public async Task<IActionResult> GetLocations()
        {
            return Ok(await locationFacade.GetLocations());
        }//end GetLocations
    }
}
