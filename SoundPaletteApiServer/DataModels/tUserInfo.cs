using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tUserInfo
    {
        [Key]
        public int UserInfoId { get; set; }
        public int UserId { get; set; }
        public tUser tUser { get; set; } = null!;
        public int? LocationId { get; set; }
        public tLocation tLocation { get; } = null!;
        public string Email { get; set; }
        public string Phone { get; set; }
        public DateTime DOB {get;set;}
        public DateTime DateCreated {get;set;}

        public tUserInfo(int userId, int? locationId, string email, string phone, DateTime dOB, DateTime dateCreated)
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
