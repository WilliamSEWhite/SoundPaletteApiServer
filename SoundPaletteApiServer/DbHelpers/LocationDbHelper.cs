using Microsoft.EntityFrameworkCore;
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.DbHelpers
{
    public class LocationDbHelper : DbHelperBase
    {
        private readonly IConfiguration _configuration;

        public LocationDbHelper(SPContext context, IConfiguration configuration)
            : base(context)
        {
            _configuration = configuration;
        }

        public async Task<List<LocationModel>> GetLocations()
        {
            // get locations and return them in order by name
            return await Context.tLocations
                .OrderBy(o => o.LocationName)
                .Select(o => new LocationModel(o))
                .ToListAsync();
        }
    }
}
