using SoundPaletteApiServer.DbHelpers;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.Facade
{
    public class LocationFacade : FacadeBase
    {
        private readonly LocationDbHelper locationDbHelper;

        public LocationFacade(LocationDbHelper _locationDbHelper)
        {
            locationDbHelper = _locationDbHelper;
        }
        public async Task<List<LocationModel>> GetLocations()
        {
            return await locationDbHelper.GetLocations();

        }
    }
}
