using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels

{
    public class tFileType
    {
        [Key]
        public int FileTypeId { get; set; }
        public string FileTypeName { get; set; }
    }
}
