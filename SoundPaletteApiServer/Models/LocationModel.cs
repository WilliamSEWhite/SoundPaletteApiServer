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

    }
}
