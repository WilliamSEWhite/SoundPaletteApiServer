using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tUserTag
    {
        [Key]
        public int UserTagId { get; set; }
        public int UserId { get; set; }
        public tUser User { get; } = null!;
        public int TagId { get; set; }
        public tTag Tag { get; } = null!;

        public tUserTag(int userId, int tagId) 
        {
            UserId = userId;
            TagId = tagId;
        }

    }
}
