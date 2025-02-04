using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tLocation
    {
        [Key]
        public int LocationId { get; set; }
        public string LocationName { get; set; }

        public tLocation(string locationName)
        {
            LocationName = locationName;
        }
    }
}
