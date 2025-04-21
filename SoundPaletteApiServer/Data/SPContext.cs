using static SoundPaletteApiServer.Data.SPContext;
using System.Collections.Generic;
using System.Diagnostics.Contracts;
using System.Diagnostics.Metrics;
using System.Reflection.Emit;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using SoundPaletteApiServer.DataModels;
using Microsoft.Extensions.Hosting;


namespace SoundPaletteApiServer.Data
{
    public class SPContext : DbContext
    {
        public DbSet<tUser> tUsers { get; set; } = null!;
        public DbSet<tTag> tTags { get; set; } = null!;
        public DbSet<tLocation> tLocations { get; set; } = null!;
        public DbSet<tUserTag> tUserTags { get; set; } = null!;
        public DbSet<tUserInfo> tUserInfo { get; set; } = null!;
        public DbSet<tUserProfile> tUserProfile { get; set; } = null!;
        public DbSet<tPostType> tPostTypes { get; set; } = null!;
        public DbSet<tPost> tPosts { get; set; } = null!;
        public DbSet<tPostTag> tPostTags { get; set; } = null!;
        public DbSet<tPostContent> tPostContents { get; set; } = null!;
        public DbSet<tPostComment> tPostComments { get; set; } = null!;
        public DbSet<tPostLike> tPostLikes { get; set; } = null!;
        public DbSet<tPostSave> tPostSaves { get; set; } = null!;
        public DbSet<tUserFollower> tUserFollowers { get; set; } = null!;
        public DbSet<tChatroom> tChatrooms { get; set; } = null!;
        public DbSet<tChatroomMember> tChatroomMembers { get; set; } = null!;
        public DbSet<tMessage> tMessages { get; set; } = null!;
        public DbSet<tPostUserTag> tPostUserTags { get; set; } = null!;
        public DbSet<tFileType> tFileTypes { get; set; } = null!;
        public DbSet<tFile> tFiles { get; set; } = null!;
        public DbSet<tNotificationType> tNotificationTypes { get; set; } = null!;
        public DbSet<tNotificationSetting> tNotificationSettings { get; set; } = null!;
        public DbSet<tNotification> tNotifications { get; set; } = null!;



        public SPContext(DbContextOptions<SPContext> options)
                : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder
                .HasAnnotation("ProductVersion", "5.0.0")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);
            modelBuilder.Entity<tUser>()
                .HasOne(u => u.UserInfo)
                .WithOne(p => p.User)
                .HasForeignKey<tUserInfo>(p => p.UserId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tUser>()
                .HasOne(u => u.UserProfile)
                .WithOne(p => p.User)
                .HasForeignKey<tUserProfile>(p => p.UserId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tUser>()
                .HasMany(u => u.Posts)
                .WithOne(p => p.User)
                .HasForeignKey(p => p.UserId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tUser>()
                .HasMany(u => u.PostComments)
                .WithOne(p => p.User)
                .HasForeignKey(p => p.UserId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tUser>()
                .HasMany(u => u.UserFollowers)
                .WithOne(p => p.Follower)
                .HasForeignKey(p => p.FollowingId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tUser>()
                .HasMany(u => u.UserFollowings)
                .WithOne(p => p.Following)
                .HasForeignKey(p => p.FollowerId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tUser>()
                .HasMany(u => u.PostSaves)
                .WithOne(p => p.User)
                .HasForeignKey(p => p.UserId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tUser>()
                .HasMany(u => u.ChatroomMembers)
                .WithOne(p => p.User)
                .HasForeignKey(p => p.UserId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tUser>()
                .HasMany(u => u.PostUserTags)
                .WithOne(p => p.User)
                .HasForeignKey(p => p.UserId)
                .OnDelete(DeleteBehavior.Cascade); modelBuilder.Entity<tUser>().ToTable("tUsers");
            modelBuilder.Entity<tUserInfo>().ToTable("tUserInfos");
            modelBuilder.Entity<tUserProfile>().ToTable("tUserProfiles");
            modelBuilder.Entity<tTag>().ToTable("tTags");
            modelBuilder.Entity<tLocation>().ToTable("tLocations");
            modelBuilder.Entity<tUserTag>().ToTable("tUserTags");
            modelBuilder.Entity<tPostType>().ToTable("tPostTypes");
            modelBuilder.Entity<tPost>()
                .HasOne(u => u.PostContent)
                .WithOne(p => p.Post)
                .HasForeignKey<tPostContent>(p => p.PostId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tPost>()
                .HasMany(e => e.PostTags)
                .WithOne(e => e.Post)
                .HasForeignKey(e => e.PostId)
                .IsRequired();
            modelBuilder.Entity<tPost>()
                .HasMany(e => e.PostComments)
                .WithOne(e => e.Post)
                .HasForeignKey(e => e.PostId)
                .IsRequired();
            modelBuilder.Entity<tPost>()
                .HasMany(p => p.PostSaves)
                .WithOne(s => s.Post)
                .HasForeignKey(p => p.PostId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tPost>().ToTable("tPosts");
            modelBuilder.Entity<tPostTag>()
                .HasOne(u => u.Tag)
                .WithMany(t => t.PostTags)
                .HasForeignKey(p => p.TagId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tPost>()
                .HasMany(p => p.PostUserTags)
                .WithOne(s => s.Post)
                .HasForeignKey(p => p.PostId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tPostTag>().ToTable("tPostTags");
            modelBuilder.Entity<tPostUserTag>().ToTable("tPostUserTags");

            modelBuilder.Entity<tPostContent>().ToTable("tPostContents");
            modelBuilder.Entity<tPostComment>().ToTable("tPostComments");
            modelBuilder.Entity<tPostLike>().ToTable("tPostLikes");
            modelBuilder.Entity<tPostSave>().ToTable("tPostSaves");
            modelBuilder.Entity<tUserFollower>().ToTable("tUserFollowers");
            modelBuilder.Entity<tChatroom>()
                .HasMany(u => u.ChatroomMembers)
                .WithOne(p => p.Chatroom)
                .HasForeignKey(p => p.ChatroomId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tChatroom>().ToTable("tChatrooms");
            modelBuilder.Entity<tChatroomMember>()
                .HasMany(u => u.Messages)
                .WithOne(p => p.ChatroomMember)
                .HasForeignKey(p => p.ChatroomMemberId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tChatroomMember>().ToTable("tChatroomMembers");
            modelBuilder.Entity<tMessage>().ToTable("tMessages");
            modelBuilder.Entity<tFileType>().ToTable("tFileTypes");
            modelBuilder.Entity<tFileType>()
                .HasIndex(e => e.FileTypeName)
                .HasDatabaseName("IX_tFilesTypes_FileTypeName");
            modelBuilder.Entity<tFile>().ToTable("tFiles");
            modelBuilder.Entity<tFile>()
                .HasOne(e => e.FileType)
                .WithMany()
                .HasForeignKey(e => e.FileTypeId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tFile>()
                .HasOne(e => e.User)
                .WithMany()
                .HasForeignKey(e => e.UserId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tFile>(entity =>
            {
                entity.HasIndex(e => e.FileId).HasDatabaseName("IX_tFiles_FileId");
                entity.HasIndex(e => e.UserId).HasDatabaseName("IX_tFiles_UserId");
            });
            modelBuilder.Entity<tNotificationType>().ToTable("tNotificationTypes");
            modelBuilder.Entity<tNotificationSetting>().ToTable("tNotificationSettings");
            modelBuilder.Entity<tNotification>().ToTable("tNotifications");

        }
    }

}

