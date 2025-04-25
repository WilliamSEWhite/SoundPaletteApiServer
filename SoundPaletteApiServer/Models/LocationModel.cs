using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    //class represents a location selected by user during registration
    public class LocationModel
    {
        public int LocationId { get; set; }
        public string LocationName { get; set; }

        //constructor to initialize all values, used to serialize/deserialize JSON
        public LocationModel(int locationId, string locationName)
        {
            LocationId = locationId;
            LocationName = locationName;
        }
        
        //constructor used to manifest location from database
        public LocationModel(tLocation location)
        {
            LocationId = location.LocationId;
            LocationName = location.LocationName;
        }
    }
}
