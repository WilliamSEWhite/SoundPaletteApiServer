using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.DbHelpers;
using SoundPaletteApiServer.Models;
using SoundPaletteApiServer.Services;
using System.IO;
using System.Threading.Tasks;
using Amazon;
using Amazon.S3;
using Amazon.S3.Transfer;

namespace SoundPaletteApiServer.Facade
{
    public class FileFacade : FacadeBase
    {
        private readonly FileDbHelper fileDbHelper;
        private readonly S3Service s3Service;
        private readonly IConfiguration _configuration;

        public FileFacade(FileDbHelper _fileDbHelper, S3Service _s3Service, IConfiguration configuration)
        {
            fileDbHelper = _fileDbHelper;
            s3Service = _s3Service;
            _configuration = configuration;
        }

        /*public async Task<string> UploadFileAsync(IFormFile file)
        {
            using var stream = file.OpenReadStream();
            var filename = file.FileName;

            string fileUrl = await s3Service.UploadFileAsync(stream, filename);
            await fileDbHelper.saveFileUrlAsync(filename, fileUrl);

            return fileUrl;
        }*/

        public async Task UploadProfileImage(FileModel fileModel, IFormFile file)
        {
            // upload file to S3
            using var stream = file.OpenReadStream();
            string url = await s3Service.UploadProfileImageAsync(stream, file.FileName);
            fileModel.FileName = file.FileName;
            fileModel.FileUrl = url;
            Console.WriteLine($"[FileDbHelper] Returning FileUrl for user {fileModel.UserId}: {url}");
            await fileDbHelper.UploadProfileImage(fileModel);
        }

        public async Task<FileHelper> GetProfileImageAsync(int userId)
        {
            // contstruct URL from config and filename
            //var s3BaseUrl = _configuration["AWS:S3BaseUrl"];
            //var s3Folder = _configuration["AWS:S3ProfileImages"];
            var fileRecord = await fileDbHelper.GetProfileImageMetadataAsync(userId);
            //var fileUrl = $"{s3BaseUrl}{s3Folder}{fileRecord.FileName}";
            var fileUrl = fileRecord.FileUrl;

            if (fileRecord == null || string.IsNullOrEmpty(fileUrl))
            {
                return null;
            }
            return await s3Service.DownloadFileAsync(fileUrl);
        }
    }
}
