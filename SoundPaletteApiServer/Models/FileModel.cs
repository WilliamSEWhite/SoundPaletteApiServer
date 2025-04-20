using Amazon.Runtime.Internal.Util;
using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    public class FileModel
    {
        public int FileId { get; set; }
        public int FileTypeId { get; set; }
        public int UserId { get; set; }
        public string FileName { get; set; }
        public string FileUrl { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime PublishDate { get; set; }
        public bool IsActive { get; set; }

        public FileModel() { }

        public FileModel(int fileId, int fileTypeId, int userId, string fileName, string fileUrl, DateTime createdDate, DateTime publishDate, bool isActive)
        {
            FileId = fileId;
            FileTypeId = fileTypeId;
            UserId = userId;
            FileName = fileName;
            FileUrl = fileUrl;
            CreatedDate = createdDate;
            PublishDate = publishDate;
            IsActive = isActive;
        }
    }
}
