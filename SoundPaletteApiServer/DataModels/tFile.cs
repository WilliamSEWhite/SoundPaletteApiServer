using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tFile
    {
        [Key]
        public int FileId { get; set; }
        public int FileTypeId { get; set; }
        public int UserId { get; set; }
        public string FileName { get; set; }
        public string FileUrl { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime PublishDate { get; set; }
        public bool IsActive { get; set; }

        public tFileType FileType { get; set; }
        public tUser User { get; set; }
    }
}
