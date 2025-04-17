using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using SoundPaletteApiServer.Data;
using SoundPaletteApiServer.DataModels;
using SoundPaletteApiServer.Models;

namespace SoundPaletteApiServer.DbHelpers
{
    public class UserDbHelper : DbHelperBase
    {
        private readonly IConfiguration _configuration;

        public UserDbHelper(SPContext context, IConfiguration configuration)
            : base(context)
        {
            _configuration = configuration;
        }

        /** User */
        public async Task<UserModel> GetUser(int id)
        {
            return new UserModel(await Context.tUsers.Where(o => o.UserId == id).Include(o => o.UserInfo).FirstOrDefaultAsync());
        }
        /** return full UserModel by name */
        public async Task<UserModel> GetUserByName(string userName)
        {
            return new UserModel(await Context.tUsers.Where(o => o.Username == userName).Include(o => o.UserInfo).FirstOrDefaultAsync());
        }

        public async Task<UserModel> GetUserProfile(int id)
        {
            var user = await Context.tUsers.Where(o => o.UserId == id).FirstOrDefaultAsync();
            return new UserModel(user.UserId, user.Username, user.Password);
        }

        /** UserInfo */
        public async Task<UserInfoModel> GetUserInfo(int id)
        {
            var userInfo = await Context.tUserInfo.Where(o => o.UserId == id).FirstOrDefaultAsync();
            return new UserInfoModel(userInfo.UserId, userInfo.LocationId, userInfo.Email, userInfo.Phone, userInfo.DOB);
        }
        public async Task<UserInfoModel> UpdateUserInfo(UserInfoModel userInfo)
        {
            var existingInfo = await Context.tUserInfo.Where(o => o.UserId == userInfo.UserId).FirstOrDefaultAsync();
            // if user exists, update info
            if (existingInfo != null)
            {
                existingInfo.Email = userInfo.Email;
                existingInfo.Phone = userInfo.Phone;
                existingInfo.DOB = userInfo.DOB;
                existingInfo.LocationId = userInfo.LocationId;

                // mark the entity as modified
                Context.Entry(existingInfo).State = EntityState.Modified;
                // update user information to database
                Context.tUserInfo.Update(existingInfo);
                await Context.SaveChangesAsync();
                return new UserInfoModel(existingInfo.UserId, existingInfo.LocationId, existingInfo.Email, existingInfo.Phone, existingInfo.DOB);
            }
            // else create new entry by user id
            else
            {
                var newUserInfo = new tUserInfo(userInfo.UserId, userInfo.LocationId, userInfo.Email, userInfo.Phone, userInfo.DOB, DateTime.Now);
                Context.tUserInfo.Add(newUserInfo);
                await Context.SaveChangesAsync();
                return new UserInfoModel(newUserInfo.UserId, newUserInfo.LocationId, newUserInfo.Email, newUserInfo.Phone, newUserInfo.DOB);
            }
        }

        /** UserProfile */
        public async Task<UserProfileModel> GetUserProfileInfo(int id)
        {
            var userProfile = await Context.tUserProfile.Where(o => o.UserId == id).FirstOrDefaultAsync();
            return new UserProfileModel(userProfile.UserId, userProfile.Bio, userProfile.Picture, userProfile.FollowerCount, userProfile.FollowingCount);
        }
        public async Task<UserProfileModelLite> GetUserProfileByUsername(int userId, string username)
        {
            var userProfile = await
                (
                    from profile in Context.tUserProfile.Include(o => o.User).ThenInclude(o => o.UserFollowers).Include(o => o.User).ThenInclude(o => o.UserTags).ThenInclude(o => o.Tag)
                    where profile.User.Username == username
                    let isFollowing = profile.User.UserFollowers.Where(o => o.FollowerId == userId).Any()
                    select new UserProfileModelLite(profile.User.Username, profile.Bio, profile.Picture, profile.FollowerCount, profile.FollowingCount, isFollowing, profile.User.UserTags.Select(o => new TagModel(o.Tag)).ToList())
                ).FirstOrDefaultAsync();
            return userProfile;
        }
        public async Task<UserProfileModel> UpdateUserProfileInfo(UserProfileModel userProfile)
        {
            var existingInfo = await Context.tUserProfile.Where(o => o.UserId == userProfile.UserId).FirstOrDefaultAsync();
            // if user profile exists, update profile
            if (existingInfo != null)
            {
                existingInfo.Bio = userProfile.Bio;
                existingInfo.Picture = userProfile.Picture;
                // mark the entitiy as modified
                Context.Entry(existingInfo).State = EntityState.Modified;
                // update user profile in database
                Context.tUserProfile.Update(existingInfo);
                await Context.SaveChangesAsync();
                return new UserProfileModel(existingInfo);
            }
            // else create new profile
            else
            {
                var newUserProfile = new tUserProfile(userProfile.UserId, userProfile.Bio, userProfile.Picture);
                Context.tUserProfile.Add(newUserProfile);
                await Context.SaveChangesAsync();
                return new UserProfileModel(await Context.tUserProfile.Where(o => o.UserId == userProfile.UserId).FirstOrDefaultAsync());
            }
        }

        public async Task FollowUser(int followerId, string followingUsername)
        {
            int followingId = await Context.tUsers.Where(o => o.Username == followingUsername).Select(o => o.UserId).FirstOrDefaultAsync();
            var follow = new tUserFollower(followerId, followingId);
            await Context.tUserFollowers.AddAsync(follow);
            await Context.SaveChangesAsync();
        }

        public async Task UnfollowUser(int followerId, string followingUsername)
        {
            int followingId = await Context.tUsers.Where(o => o.Username == followingUsername).Select(o => o.UserId).FirstOrDefaultAsync();
            var follow = await Context.tUserFollowers.Where(o => o.FollowerId == followerId && o.FollowingId == followingId).FirstOrDefaultAsync();
            if (follow != null)
            {
                Context.tUserFollowers.Remove(follow);
                await Context.SaveChangesAsync();
            }
        }
        
        public async Task<List<string>> SearchUsersLite(int userId, string searchTerm)
        {
            var users = await Context.tUsers.Where(o => o.UserId != userId && o.Username.ToLower().Contains(searchTerm.ToLower())).Select(o => o.Username).ToListAsync();
            return users;
        }
        public async Task<List<UserSearchModel>> SearchUsers(int userId, string searchTerm)
        {
            var userProfile = await
                (
                    from profile in Context.tUserProfile.Include(o => o.User).ThenInclude(o => o.UserFollowers)
                    where profile.UserId != userId && profile.User.Username.ToLower().Contains(searchTerm.ToLower())
                    let isFollowing = profile.User.UserFollowers.Where(o => o.FollowerId == userId).Any()
                    select new UserSearchModel(profile.User.Username, profile.FollowerCount, isFollowing)
                ).ToListAsync();
            return userProfile;
        }
    }
}
