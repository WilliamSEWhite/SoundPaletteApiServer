using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.VisualBasic.FileIO;
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.DataModels;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.DbHelpers
{
    public class FileDbHelper : DbHelperBase
    {
        private readonly IConfiguration _configuration;

        public FileDbHelper(SPContext context, IConfiguration configuration) : base(context)
        {
            _configuration = configuration;
        }

        /** upload file metadata to the database */
        public async Task<int> UploadFile(FileModel fileModel)
        {
            var fileToAdd = new tFile()
            {
                FileTypeId = fileModel.FileTypeId,
                UserId = fileModel.UserId,
                FileName = fileModel.FileName,
                FileUrl = fileModel.FileUrl,
                CreatedDate = DateTime.Now,
                PublishDate = DateTime.Now,
                IsActive = true,
            };

            Context.tFiles.Add(fileToAdd);
            await Context.SaveChangesAsync();

            return fileToAdd.FileId;
        }

        /** insert profile image metadata into the database */
        public async Task UploadProfileImage(FileModel fileModel)
        {

            // mark existing file as inactive
            var existingImage = await Context.tFiles
                .Where(f => f.UserId == fileModel.UserId && f.FileTypeId == 4 && f.IsActive)
                .FirstOrDefaultAsync();
            if (existingImage != null)
            {
                existingImage.IsActive = false;
            }
            // the new file
            var fileToAdd = new tFile()
            {
                //FileId = fileModel.FileId,
                FileTypeId = fileModel.FileTypeId,
                UserId = fileModel.UserId,
                FileName = fileModel.FileName,
                FileUrl = fileModel.FileUrl,
                CreatedDate = DateTime.Now,
                PublishDate = DateTime.Now,
                IsActive = true,
            };
            // insert into tFiles
            Context.tFiles.Add(fileToAdd);
            await Context.SaveChangesAsync();
            // update tUserProfiles
            var userProfile = await Context.tUserProfile
                .FirstOrDefaultAsync(u => u.UserId == fileModel.UserId);
            if(userProfile != null)
            {
                userProfile.Picture = fileModel.FileUrl;
                await Context.SaveChangesAsync();
            }
        }

        /** get metadata for user profile image */
        public async Task<FileModel> GetProfileImageMetadataAsync(int userId)
        {
            var fileEntity = await Context.tFiles
                .AsNoTracking()
                .Where(f => f.UserId == userId && f.FileTypeId == 4 && f.IsActive)
                .FirstOrDefaultAsync(f => f.UserId == userId);

            if (fileEntity == null)
            {
                //return null;
                return new FileModel
                {
                    FileId = 0,
                    FileTypeId = 4,
                    UserId = userId,
                    FileName = "/dev/null/",
                    FileUrl = "/dev/null/",
                    CreatedDate = DateTime.Now,
                    PublishDate = DateTime.Now,
                    IsActive = true
                };
            }
            // return the file metadata
            return new FileModel
            {
                FileId = fileEntity.FileId,
                FileTypeId = fileEntity.FileTypeId,
                UserId = fileEntity.UserId,
                FileName = fileEntity.FileName,
                FileUrl = fileEntity.FileUrl,
                CreatedDate = fileEntity.CreatedDate,
                PublishDate = fileEntity.PublishDate,
                IsActive = fileEntity.IsActive,
            };
        }

        /** get metadata for post file */
        public async Task<FileModel> GetPostFileMetadataAsync(int fileId)
        {
            var fileEntity = await Context.tFiles
                .AsNoTracking()
                .Where(f => f.FileId == fileId && (f.FileTypeId == 2 || f.FileTypeId == 3) && f.IsActive)
                .FirstOrDefaultAsync();

            if (fileEntity == null)
            {
                return new FileModel
                {
                    FileId = 0,
                    FileTypeId = 4,
                    UserId = 0,
                    FileName = "/dev/null/",
                    FileUrl = "/dev/null/",
                    CreatedDate = DateTime.Now,
                    PublishDate = DateTime.Now,
                    IsActive = true
                };
            }
            return new FileModel
            {
                FileId = fileEntity.FileId,
                FileTypeId = fileEntity.FileTypeId,
                UserId = fileEntity.UserId,
                FileName = fileEntity.FileName,
                FileUrl = fileEntity.FileUrl,
                CreatedDate = fileEntity.CreatedDate,
                PublishDate = fileEntity.PublishDate,
                IsActive = fileEntity.IsActive
            };
        }
    }
}
