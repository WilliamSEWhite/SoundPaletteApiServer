using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    //this class is used to insert and manifest entries in tPostType
    public class tPostType
    {
        [Key]
        public int PostTypeId { get; set; }
        public string PostTypeName { get; set; }

        public tPostType(string postTypeName)
        {
            PostTypeName = postTypeName;
        }
    }
}
