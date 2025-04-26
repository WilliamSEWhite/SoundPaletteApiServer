using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    //this class is used to insert and manifest entries in tUserInfo
    public class tUserInfo
    {
        [Key]
        public int UserInfoId { get; set; }
        public int UserId { get; set; }
        public virtual tUser User { get; set; } = null!;
        public int LocationId { get; set; }
        public virtual tLocation Location { get; } = null!;
        public string Email { get; set; }
        public string Phone { get; set; }
        public DateTime DOB {get;set;}
        public DateTime DateCreated {get;set;}

        public tUserInfo(int userId, int locationId, string email, string phone, DateTime dOB, DateTime dateCreated)
        {
            UserId = userId;
            LocationId = locationId;
            Email = email;
            Phone = phone;
            DOB = dOB;
            DateCreated = dateCreated;
        }
    }
}
