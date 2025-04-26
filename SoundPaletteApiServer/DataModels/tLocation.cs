using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    //this class is used to insert and manifest entries in tLocation
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
