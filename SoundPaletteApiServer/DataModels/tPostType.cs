using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
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
