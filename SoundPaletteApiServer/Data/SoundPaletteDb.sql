USE [master]
GO
IF EXISTS (SELECT name FROM master.sys.databases WHERE name = N'SP')
BEGIN
	DROP DATABASE [SP];
END
CREATE DATABASE [SP]
CONTAINMENT = NONE 
 ON  PRIMARY 
( NAME = N'[SP]', FILENAME =	N'C:\James\Courses\Brocku-Courses\COSC-4P02\SoundPaletteDB\SP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
LOG ON 
( NAME = N'SP_log', FILENAME =  N'C:\James\Courses\Brocku-Courses\COSC-4P02\SoundPaletteDB\SP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
	[Username] nvarchar(50) UNIQUE NOT NULL,
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
	[TagName] nvarchar(200) NULL,
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

INSERT [dbo].[tTags]
([TagName])
VALUES
	('Music'),
	('Vocals'),
	('Digital Art'),
	('Painting'),
	('Drawing'),
	('Rock'),
	('Alternative')


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
INSERT [dbo].[tLocations]
([LocationName])
VALUES
	('Canada'),
	('United States'),
	('Mexico'),
	('United Kingdom'),
	('France'),
	('Japan'),
	('Brazil'),
	('Spain'),
	('India')
USE [SP]
UPDATE tLocations 
SET LocationName = 'Brazil' 
WHERE LocationId = '1';

UPDATE tLocations 
SET LocationName = 'Canada' 
WHERE LocationId = '2';

UPDATE tLocations 
SET LocationName = 'France' 
WHERE LocationId = '3';

UPDATE tLocations 
SET LocationName = 'India' 
WHERE LocationId = '4';

UPDATE tLocations 
SET LocationName = 'Japan' 
WHERE LocationId = '5';

UPDATE tLocations 
SET LocationName = 'Mexico' 
WHERE LocationId = '6';

UPDATE tLocations 
SET LocationName = 'Spain' 
WHERE LocationId = '7';

UPDATE tLocations 
SET LocationName = 'United Kingdom' 
WHERE LocationId = '8';

UPDATE tLocations 
SET LocationName = 'United States' 
WHERE LocationId = '9';
GO

CREATE TABLE [dbo].[tUserInfos](
	[UserInfoId] int IDENTITY(1,1) NOT NULL,
	[UserId] int NOT NULL,
	[LocationId] int NULL,
	[Email] nvarchar(50) NOT NULL,
	[Phone] nvarchar(50) NULL,
	[DOB] date NOT NULL,
	[DateCreated] date NOT NULL
CONSTRAINT [PK_tUserInfos] PRIMARY KEY CLUSTERED 
(
	[UserInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tUserInfos_UserId] ON [dbo].[tUserInfos]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tUserInfos] WITH CHECK ADD CONSTRAINT [FK_tUserInfos_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tUserInfos] CHECK CONSTRAINT [FK_tUserInfos_tUsers_UserId]
GO
ALTER TABLE [dbo].[tUserInfos] WITH CHECK ADD CONSTRAINT [FK_tUserInfos_tUsers_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[tLocations] ([LocationId])
GO

CREATE TABLE [dbo].[tUserProfiles](
	[UserProfileId] int IDENTITY(1,1) NOT NULL,
	[UserId] int NOT NULL,
	[Bio] nvarchar(200) NULL,
	[Picture] nvarchar(MAX) NULL,
	[FollowerCount] int NOT NULL default 0,
	[FollowingCount] int NOT NULL default 0,

CONSTRAINT [PK_tUserProfiles] PRIMARY KEY CLUSTERED 
(
	[UserProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tUserProfiles_UserId] ON [dbo].[tUserProfiles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tUserProfiles] WITH CHECK ADD CONSTRAINT [FK_tUserProfiles_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tUserProfiles] CHECK CONSTRAINT [FK_tUserProfiles_tUsers_UserId]
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

INSERT [dbo].[tPostTypes]
([PostTypeName])
VALUES
	('Text'),
	('Audio'),
	('Image')

CREATE TABLE [dbo].[tPosts](
	[PostId] int IDENTITY(1,1) NOT NULL,
	[UserId] int NOT NULL,
	[PostTypeId] int NOT NULL,
	[Caption] nvarchar(MAX) NULL,
	[IsPremium] bit NOT NULL default 0,
	[IsMature] bit NOT NULL default 0,
	[IsDeleted] bit NOT NULL default 0,
	[CreatedDate] date NOT NULL,
	[PublishDate] date NOT NULL,
	[CommentCount] int NOT NULL default 0,
	[LikeCount] int NOT NULL default 0

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

CREATE TABLE [dbo].[tPostComments](
	[PostCommentId] int IDENTITY(1,1) NOT NULL,
	[PostId] int NOT NULL,
	[UserId] int NOT NULL,
	[CommentContent] nvarchar(MAX) NULL,
	[CreatedDate] date NOT NULL,


CONSTRAINT [PK_tPostComments] PRIMARY KEY CLUSTERED 
(
	[PostCommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tPostComments_PostId] ON [dbo].[tPostComments]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tPostComments] WITH CHECK ADD CONSTRAINT [FK_tPostComments_tPosts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[tPosts] ([PostId])
GO
ALTER TABLE [dbo].[tPostComments] WITH CHECK ADD CONSTRAINT [FK_tPostComments_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO

CREATE TRIGGER Increment_Post_Comments
ON tPostComments
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON; 

    UPDATE tPosts
    SET CommentCount = CommentCount + 1
    FROM tPosts
    INNER JOIN inserted i ON tPosts.PostId = i.PostId;
END;
GO

CREATE TRIGGER Decrement_Post_Comments
ON tPostComments
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON; 

    UPDATE tPosts
    SET CommentCount = CommentCount - 1
    FROM tPosts
    INNER JOIN deleted d ON tPosts.PostId = d.PostId;
END;
GO

CREATE TABLE [dbo].[tPostLikes](
	[PostLikeId] int IDENTITY(1,1) NOT NULL,
	[PostId] int NOT NULL,
	[UserId] int NOT NULL,

CONSTRAINT [PK_tPostLikes] PRIMARY KEY CLUSTERED 
(
	[PostLikeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tPostLikes_PostId] ON [dbo].[tPostLikes]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tPostLikes_UserId] ON [dbo].[tPostLikes]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tPostLikes] WITH CHECK ADD CONSTRAINT [FK_tPostLikes_tPosts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[tPosts] ([PostId])
GO
ALTER TABLE [dbo].[tPostLikes] WITH CHECK ADD CONSTRAINT [FK_tPostLikes_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO

CREATE TRIGGER Increment_Post_Likes
ON tPostLikes
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON; 

    UPDATE tPosts
    SET LikeCount = LikeCount + 1
    FROM tPosts
    INNER JOIN inserted i ON tPosts.PostId = i.PostId;
END;
GO

CREATE TRIGGER Decrement_Post_Likes
ON tPostLikes
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON; 

    UPDATE tPosts
    SET LikeCount = LikeCount - 1
    FROM tPosts
    INNER JOIN deleted d ON tPosts.PostId = d.PostId;
END;
GO

CREATE TABLE [dbo].[tPostSaves](
	[PostSaveId] int IDENTITY(1,1) NOT NULL,
	[PostId] int NOT NULL,
	[UserId] int NOT NULL,

CONSTRAINT [PK_tPostSaves] PRIMARY KEY CLUSTERED 
(
	[PostSaveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tPostSaves_UserId] ON [dbo].[tPostSaves]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tPostSaves] WITH CHECK ADD CONSTRAINT [FK_tPostSaves_tPosts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[tPosts] ([PostId])
GO
ALTER TABLE [dbo].[tPostSaves] WITH CHECK ADD CONSTRAINT [FK_tPostSaves_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO

CREATE TABLE [dbo].[tUserFollowers](
	[UserFollowerId] int IDENTITY(1,1) NOT NULL,
	[FollowerId] int NOT NULL,
	[FollowingId] int NOT NULL,

CONSTRAINT [PK_tUserFollowers] PRIMARY KEY CLUSTERED 
(
	[UserFollowerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tUserFollowers_FollowerId] ON [dbo].[tUserFollowers]
(
	[FollowerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tUserFollowers] WITH CHECK ADD CONSTRAINT [FK_tUserFollowers_tUsers_FollowerId] FOREIGN KEY([FollowerId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tUserFollowers] WITH CHECK ADD CONSTRAINT [FK_tUserFollowers_tUsers_FollowingId] FOREIGN KEY([FollowingId])
REFERENCES [dbo].[tUsers] ([UserId])
GO