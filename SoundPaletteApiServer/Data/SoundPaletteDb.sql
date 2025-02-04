USE [master]
GO
DROP DATABASE [SP];
CREATE DATABASE [SP]
CONTAINMENT = NONE 
 ON  PRIMARY 
( NAME = N'[SP]', FILENAME = N'C:\James\Courses\Brocku-Courses\COSC-4P02\SoundPaletteDB\SP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
LOG ON 
( NAME = N'SP_log', FILENAME = N'C:\James\Courses\Brocku-Courses\COSC-4P02\SoundPaletteDB\SP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SP] SET COMPATIBILITY_LEVEL = 130
GO
/*
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
*/
ALTER DATABASE [SP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SP] SET ARITHABORT OFF 
GO
ALTER DATABASE [SP] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SP] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SP] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SP] SET  MULTI_USER 
GO
ALTER DATABASE [SP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SP] SET QUERY_STORE = OFF
GO
USE [SP]
GO
/*ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tUsers](
	[UserId] int IDENTITY(1,1) NOT NULL,
	[Username] nvarchar(50) NOT NULL,
	[Password] nvarchar(50) NOT NULL,

CONSTRAINT [PK_tUsers] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tUsers_Username] ON [dbo].[tUsers]
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tTags](
	[TagId] int IDENTITY(1,1) NOT NULL,
	[TagName] nvarchar(200) NOT NULL,
CONSTRAINT [PK_tTags] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tTags_TagName] ON [dbo].[tTags]
(
	[TagName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tLocations](
	[LocationId] int IDENTITY(1,1) NOT NULL,
	[LocationName] nvarchar(50) NOT NULL,

CONSTRAINT [PK_tLocations] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tLocations_LocationName] ON [dbo].[tLocations]
(
	[LocationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tUserInfo](
	[UserInfoId] int IDENTITY(1,1) NOT NULL,
	[UserId] int NOT NULL,
	[LocationId] int NULL,
	[Email] nvarchar(50) NOT NULL,
	[Phone] nvarchar(50) NULL,
	[DOB] date NOT NULL,
	[DateCreated] date NOT NULL
CONSTRAINT [PK_tUserInfo] PRIMARY KEY CLUSTERED 
(
	[UserInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tUserInfo_UserId] ON [dbo].[tUserInfo]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tUserInfo] WITH CHECK ADD CONSTRAINT [FK_tUserInfo_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tUserInfo] WITH CHECK ADD CONSTRAINT [FK_tUserInfo_tUsers_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[tLocations] ([LocationId])
GO

CREATE TABLE [dbo].[tUserProfile](
	[UserProfileId] int IDENTITY(1,1) NOT NULL,
	[UserId] int NOT NULL,
	[Bio] nvarchar(200) NULL,
	[Picture] nvarchar(MAX) NULL,
CONSTRAINT [PK_tUserProfile] PRIMARY KEY CLUSTERED 
(
	[UserProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tUserProfile_UserId] ON [dbo].[tUserProfile]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tUserProfile] WITH CHECK ADD CONSTRAINT [FK_tUserProfile_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO

CREATE TABLE [dbo].[tUserTags](
	[UserTagId] int IDENTITY(1,1) NOT NULL,
	[UserId] int NOT NULL,
	[TagId] int NOT NULL,

CONSTRAINT [PK_tUserTags] PRIMARY KEY CLUSTERED 
(
	[UserTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tUserTags_UserId] ON [dbo].[tUserTags]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tUserTags_TagId] ON [dbo].[tUserTags]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[tUserTags] WITH CHECK ADD CONSTRAINT [FK_tUserTags_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tUserTags] WITH CHECK ADD CONSTRAINT [FK_tUserTags_tTags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[tTags] ([TagId])
GO

CREATE TABLE [dbo].[tPostTypes](
	[PostTypeId] int IDENTITY(1,1) NOT NULL,
	[PostTypeName] nvarchar(200) NOT NULL,
CONSTRAINT [PK_tPostTypes] PRIMARY KEY CLUSTERED 
(
	[PostTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tPostTypes_PostTypeName] ON [dbo].[tPostTypes]
(
	[PostTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tPosts](
	[PostId] int IDENTITY(1,1) NOT NULL,
	[UserId] int NOT NULL,
	[PostTypeId] int NOT NULL,
	[Caption] nvarchar NULL,
	[IsPremium] bit NOT NULL default 0,
	[IsMature] bit NOT NULL default 0,
	[IsDeleted] bit NOT NULL default 0,
	[CreatedDate] date NOT NULL,
	[PublishDate] date NOT NULL

CONSTRAINT [PK_tPosts] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tPosts_UserId] ON [dbo].[tPosts]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tPosts_PostTypeId] ON [dbo].[tPosts]
(
	[PostTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tPosts] WITH CHECK ADD CONSTRAINT [FK_tPosts_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tPosts] WITH CHECK ADD CONSTRAINT [FK_tPosts_tPostTypes_PostTypeId] FOREIGN KEY([PostTypeId])
REFERENCES [dbo].[tPostTypes] ([PostTypeId])
GO

CREATE TABLE [dbo].[tPostTags](
	[PostTagId] int IDENTITY(1,1) NOT NULL,
	[PostId] int NOT NULL,
	[TagId] int NOT NULL,

CONSTRAINT [PK_tPostTags] PRIMARY KEY CLUSTERED 
(
	[PostTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tPostTags_PostId] ON [dbo].[tPostTags]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tPostTags_TagId] ON [dbo].[tPostTags]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[tPostTags] WITH CHECK ADD CONSTRAINT [FK_tPostTags_tPosts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[tPosts] ([PostId])
GO
ALTER TABLE [dbo].[tPostTags] WITH CHECK ADD CONSTRAINT [FK_tPostTags_tTags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[tTags] ([TagId])
GO

CREATE TABLE [dbo].[tPostContents](
	[PostContentId] int IDENTITY(1,1) NOT NULL,
	[PostId] int NOT NULL,
	[PostTextContent] nvarchar(MAX) NULL,
	[S3Token] nvarchar(MAX) NULL,

CONSTRAINT [PK_tPostContents] PRIMARY KEY CLUSTERED 
(
	[PostContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tPostContents_PostId] ON [dbo].[tPostContents]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tPostContents] WITH CHECK ADD CONSTRAINT [FK_tPostContents_tPosts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[tPosts] ([PostId])
GO