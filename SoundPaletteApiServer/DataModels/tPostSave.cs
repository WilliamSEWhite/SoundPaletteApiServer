using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tPostSave
    {
        [Key]
        public int PostSaveId { get; set; }
        public int PostId { get; set; }
        public virtual tPost? Post { get; set; } = null;
        public int UserId { get; set; }
        public virtual tUser? User { get; set; } = null;

        public tPostSave(int postId, int userId)
        {
            PostId = postId;
            UserId = userId;
        }
        public tPostSave() { }
    }
}
