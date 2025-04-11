using Amazon;
using Amazon.S3;
using Amazon.S3.Model;
using Amazon.S3.Transfer;
using Microsoft.AspNetCore.Routing.Constraints;
using System;
using System.IO;
using System.Threading.Tasks;
using ThirdParty.BouncyCastle.Asn1;

namespace SoundPaletteApiServer.Services
{ 
    public class S3Service
    {
        private readonly IConfiguration _configuration;
        private readonly string bucketName;
        private readonly RegionEndpoint regionEndpoint;
        private readonly IAmazonS3 s3Client;

        /** constructor connects to S3 */
        public S3Service(IConfiguration configuration)
        {
            _configuration = configuration;
            // get S3 credentials from environment variables (development)
            var accessKey = Environment.GetEnvironmentVariable("AWS_ACCESS_KEY_ID");
            var secretKey = Environment.GetEnvironmentVariable("AWS_SECRET_ACCESS_KEY");
            var regionName = Environment.GetEnvironmentVariable("AWS_REGION");
            bucketName = Environment.GetEnvironmentVariable("AWS_BUCKET_NAME");

            if (string.IsNullOrEmpty(accessKey) || string.IsNullOrEmpty(secretKey) || string.IsNullOrEmpty(bucketName))
            {
                throw new Exception("Missing AWS information");
            }

            regionEndpoint = RegionEndpoint.GetBySystemName(regionName ?? "us-east-2");
            s3Client = new AmazonS3Client(accessKey, secretKey, regionEndpoint);
        }

        /** uploads profile image to S3 */
        public async Task<string> UploadProfileImageAsync(Stream inputStream, string fileName)
        {
            // contstruct URL from config and filename
            var s3BaseUrl = _configuration["AWS:S3BaseUrl"];
            var s3Folder = _configuration["AWS:S3ProfileImages"];
            var uploadRequest = new TransferUtilityUploadRequest
            {
                InputStream = inputStream,
                Key = $"{s3Folder}{Guid.NewGuid().ToString()}_{fileName}",
                BucketName = bucketName,
            };
            var transferUtility = new TransferUtility(s3Client);
            await transferUtility.UploadAsync(uploadRequest);
            return $"https://{bucketName}.s3.{regionEndpoint.SystemName}.amazonaws.com/{uploadRequest.Key}";
        }

        /** returns a file from S3 */
        public async Task<FileHelper> DownloadFileAsync(string fileUrl)
        {
            var key = GetKeyFromUrl(fileUrl);
            var request = new GetObjectRequest
            {
                BucketName = bucketName,
                Key = key
            };

            using var response = await s3Client.GetObjectAsync(request);
            using var memoryStream = new MemoryStream();
            await response.ResponseStream.CopyToAsync(memoryStream);

            return new FileHelper
            {
                ByteArrayContent = memoryStream.ToArray(),
                ContentType = response.Headers.ContentType,
                FileName = Path.GetFileName(key)
            };

        }

        /** returns the absolute path to the object without bucket information */
        private string GetKeyFromUrl(string url)
        {
            var uri = new Uri(url);
            return uri.AbsolutePath.TrimStart('/');
        }
    }
}
