using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    //this class is used to insert and manifest entries in tUserTag
    public class tUserTag
    {
        [Key]
        public int UserTagId { get; set; }
        public int UserId { get; set; }
        public virtual tUser User { get; set;  } = null!;
        public int TagId { get; set; }
        public virtual tTag Tag { get; set; } = null!;

        public tUserTag(int userId, int tagId) 
        {
            UserId = userId;
            TagId = tagId;
        }
        public tUserTag() { }

    }
}
