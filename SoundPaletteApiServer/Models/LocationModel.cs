using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    public class LocationModel
    {
        public int LocationId { get; set; }
        public string LocationName { get; set; }

        public LocationModel(int locationId, string locationName)
        {
            LocationId = locationId;
            LocationName = locationName;
        }
        public LocationModel(tLocation location)
        {
            LocationId = location.LocationId;
            LocationName = location.LocationName;
        }
    }
}
