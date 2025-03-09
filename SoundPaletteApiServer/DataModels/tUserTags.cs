using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tUserTag
    {
        [Key]
        public int UserTagId { get; set; }
        public int UserId { get; set; }
        public tUser tUser { get; } = null!;
        public int TagId { get; set; }
        public tTag tTag { get; } = null!;

        public tUserTag(int userId, int tagId) 
        {
            UserId = userId;
            TagId = tagId;
        }
        public tUserTag() { }

    }
}
