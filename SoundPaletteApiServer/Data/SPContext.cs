using static SoundPaletteApiServer.Data.SPContext;
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

                modelBuilder.Entity<tUser>().ToTable("tUsers");
            }
        }

    }

