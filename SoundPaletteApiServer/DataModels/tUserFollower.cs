using System.ComponentModel.DataAnnotations;

namespace SoundPaletteApiServer.DataModels
{
    public class tUserFollower
    {
        [Key]
        public int UserFollowerId { get; set; }
        public int FollowerId { get; set; }
        public virtual tUser? Follower { get; set; } = null;
        public int FollowingId { get; set; }
        public virtual tUser? Following { get; set; } = null;

        public tUserFollower(int followerId, int followingId)
        {
            FollowerId = followerId;
            FollowingId = followingId;
        }
        public tUserFollower() { }
    }
}
