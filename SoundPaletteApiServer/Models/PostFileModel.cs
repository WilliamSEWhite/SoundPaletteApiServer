using System.Text.Json.Serialization;

namespace SoundPaletteApiServer.Models
{
    public class PostFileModel
    {
        [JsonPropertyName("File")]
        public FileModel FileModel { get; set; }

        [JsonPropertyName("Post")]
        public NewPostModel NewPostModel { get; set; }
    }
}
