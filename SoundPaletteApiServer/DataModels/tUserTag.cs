using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tUserTag
    {
        [Key]
        public int UserTagId { get; set; }
        public int UserId { get; set; }
        public virtual tUser User { get; set; } = null!;
        public int TagId { get; set; }
        public virtual tTag Tag { get; set; } = null!;  // this needs a setter to save tags

        public tUserTag(int userId, int tagId) 
        {
            UserId = userId;
            TagId = tagId;
        }
        public tUserTag() { }

    }
}
