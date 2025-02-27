﻿using static SoundPaletteApiServer.Data.SPContext;
using System.Collections.Generic;
using System.Diagnostics.Contracts;
using System.Diagnostics.Metrics;
using System.Reflection.Emit;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using SoundPaletteApiServer.DataModels;


namespace SoundPaletteApiServer.Data
{
    public class SPContext : DbContext
    {
        public DbSet<tUser> tUsers { get; set; } = null!;
        public DbSet<tTag> tTags { get; set; } = null!;
        public DbSet<tLocation> tLocations { get; set; } = null!;
        public DbSet<tUserTag> tUserTags { get; set; } = null!;
        public DbSet<tUserInfo> tUserInfo { get; set; } = null!;
        public DbSet<tUserProfile> tUserProfiles { get; set; } = null!;
        public DbSet<tPostType> tPostTypes { get; set; } = null!;
        public DbSet<tPost> tPosts { get; set; } = null!;
        public DbSet<tPostTag> tPostTags { get; set; } = null!;
        public DbSet<tPostContent> tPostContents { get; set; } = null!;
        public DbSet<tPostComment> tPostComments { get; set; } = null!;


        public SPContext(DbContextOptions<SPContext> options)
                : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder
                .HasAnnotation("ProductVersion", "0.0.1")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);
            modelBuilder.Entity<tUser>()
                .HasOne(u => u.tUserInfo)
                .WithOne(p => p.tUser)
                .HasForeignKey<tUserInfo>(p => p.UserId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tUser>()
                .HasOne(u => u.tUserProfile)
                .WithOne(p => p.tUser)
                .HasForeignKey<tUserProfile>(p => p.UserId)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<tUser>().ToTable("tUsers");
            modelBuilder.Entity<tUserInfo>().ToTable("tUserInfo");
            modelBuilder.Entity<tUserProfile>().ToTable("tUserProfile");


            modelBuilder.Entity<tTag>().ToTable("tTags");
            modelBuilder.Entity<tLocation>().ToTable("tLocations");
            modelBuilder.Entity<tUserTag>().ToTable("tUserTags");
            modelBuilder.Entity<tPostType>().ToTable("tPostTypes");

            modelBuilder.Entity<tPost>()
                .HasOne(u => u.tPostContent)
                .WithOne(p => p.tPost)
                .HasForeignKey<tPostContent>(p => p.PostId)
                .OnDelete(DeleteBehavior.Cascade);

            modelBuilder.Entity<tPost>().ToTable("tPosts");

            modelBuilder.Entity<tPostTag>().ToTable("tPostTags");
            modelBuilder.Entity<tPostContent>().ToTable("tPostContents");
            modelBuilder.Entity<tPostComment>().ToTable("tPostComments");

        }
    }

}

