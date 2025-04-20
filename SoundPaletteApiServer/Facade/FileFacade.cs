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

        /** uploads the profile image */
        public async Task UploadProfileImage(FileModel fileModel, IFormFile file)
        {
            // upload file to S3
            using var stream = file.OpenReadStream();
            string url = await s3Service.UploadFileAsync(stream, file.FileName);
            fileModel.FileName = file.FileName;
            fileModel.FileUrl = url;
            // save metadata to database
            await fileDbHelper.UploadProfileImage(fileModel);
        }

        /** gets the profile image */
        public async Task<FileHelper> GetProfileImageAsync(int userId)
        {
            var fileRecord = await fileDbHelper.GetProfileImageMetadataAsync(userId);
            var fileUrl = fileRecord.FileUrl;

            if (fileRecord == null || string.IsNullOrEmpty(fileUrl))
            {
                return null;
            }
            return await s3Service.DownloadFileAsync(fileUrl);
        }

        /** gets the post file */
        public async Task<FileHelper> GetPostFileAsync(int fileId)
        {
            var fileRecord = await fileDbHelper.GetPostFileMetadataAsync(fileId);
            var fileUrl = fileRecord.FileUrl;

            if (fileRecord == null || string.IsNullOrEmpty(fileUrl))
            {
                return null;
            }
            return await s3Service.DownloadFileAsync(fileUrl);
        }
    }
}
