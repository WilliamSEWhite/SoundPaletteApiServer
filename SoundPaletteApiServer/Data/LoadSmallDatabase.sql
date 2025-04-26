USE [master]
GO

IF EXISTS (SELECT name FROM master.sys.databases WHERE name = N'SP')
BEGIN
	DROP DATABASE [SP];
END


/****** Object:  Database [SP]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE DATABASE [SP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'[SP]', FILENAME = N'C:\Users\WillS\source\DB\SP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SP_log', FILENAME = N'C:\Users\WillS\source\DB\SP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SP] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
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
ALTER DATABASE [SP] SET  DISABLE_BROKER 
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
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [SP]
GO
/****** Object:  Table [dbo].[tChatroomMembers]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChatroomMembers](
	[ChatroomMemberId] [int] IDENTITY(1,1) NOT NULL,
	[ChatroomId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tChatroomMembers] PRIMARY KEY CLUSTERED 
(
	[ChatroomMemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tChatrooms]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChatrooms](
	[ChatroomId] [int] IDENTITY(1,1) NOT NULL,
	[ChatroomName] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsGroupChat] [bit] NOT NULL,
 CONSTRAINT [PK_tChatrooms] PRIMARY KEY CLUSTERED 
(
	[ChatroomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tFiles]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tFiles](
	[FileId] [int] IDENTITY(1,1) NOT NULL,
	[FileTypeId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[FileName] [varchar](max) NULL,
	[FileUrl] [varchar](max) NULL,
	[CreatedDate] [date] NOT NULL,
	[PublishDate] [date] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tFiles] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tFileTypes]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tFileTypes](
	[FileTypeId] [int] IDENTITY(1,1) NOT NULL,
	[FileTypeName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_tFileTypes] PRIMARY KEY CLUSTERED 
(
	[FileTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tLocations]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLocations](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tLocations] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tMessages]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tMessages](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[SentDate] [datetime] NOT NULL,
	[ChatroomMemberId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tMessages] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tNotifications]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNotifications](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[NotificationTypeId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[ReferenceId] [int] NULL,
	[ReferenceName] [nvarchar](100) NULL,
	[DeviceIsActive] [bit] NOT NULL,
	[AppIsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tNotification] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tNotificationSettings]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNotificationSettings](
	[NotificationSettingId] [int] IDENTITY(1,1) NOT NULL,
	[NotificationTypeId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[SendNotification] [bit] NOT NULL,
 CONSTRAINT [PK_tNotificationSettings] PRIMARY KEY CLUSTERED 
(
	[NotificationSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tNotificationTypes]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNotificationTypes](
	[NotificationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tNotificationType] PRIMARY KEY CLUSTERED 
(
	[NotificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tPostComments]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPostComments](
	[PostCommentId] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CommentContent] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tPostComments] PRIMARY KEY CLUSTERED 
(
	[PostCommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tPostContents]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPostContents](
	[PostContentId] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[PostTextContent] [nvarchar](max) NULL,
	[BackgroundColour] [nvarchar](100) NULL,
	[FontColour] [nvarchar](100) NULL,
	[S3Token] [nvarchar](max) NULL,
 CONSTRAINT [PK_tPostContents] PRIMARY KEY CLUSTERED 
(
	[PostContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tPostLikes]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPostLikes](
	[PostLikeId] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_tPostLikes] PRIMARY KEY CLUSTERED 
(
	[PostLikeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tPosts]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPosts](
	[PostId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PostTypeId] [int] NOT NULL,
	[Caption] [nvarchar](max) NULL,
	[IsPremium] [bit] NOT NULL,
	[IsMature] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[PublishDate] [datetime] NOT NULL,
	[CommentCount] [int] NOT NULL,
	[LikeCount] [int] NOT NULL,
	[FileId] [int] NOT NULL,
 CONSTRAINT [PK_tPosts] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tPostSaves]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPostSaves](
	[PostSaveId] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_tPostSaves] PRIMARY KEY CLUSTERED 
(
	[PostSaveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tPostTags]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPostTags](
	[PostTagId] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_tPostTags] PRIMARY KEY CLUSTERED 
(
	[PostTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tPostTypes]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPostTypes](
	[PostTypeId] [int] IDENTITY(1,1) NOT NULL,
	[PostTypeName] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_tPostTypes] PRIMARY KEY CLUSTERED 
(
	[PostTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tPostUserTags]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPostUserTags](
	[PostUserTagId] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_tPostUserTags] PRIMARY KEY CLUSTERED 
(
	[PostUserTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tTags]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tTags](
	[TagId] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](200) NULL,
 CONSTRAINT [PK_tTags] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tUserFollowers]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUserFollowers](
	[UserFollowerId] [int] IDENTITY(1,1) NOT NULL,
	[FollowerId] [int] NOT NULL,
	[FollowingId] [int] NOT NULL,
 CONSTRAINT [PK_tUserFollowers] PRIMARY KEY CLUSTERED 
(
	[UserFollowerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tUserInfos]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUserInfos](
	[UserInfoId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[LocationId] [int] NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[DOB] [date] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_tUserInfos] PRIMARY KEY CLUSTERED 
(
	[UserInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tUserProfiles]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUserProfiles](
	[UserProfileId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Bio] [nvarchar](200) NULL,
	[Picture] [nvarchar](max) NULL,
	[FollowerCount] [int] NOT NULL,
	[FollowingCount] [int] NOT NULL,
 CONSTRAINT [PK_tUserProfiles] PRIMARY KEY CLUSTERED 
(
	[UserProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tUsers]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUsers](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tUsers] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tUserTags]    Script Date: 4/25/2025 9:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUserTags](
	[UserTagId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_tUserTags] PRIMARY KEY CLUSTERED 
(
	[UserTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tChatroomMembers] ON 

GO
INSERT [dbo].[tChatroomMembers] ([ChatroomMemberId], [ChatroomId], [UserId], [IsActive]) VALUES (1, 1, 3, 1)
GO
INSERT [dbo].[tChatroomMembers] ([ChatroomMemberId], [ChatroomId], [UserId], [IsActive]) VALUES (2, 1, 2, 1)
GO
INSERT [dbo].[tChatroomMembers] ([ChatroomMemberId], [ChatroomId], [UserId], [IsActive]) VALUES (3, 2, 3, 1)
GO
INSERT [dbo].[tChatroomMembers] ([ChatroomMemberId], [ChatroomId], [UserId], [IsActive]) VALUES (4, 2, 1, 1)
GO
INSERT [dbo].[tChatroomMembers] ([ChatroomMemberId], [ChatroomId], [UserId], [IsActive]) VALUES (5, 3, 1, 1)
GO
INSERT [dbo].[tChatroomMembers] ([ChatroomMemberId], [ChatroomId], [UserId], [IsActive]) VALUES (6, 3, 2, 1)
GO
INSERT [dbo].[tChatroomMembers] ([ChatroomMemberId], [ChatroomId], [UserId], [IsActive]) VALUES (7, 3, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[tChatroomMembers] OFF
GO
SET IDENTITY_INSERT [dbo].[tChatrooms] ON 

GO
INSERT [dbo].[tChatrooms] ([ChatroomId], [ChatroomName], [CreatedDate], [IsGroupChat]) VALUES (1, N'', CAST(N'2025-04-25T15:16:31.420' AS DateTime), 0)
GO
INSERT [dbo].[tChatrooms] ([ChatroomId], [ChatroomName], [CreatedDate], [IsGroupChat]) VALUES (2, N'', CAST(N'2025-04-25T15:16:51.123' AS DateTime), 0)
GO
INSERT [dbo].[tChatrooms] ([ChatroomId], [ChatroomName], [CreatedDate], [IsGroupChat]) VALUES (3, N'Group Chat', CAST(N'2025-04-25T15:30:27.650' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[tChatrooms] OFF
GO
SET IDENTITY_INSERT [dbo].[tFiles] ON 

GO
INSERT [dbo].[tFiles] ([FileId], [FileTypeId], [UserId], [FileName], [FileUrl], [CreatedDate], [PublishDate], [IsActive]) VALUES (1, 4, 1, N'1-2025-04-20-10-05-21.jpg', N'https://soundpalette.s3.us-east-2.amazonaws.com/files/b0ea98c6-14e7-4f94-8910-805dbad53bed_1-2025-04-20-10-05-21.jpg', CAST(N'2025-04-20' AS Date), CAST(N'2025-04-20' AS Date), 1)
GO
INSERT [dbo].[tFiles] ([FileId], [FileTypeId], [UserId], [FileName], [FileUrl], [CreatedDate], [PublishDate], [IsActive]) VALUES (2, 3, 1, N'1-2025-04-20-10-05-21.jpg', N'https://soundpalette.s3.us-east-2.amazonaws.com/files/c93f3e89-cc9f-42de-a44a-186b095428fd_1-2025-04-20-10-05-21.jpg', CAST(N'2025-04-20' AS Date), CAST(N'2025-04-20' AS Date), 1)
GO
INSERT [dbo].[tFiles] ([FileId], [FileTypeId], [UserId], [FileName], [FileUrl], [CreatedDate], [PublishDate], [IsActive]) VALUES (3, 4, 2, N'2-2025-04-20-10-54-50.jpg', N'https://soundpalette.s3.us-east-2.amazonaws.com/files/415159bc-dbc5-4cfa-8ff5-4dbe69544ab8_2-2025-04-20-10-54-50.jpg', CAST(N'2025-04-20' AS Date), CAST(N'2025-04-20' AS Date), 1)
GO
INSERT [dbo].[tFiles] ([FileId], [FileTypeId], [UserId], [FileName], [FileUrl], [CreatedDate], [PublishDate], [IsActive]) VALUES (4, 3, 2, N'2-2025-04-20-10-54-50.jpg', N'https://soundpalette.s3.us-east-2.amazonaws.com/files/eee1dd61-4bc5-4539-96c2-7eebc70b5100_2-2025-04-20-10-54-50.jpg', CAST(N'2025-04-20' AS Date), CAST(N'2025-04-20' AS Date), 1)
GO
INSERT [dbo].[tFiles] ([FileId], [FileTypeId], [UserId], [FileName], [FileUrl], [CreatedDate], [PublishDate], [IsActive]) VALUES (5, 2, 2, N'2-2025-04-20-12-44-51.mp3', N'https://soundpalette.s3.us-east-2.amazonaws.com/files/5a18697e-0f37-49cd-99e6-e720fd41a593_2-2025-04-20-12-44-51.mp3', CAST(N'2025-04-20' AS Date), CAST(N'2025-04-20' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[tFiles] OFF
GO
SET IDENTITY_INSERT [dbo].[tFileTypes] ON 

GO
INSERT [dbo].[tFileTypes] ([FileTypeId], [FileTypeName]) VALUES (1, N'No_File')
GO
INSERT [dbo].[tFileTypes] ([FileTypeId], [FileTypeName]) VALUES (2, N'Post_Audio')
GO
INSERT [dbo].[tFileTypes] ([FileTypeId], [FileTypeName]) VALUES (3, N'Post_Image')
GO
INSERT [dbo].[tFileTypes] ([FileTypeId], [FileTypeName]) VALUES (4, N'Profile_Image')
GO
SET IDENTITY_INSERT [dbo].[tFileTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[tLocations] ON 

GO
INSERT [dbo].[tLocations] ([LocationId], [LocationName]) VALUES (1, N'Brazil')
GO
INSERT [dbo].[tLocations] ([LocationId], [LocationName]) VALUES (2, N'Canada')
GO
INSERT [dbo].[tLocations] ([LocationId], [LocationName]) VALUES (3, N'France')
GO
INSERT [dbo].[tLocations] ([LocationId], [LocationName]) VALUES (4, N'India')
GO
INSERT [dbo].[tLocations] ([LocationId], [LocationName]) VALUES (5, N'Japan')
GO
INSERT [dbo].[tLocations] ([LocationId], [LocationName]) VALUES (6, N'Mexico')
GO
INSERT [dbo].[tLocations] ([LocationId], [LocationName]) VALUES (7, N'Spain')
GO
INSERT [dbo].[tLocations] ([LocationId], [LocationName]) VALUES (8, N'United Kingdom')
GO
INSERT [dbo].[tLocations] ([LocationId], [LocationName]) VALUES (9, N'United States')
GO
SET IDENTITY_INSERT [dbo].[tLocations] OFF
GO
SET IDENTITY_INSERT [dbo].[tMessages] ON 

GO
INSERT [dbo].[tMessages] ([MessageId], [Message], [SentDate], [ChatroomMemberId], [IsDeleted]) VALUES (1, N'HI!', CAST(N'2025-04-25T15:16:40.400' AS DateTime), 1, 0)
GO
INSERT [dbo].[tMessages] ([MessageId], [Message], [SentDate], [ChatroomMemberId], [IsDeleted]) VALUES (2, N'How are you doing?', CAST(N'2025-04-25T15:16:58.790' AS DateTime), 3, 0)
GO
INSERT [dbo].[tMessages] ([MessageId], [Message], [SentDate], [ChatroomMemberId], [IsDeleted]) VALUES (3, N'I was wondering if we could collab', CAST(N'2025-04-25T15:17:30.740' AS DateTime), 3, 0)
GO
INSERT [dbo].[tMessages] ([MessageId], [Message], [SentDate], [ChatroomMemberId], [IsDeleted]) VALUES (4, N'Hi everyone!', CAST(N'2025-04-25T15:30:34.867' AS DateTime), 7, 0)
GO
SET IDENTITY_INSERT [dbo].[tMessages] OFF
GO
SET IDENTITY_INSERT [dbo].[tNotificationSettings] ON 

GO
INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (1, 1, 1, 0)
GO
INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (2, 2, 1, 0)
GO
INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (3, 3, 1, 0)
GO
INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (4, 4, 1, 0)
GO
INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (5, 5, 1, 0)
GO

INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (6, 1, 2, 0)
GO
INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (7, 2, 2, 0)
GO
INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (8, 3, 2, 0)
GO
INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (9, 4, 2, 0)
GO
INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (10, 5, 2, 0)
GO

INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (11, 1, 3, 0)
GO
INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (12, 2, 3, 0)
GO
INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (13, 3, 3, 0)
GO
INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (14, 4, 3, 0)
GO
INSERT [dbo].[tNotificationSettings] ([NotificationSettingId], [NotificationTypeId], [UserId], [SendNotification]) VALUES (15, 5, 3, 0)
GO
SET IDENTITY_INSERT [dbo].[tNotificationSettings] OFF
GO
SET IDENTITY_INSERT [dbo].[tNotificationTypes] ON 

GO
INSERT [dbo].[tNotificationTypes] ([NotificationTypeId], [Description]) VALUES (1, N'Message')
GO
INSERT [dbo].[tNotificationTypes] ([NotificationTypeId], [Description]) VALUES (2, N'Follow')
GO
INSERT [dbo].[tNotificationTypes] ([NotificationTypeId], [Description]) VALUES (3, N'Like')
GO
INSERT [dbo].[tNotificationTypes] ([NotificationTypeId], [Description]) VALUES (4, N'Comment')
GO
INSERT [dbo].[tNotificationTypes] ([NotificationTypeId], [Description]) VALUES (5, N'Tag')
GO
SET IDENTITY_INSERT [dbo].[tNotificationTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[tPostComments] ON 

GO
INSERT [dbo].[tPostComments] ([PostCommentId], [PostId], [UserId], [CommentContent], [CreatedDate]) VALUES (1, 3, 3, N'test', CAST(N'2025-04-25T16:13:35.987' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tPostComments] OFF
GO
SET IDENTITY_INSERT [dbo].[tPostContents] ON 

GO
INSERT [dbo].[tPostContents] ([PostContentId], [PostId], [PostTextContent], [BackgroundColour], [FontColour], [S3Token]) VALUES (1, 1, N'nothing', N'#FFFFFF', N'#000000', N'')
GO
INSERT [dbo].[tPostContents] ([PostContentId], [PostId], [PostTextContent], [BackgroundColour], [FontColour], [S3Token]) VALUES (2, 2, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tPostContents] ([PostContentId], [PostId], [PostTextContent], [BackgroundColour], [FontColour], [S3Token]) VALUES (3, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tPostContents] ([PostContentId], [PostId], [PostTextContent], [BackgroundColour], [FontColour], [S3Token]) VALUES (4, 4, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tPostContents] OFF
GO
SET IDENTITY_INSERT [dbo].[tPostLikes] ON 

GO
INSERT [dbo].[tPostLikes] ([PostLikeId], [PostId], [UserId]) VALUES (1, 2, 1)
GO
INSERT [dbo].[tPostLikes] ([PostLikeId], [PostId], [UserId]) VALUES (4, 2, 3)
GO
INSERT [dbo].[tPostLikes] ([PostLikeId], [PostId], [UserId]) VALUES (5, 3, 3)
GO
SET IDENTITY_INSERT [dbo].[tPostLikes] OFF
GO
SET IDENTITY_INSERT [dbo].[tPosts] ON 

GO
INSERT [dbo].[tPosts] ([PostId], [UserId], [PostTypeId], [Caption], [IsPremium], [IsMature], [IsDeleted], [CreatedDate], [PublishDate], [CommentCount], [LikeCount], [FileId]) VALUES (1, 1, 1, N'test-text', 0, 0, 0, CAST(N'2025-04-20T10:05:53.867' AS DateTime), CAST(N'2025-04-20T10:05:53.000' AS DateTime), 0, 0, 0)
GO
INSERT [dbo].[tPosts] ([PostId], [UserId], [PostTypeId], [Caption], [IsPremium], [IsMature], [IsDeleted], [CreatedDate], [PublishDate], [CommentCount], [LikeCount], [FileId]) VALUES (2, 1, 3, N'shabba', 0, 0, 0, CAST(N'2025-04-20T10:07:34.760' AS DateTime), CAST(N'2025-04-20T10:07:34.000' AS DateTime), 0, 2, 2)
GO
INSERT [dbo].[tPosts] ([PostId], [UserId], [PostTypeId], [Caption], [IsPremium], [IsMature], [IsDeleted], [CreatedDate], [PublishDate], [CommentCount], [LikeCount], [FileId]) VALUES (3, 2, 3, N'Lukoma', 0, 0, 0, CAST(N'2025-04-20T10:56:04.757' AS DateTime), CAST(N'2025-04-20T10:56:03.000' AS DateTime), 1, 1, 4)
GO
INSERT [dbo].[tPosts] ([PostId], [UserId], [PostTypeId], [Caption], [IsPremium], [IsMature], [IsDeleted], [CreatedDate], [PublishDate], [CommentCount], [LikeCount], [FileId]) VALUES (4, 2, 2, N'Early-B', 0, 0, 0, CAST(N'2025-04-20T12:45:19.687' AS DateTime), CAST(N'2025-04-20T12:44:51.000' AS DateTime), 0, 0, 5)
GO
SET IDENTITY_INSERT [dbo].[tPosts] OFF
GO
SET IDENTITY_INSERT [dbo].[tPostSaves] ON 

GO
INSERT [dbo].[tPostSaves] ([PostSaveId], [PostId], [UserId]) VALUES (1, 2, 2)
GO
INSERT [dbo].[tPostSaves] ([PostSaveId], [PostId], [UserId]) VALUES (2, 3, 3)
GO
SET IDENTITY_INSERT [dbo].[tPostSaves] OFF
GO
SET IDENTITY_INSERT [dbo].[tPostTags] ON 

GO
INSERT [dbo].[tPostTags] ([PostTagId], [PostId], [TagId]) VALUES (1, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[tPostTags] OFF
GO
SET IDENTITY_INSERT [dbo].[tPostTypes] ON 

GO
INSERT [dbo].[tPostTypes] ([PostTypeId], [PostTypeName]) VALUES (2, N'Audio')
GO
INSERT [dbo].[tPostTypes] ([PostTypeId], [PostTypeName]) VALUES (3, N'Image')
GO
INSERT [dbo].[tPostTypes] ([PostTypeId], [PostTypeName]) VALUES (1, N'Text')
GO
SET IDENTITY_INSERT [dbo].[tPostTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[tTags] ON 

GO
INSERT [dbo].[tTags] ([TagId], [TagName]) VALUES (7, N'Alternative')
GO
INSERT [dbo].[tTags] ([TagId], [TagName]) VALUES (3, N'Digital Art')
GO
INSERT [dbo].[tTags] ([TagId], [TagName]) VALUES (5, N'Drawing')
GO
INSERT [dbo].[tTags] ([TagId], [TagName]) VALUES (1, N'Music')
GO
INSERT [dbo].[tTags] ([TagId], [TagName]) VALUES (4, N'Painting')
GO
INSERT [dbo].[tTags] ([TagId], [TagName]) VALUES (6, N'Rock')
GO
INSERT [dbo].[tTags] ([TagId], [TagName]) VALUES (2, N'Vocals')
GO
SET IDENTITY_INSERT [dbo].[tTags] OFF
GO
SET IDENTITY_INSERT [dbo].[tUserFollowers] ON 

GO
INSERT [dbo].[tUserFollowers] ([UserFollowerId], [FollowerId], [FollowingId]) VALUES (1, 3, 2)
GO
SET IDENTITY_INSERT [dbo].[tUserFollowers] OFF
GO
SET IDENTITY_INSERT [dbo].[tUserInfos] ON 

GO
INSERT [dbo].[tUserInfos] ([UserInfoId], [UserId], [LocationId], [Email], [Phone], [DOB], [DateCreated]) VALUES (1, 1, 1, N'horse@barn.yard', N'000-000-0000', CAST(N'2023-04-20' AS Date), CAST(N'2025-04-20T10:04:49.470' AS DateTime))
GO
INSERT [dbo].[tUserInfos] ([UserInfoId], [UserId], [LocationId], [Email], [Phone], [DOB], [DateCreated]) VALUES (2, 2, 2, N'tony@rebelsalute.com', N'000-000-0000', CAST(N'1998-04-01' AS Date), CAST(N'2025-04-20T10:54:50.577' AS DateTime))
GO
INSERT [dbo].[tUserInfos] ([UserInfoId], [UserId], [LocationId], [Email], [Phone], [DOB], [DateCreated]) VALUES (3, 3, 2, N'user1@gmail.com', N'8888888888', CAST(N'2000-03-03' AS Date), CAST(N'2025-04-22T12:43:05.710' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tUserInfos] OFF
GO
SET IDENTITY_INSERT [dbo].[tUserProfiles] ON 

GO
INSERT [dbo].[tUserProfiles] ([UserProfileId], [UserId], [Bio], [Picture], [FollowerCount], [FollowingCount]) VALUES (1, 1, N'I haven''t updated my bio yet...', N'https://soundpalette.s3.us-east-2.amazonaws.com/files/b0ea98c6-14e7-4f94-8910-805dbad53bed_1-2025-04-20-10-05-21.jpg', 0, 0)
GO
INSERT [dbo].[tUserProfiles] ([UserProfileId], [UserId], [Bio], [Picture], [FollowerCount], [FollowingCount]) VALUES (2, 2, N'I haven''t updated my bio yet...', N'https://soundpalette.s3.us-east-2.amazonaws.com/files/415159bc-dbc5-4cfa-8ff5-4dbe69544ab8_2-2025-04-20-10-54-50.jpg', 1, 0)
GO
INSERT [dbo].[tUserProfiles] ([UserProfileId], [UserId], [Bio], [Picture], [FollowerCount], [FollowingCount]) VALUES (3, 3, N'I haven''t updated my bio yet...', N'/dev/null', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[tUserProfiles] OFF
GO
SET IDENTITY_INSERT [dbo].[tUsers] ON 

GO
INSERT [dbo].[tUsers] ([UserId], [Username], [Password]) VALUES (1, N'horse', N'12345Fu!')
GO
INSERT [dbo].[tUsers] ([UserId], [Username], [Password]) VALUES (2, N'rebel', N'12345Fu!')
GO
INSERT [dbo].[tUsers] ([UserId], [Username], [Password]) VALUES (3, N'user1', N'password1!')
GO
SET IDENTITY_INSERT [dbo].[tUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[tUserTags] ON 

GO
INSERT [dbo].[tUserTags] ([UserTagId], [UserId], [TagId]) VALUES (1, 1, 7)
GO
INSERT [dbo].[tUserTags] ([UserTagId], [UserId], [TagId]) VALUES (2, 1, 3)
GO
INSERT [dbo].[tUserTags] ([UserTagId], [UserId], [TagId]) VALUES (3, 2, 5)
GO
INSERT [dbo].[tUserTags] ([UserTagId], [UserId], [TagId]) VALUES (4, 2, 1)
GO
INSERT [dbo].[tUserTags] ([UserTagId], [UserId], [TagId]) VALUES (5, 3, 7)
GO
INSERT [dbo].[tUserTags] ([UserTagId], [UserId], [TagId]) VALUES (6, 3, 3)
GO
INSERT [dbo].[tUserTags] ([UserTagId], [UserId], [TagId]) VALUES (7, 3, 5)
GO
INSERT [dbo].[tUserTags] ([UserTagId], [UserId], [TagId]) VALUES (8, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[tUserTags] OFF
GO
/****** Object:  Index [IX_tChatroomMembers_ChatroomId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tChatroomMembers_ChatroomId] ON [dbo].[tChatroomMembers]
(
	[ChatroomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tChatroomMembers_ChatroomMemberId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tChatroomMembers_ChatroomMemberId] ON [dbo].[tChatroomMembers]
(
	[ChatroomMemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tChatroomMembers_UserId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tChatroomMembers_UserId] ON [dbo].[tChatroomMembers]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tChatrooms_ChatroomId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tChatrooms_ChatroomId] ON [dbo].[tChatrooms]
(
	[ChatroomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tFiles_FileId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tFiles_FileId] ON [dbo].[tFiles]
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tFiles_UserId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tFiles_UserId] ON [dbo].[tFiles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tFileTypes_FileTypeName]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tFileTypes_FileTypeName] ON [dbo].[tFileTypes]
(
	[FileTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tLocations_LocationName]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tLocations_LocationName] ON [dbo].[tLocations]
(
	[LocationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tMessages_ChatroomMemberId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tMessages_ChatroomMemberId] ON [dbo].[tMessages]
(
	[ChatroomMemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tMessages_MessageId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tMessages_MessageId] ON [dbo].[tMessages]
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tNotifications_NotificationId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tNotifications_NotificationId] ON [dbo].[tNotifications]
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tNotifications_UserId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tNotifications_UserId] ON [dbo].[tNotifications]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tNotificationSettings_NotificationSettingId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tNotificationSettings_NotificationSettingId] ON [dbo].[tNotificationSettings]
(
	[NotificationSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tNotificationSettings_UserId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tNotificationSettings_UserId] ON [dbo].[tNotificationSettings]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tNotificationTypes_NotificationTypeId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tNotificationTypes_NotificationTypeId] ON [dbo].[tNotificationTypes]
(
	[NotificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tPostComments_PostId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tPostComments_PostId] ON [dbo].[tPostComments]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tPostContents_PostId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tPostContents_PostId] ON [dbo].[tPostContents]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tPostLikes_PostId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tPostLikes_PostId] ON [dbo].[tPostLikes]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tPostLikes_UserId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tPostLikes_UserId] ON [dbo].[tPostLikes]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tPosts_PostTypeId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tPosts_PostTypeId] ON [dbo].[tPosts]
(
	[PostTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tPosts_UserId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tPosts_UserId] ON [dbo].[tPosts]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tPostSaves_UserId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tPostSaves_UserId] ON [dbo].[tPostSaves]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tPostTags_PostId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tPostTags_PostId] ON [dbo].[tPostTags]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tPostTags_TagId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tPostTags_TagId] ON [dbo].[tPostTags]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tPostTypes_PostTypeName]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tPostTypes_PostTypeName] ON [dbo].[tPostTypes]
(
	[PostTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tPostUserTags_PostId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tPostUserTags_PostId] ON [dbo].[tPostUserTags]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tPostUserTags_UserId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tPostUserTags_UserId] ON [dbo].[tPostUserTags]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tTags_TagName]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tTags_TagName] ON [dbo].[tTags]
(
	[TagName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tUserFollowers_FollowerId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tUserFollowers_FollowerId] ON [dbo].[tUserFollowers]
(
	[FollowerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tUserInfos_UserId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tUserInfos_UserId] ON [dbo].[tUserInfos]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tUserProfiles_UserId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tUserProfiles_UserId] ON [dbo].[tUserProfiles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tUsers__536C85E4892B9F0A]    Script Date: 4/25/2025 9:19:14 PM ******/
ALTER TABLE [dbo].[tUsers] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tUsers_Username]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tUsers_Username] ON [dbo].[tUsers]
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tUserTags_TagId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tUserTags_TagId] ON [dbo].[tUserTags]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tUserTags_UserId]    Script Date: 4/25/2025 9:19:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_tUserTags_UserId] ON [dbo].[tUserTags]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tFiles] ADD  DEFAULT ('/dev/null/') FOR [FileName]
GO
ALTER TABLE [dbo].[tFiles] ADD  DEFAULT ('/dev/null/') FOR [FileUrl]
GO
ALTER TABLE [dbo].[tFiles] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tNotifications] ADD  DEFAULT ((1)) FOR [DeviceIsActive]
GO
ALTER TABLE [dbo].[tNotifications] ADD  DEFAULT ((1)) FOR [AppIsActive]
GO
ALTER TABLE [dbo].[tPosts] ADD  DEFAULT ((0)) FOR [IsPremium]
GO
ALTER TABLE [dbo].[tPosts] ADD  DEFAULT ((0)) FOR [IsMature]
GO
ALTER TABLE [dbo].[tPosts] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tPosts] ADD  DEFAULT ((0)) FOR [CommentCount]
GO
ALTER TABLE [dbo].[tPosts] ADD  DEFAULT ((0)) FOR [LikeCount]
GO
ALTER TABLE [dbo].[tPosts] ADD  DEFAULT ((0)) FOR [FileId]
GO
ALTER TABLE [dbo].[tUserProfiles] ADD  DEFAULT ((0)) FOR [FollowerCount]
GO
ALTER TABLE [dbo].[tUserProfiles] ADD  DEFAULT ((0)) FOR [FollowingCount]
GO
ALTER TABLE [dbo].[tChatroomMembers]  WITH CHECK ADD  CONSTRAINT [FK_tChatroomMembers_tChatrooms_ChatroomId] FOREIGN KEY([ChatroomId])
REFERENCES [dbo].[tChatrooms] ([ChatroomId])
GO
ALTER TABLE [dbo].[tChatroomMembers] CHECK CONSTRAINT [FK_tChatroomMembers_tChatrooms_ChatroomId]
GO
ALTER TABLE [dbo].[tChatroomMembers]  WITH CHECK ADD  CONSTRAINT [FK_tChatroomMembers_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tChatroomMembers] CHECK CONSTRAINT [FK_tChatroomMembers_tUsers_UserId]
GO
ALTER TABLE [dbo].[tFiles]  WITH CHECK ADD  CONSTRAINT [FK_tFiles_tFileTypes_FileTypeId] FOREIGN KEY([FileTypeId])
REFERENCES [dbo].[tFileTypes] ([FileTypeId])
GO
ALTER TABLE [dbo].[tFiles] CHECK CONSTRAINT [FK_tFiles_tFileTypes_FileTypeId]
GO
ALTER TABLE [dbo].[tFiles]  WITH CHECK ADD  CONSTRAINT [FK_tFiles_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tFiles] CHECK CONSTRAINT [FK_tFiles_tUsers_UserId]
GO
ALTER TABLE [dbo].[tMessages]  WITH CHECK ADD  CONSTRAINT [FK_tMessages_tChatroomMembers_ChatroomMemberId] FOREIGN KEY([ChatroomMemberId])
REFERENCES [dbo].[tChatroomMembers] ([ChatroomMemberId])
GO
ALTER TABLE [dbo].[tMessages] CHECK CONSTRAINT [FK_tMessages_tChatroomMembers_ChatroomMemberId]
GO
ALTER TABLE [dbo].[tNotifications]  WITH CHECK ADD  CONSTRAINT [FK_tNotifications_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tNotifications] CHECK CONSTRAINT [FK_tNotifications_tUsers_UserId]
GO
ALTER TABLE [dbo].[tNotificationSettings]  WITH CHECK ADD  CONSTRAINT [FK_tNotificationSettings_tNotificationType_NotificationTypeId] FOREIGN KEY([NotificationTypeId])
REFERENCES [dbo].[tNotificationTypes] ([NotificationTypeId])
GO
ALTER TABLE [dbo].[tNotificationSettings] CHECK CONSTRAINT [FK_tNotificationSettings_tNotificationType_NotificationTypeId]
GO
ALTER TABLE [dbo].[tNotificationSettings]  WITH CHECK ADD  CONSTRAINT [FK_tNotificationSettings_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tNotificationSettings] CHECK CONSTRAINT [FK_tNotificationSettings_tUsers_UserId]
GO
ALTER TABLE [dbo].[tPostComments]  WITH CHECK ADD  CONSTRAINT [FK_tPostComments_tPosts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[tPosts] ([PostId])
GO
ALTER TABLE [dbo].[tPostComments] CHECK CONSTRAINT [FK_tPostComments_tPosts_PostId]
GO
ALTER TABLE [dbo].[tPostComments]  WITH CHECK ADD  CONSTRAINT [FK_tPostComments_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tPostComments] CHECK CONSTRAINT [FK_tPostComments_tUsers_UserId]
GO
ALTER TABLE [dbo].[tPostContents]  WITH CHECK ADD  CONSTRAINT [FK_tPostContents_tPosts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[tPosts] ([PostId])
GO
ALTER TABLE [dbo].[tPostContents] CHECK CONSTRAINT [FK_tPostContents_tPosts_PostId]
GO
ALTER TABLE [dbo].[tPostLikes]  WITH CHECK ADD  CONSTRAINT [FK_tPostLikes_tPosts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[tPosts] ([PostId])
GO
ALTER TABLE [dbo].[tPostLikes] CHECK CONSTRAINT [FK_tPostLikes_tPosts_PostId]
GO
ALTER TABLE [dbo].[tPostLikes]  WITH CHECK ADD  CONSTRAINT [FK_tPostLikes_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tPostLikes] CHECK CONSTRAINT [FK_tPostLikes_tUsers_UserId]
GO
ALTER TABLE [dbo].[tPosts]  WITH CHECK ADD  CONSTRAINT [FK_tPosts_tPostTypes_PostTypeId] FOREIGN KEY([PostTypeId])
REFERENCES [dbo].[tPostTypes] ([PostTypeId])
GO
ALTER TABLE [dbo].[tPosts] CHECK CONSTRAINT [FK_tPosts_tPostTypes_PostTypeId]
GO
ALTER TABLE [dbo].[tPosts]  WITH CHECK ADD  CONSTRAINT [FK_tPosts_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tPosts] CHECK CONSTRAINT [FK_tPosts_tUsers_UserId]
GO
ALTER TABLE [dbo].[tPostSaves]  WITH CHECK ADD  CONSTRAINT [FK_tPostSaves_tPosts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[tPosts] ([PostId])
GO
ALTER TABLE [dbo].[tPostSaves] CHECK CONSTRAINT [FK_tPostSaves_tPosts_PostId]
GO
ALTER TABLE [dbo].[tPostSaves]  WITH CHECK ADD  CONSTRAINT [FK_tPostSaves_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tPostSaves] CHECK CONSTRAINT [FK_tPostSaves_tUsers_UserId]
GO
ALTER TABLE [dbo].[tPostTags]  WITH CHECK ADD  CONSTRAINT [FK_tPostTags_tPosts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[tPosts] ([PostId])
GO
ALTER TABLE [dbo].[tPostTags] CHECK CONSTRAINT [FK_tPostTags_tPosts_PostId]
GO
ALTER TABLE [dbo].[tPostTags]  WITH CHECK ADD  CONSTRAINT [FK_tPostTags_tTags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[tTags] ([TagId])
GO
ALTER TABLE [dbo].[tPostTags] CHECK CONSTRAINT [FK_tPostTags_tTags_TagId]
GO
ALTER TABLE [dbo].[tPostUserTags]  WITH CHECK ADD  CONSTRAINT [FK_tPostUserTags_tPosts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[tPosts] ([PostId])
GO
ALTER TABLE [dbo].[tPostUserTags] CHECK CONSTRAINT [FK_tPostUserTags_tPosts_PostId]
GO
ALTER TABLE [dbo].[tPostUserTags]  WITH CHECK ADD  CONSTRAINT [FK_tPostUserTags_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tPostUserTags] CHECK CONSTRAINT [FK_tPostUserTags_tUsers_UserId]
GO
ALTER TABLE [dbo].[tUserFollowers]  WITH CHECK ADD  CONSTRAINT [FK_tUserFollowers_tUsers_FollowerId] FOREIGN KEY([FollowerId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tUserFollowers] CHECK CONSTRAINT [FK_tUserFollowers_tUsers_FollowerId]
GO
ALTER TABLE [dbo].[tUserFollowers]  WITH CHECK ADD  CONSTRAINT [FK_tUserFollowers_tUsers_FollowingId] FOREIGN KEY([FollowingId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tUserFollowers] CHECK CONSTRAINT [FK_tUserFollowers_tUsers_FollowingId]
GO
ALTER TABLE [dbo].[tUserInfos]  WITH CHECK ADD  CONSTRAINT [FK_tUserInfos_tUsers_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[tLocations] ([LocationId])
GO
ALTER TABLE [dbo].[tUserInfos] CHECK CONSTRAINT [FK_tUserInfos_tUsers_LocationId]
GO
ALTER TABLE [dbo].[tUserInfos]  WITH CHECK ADD  CONSTRAINT [FK_tUserInfos_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tUserInfos] CHECK CONSTRAINT [FK_tUserInfos_tUsers_UserId]
GO
ALTER TABLE [dbo].[tUserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_tUserProfiles_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tUserProfiles] CHECK CONSTRAINT [FK_tUserProfiles_tUsers_UserId]
GO
ALTER TABLE [dbo].[tUserTags]  WITH CHECK ADD  CONSTRAINT [FK_tUserTags_tTags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[tTags] ([TagId])
GO
ALTER TABLE [dbo].[tUserTags] CHECK CONSTRAINT [FK_tUserTags_tTags_TagId]
GO
ALTER TABLE [dbo].[tUserTags]  WITH CHECK ADD  CONSTRAINT [FK_tUserTags_tUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tUsers] ([UserId])
GO
ALTER TABLE [dbo].[tUserTags] CHECK CONSTRAINT [FK_tUserTags_tUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [SP] SET  READ_WRITE 
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

CREATE TRIGGER Increment_User_Followers
ON tUserFollowers
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON; 

    UPDATE tUserProfiles
    SET FollowerCount = FollowerCount + 1
    FROM tUserProfiles
    INNER JOIN inserted i ON tUserProfiles.UserId = i.FollowingId;
END;
GO

CREATE TRIGGER Decrement_User_Followers
ON tUserFollowers
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON; 

    UPDATE tUserProfiles
    SET FollowerCount = FollowerCount - 1
    FROM tUserProfiles
    INNER JOIN deleted i ON tUserProfiles.UserId = i.FollowingId;
END;
GO


CREATE TRIGGER Increment_User_Following
ON tUserFollowers
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON; 

    UPDATE tUserProfiles
    SET FollowingCount = FollowingCount + 1
    FROM tUserProfiles
    INNER JOIN inserted i ON tUserProfiles.UserId = i.FollowerId;
END;
GO

CREATE TRIGGER Decrement_User_Following
ON tUserFollowers
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON; 

    UPDATE tUserProfiles
    SET FollowingCount = FollowingCount - 1
    FROM tUserProfiles
    INNER JOIN deleted i ON tUserProfiles.UserId = i.FollowerId;
END;
GO