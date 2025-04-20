using Microsoft.AspNetCore.Mvc;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.Models;
using Amazon;
using Amazon.S3;
using Amazon.S3.Transfer;
using SoundPaletteApiServer.DbHelpers;
using SoundPaletteApiServer.Services;

namespace SoundPaletteApiServer.Controllers
{
    public class FileController : BaseApiController
    {
        private readonly FileFacade fileFacade;
        private readonly S3Service s3Service;

        public FileController(FileFacade _fileFacade, S3Service _s3Service)
        {
            fileFacade = _fileFacade;
            s3Service = _s3Service;
        }

        [HttpPost("upload-image")]
        public async Task<IActionResult> UploadProfileImage([FromForm] int FileTypeId,
            [FromForm] int UserId,
            [FromForm] string FileName,
            [FromForm] string FileUrl,
            IFormFile file)
        {
            var fileModel = new FileModel
            {
                FileTypeId = FileTypeId,
                UserId = UserId,
                FileName = FileName,
                FileUrl = FileUrl,
                CreatedDate = DateTime.Now,
                PublishDate = DateTime.Now,
                IsActive = true
            };
            if (fileModel == null || string.IsNullOrEmpty(fileModel.FileName))
            {
                return BadRequest("Invalid file");
            }
            await fileFacade.UploadProfileImage(fileModel, file);
            return Ok(fileModel.FileId);
        }

        [HttpGet("get-profile-image/{userId}")]
        public async Task<IActionResult> GetProfileImageAsync(int userId)
        {
            var fileData = await fileFacade.GetProfileImageAsync(userId);
            return Ok(fileData);
        }
    }
}
