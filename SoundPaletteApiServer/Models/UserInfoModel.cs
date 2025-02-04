﻿using SoundPaletteApiServer.DataModels;

namespace SoundPaletteApiServer.Models
{
    public class UserInfoModel
    {
        public int UserInfoId { get; set; }
        public int UserId { get; set; }
        public UserModel User { get; } = null!;
        //public int LocationId { get; set; }
        public LocationModel Location { get; } = null!;
        public string Email { get; set; }
        public string Phone { get; set; }
        public DateTime DOB { get; set; }
        public DateTime DateCreated { get; set; }

        public UserInfoModel(int userInfoId, int userId, string email, string phone, DateTime dOB, DateTime dateCreated)
        {
            UserInfoId = userInfoId;
            UserId = userId;
            //LocationId = locationId;
            Email = email;
            Phone = phone;
            DOB = dOB;
            DateCreated = dateCreated;
        }
        public UserInfoModel(tUserInfo userInfo)
        {
            UserInfoId = userInfo.UserInfoId;
            UserId = userInfo.UserId;
            //LocationId = locationId;
            Email = userInfo.Email;
            Phone = userInfo.Phone;
            DOB = userInfo.DOB;
            DateCreated = userInfo.DateCreated;
        }
    }
}
