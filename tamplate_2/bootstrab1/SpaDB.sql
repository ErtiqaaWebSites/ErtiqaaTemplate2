USE [master]
GO
/****** Object:  Database [SpaDb]    Script Date: 12/01/2016 12:41:43 م ******/
CREATE DATABASE [SpaDb] ON  PRIMARY 
( NAME = N'SpaDb', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\SpaDb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SpaDb_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\SpaDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SpaDb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SpaDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SpaDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SpaDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SpaDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SpaDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SpaDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [SpaDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SpaDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SpaDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SpaDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SpaDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SpaDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SpaDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SpaDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SpaDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SpaDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SpaDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SpaDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SpaDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SpaDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SpaDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SpaDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SpaDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SpaDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SpaDb] SET  MULTI_USER 
GO
ALTER DATABASE [SpaDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SpaDb] SET DB_CHAINING OFF 
GO
USE [SpaDb]
GO
/****** Object:  Table [dbo].[_Footer]    Script Date: 12/01/2016 12:41:43 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Footer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[_Name] [nvarchar](max) NULL,
	[_Description] [nvarchar](max) NULL,
	[_Image] [nvarchar](max) NULL,
	[_Link] [nvarchar](max) NULL,
	[_Alt] [nvarchar](max) NULL,
	[_Title] [nvarchar](max) NULL,
	[_Display] [nvarchar](50) NULL,
 CONSTRAINT [PK__Footer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Images]    Script Date: 12/01/2016 12:41:43 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[_Title] [nvarchar](max) NULL,
	[_Alt] [nvarchar](max) NULL,
	[_Width] [int] NULL,
	[_Hight] [int] NULL,
	[_Link] [nvarchar](max) NOT NULL,
	[_Description] [nvarchar](max) NULL,
	[_Order] [int] NULL,
	[_Display] [nvarchar](50) NULL,
	[_Section_Id] [int] NULL,
 CONSTRAINT [PK__Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Menu]    Script Date: 12/01/2016 12:41:43 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[_String
_String
_String
_String] [nvarchar](50) NULL,
	[_Link] [nvarchar](max) NULL,
	[_Li] [nvarchar](max) NULL,
	[_Title] [nvarchar](max) NULL,
	[_Img] [nvarchar](max) NULL,
	[_ToolTip] [nvarchar](max) NULL,
	[_Main_Id] [int] NULL,
	[_Has_sub] [nvarchar](50) NULL,
	[_Display] [nvarchar](50) NULL,
	[_Alt] [nvarchar](max) NULL,
	[_Pro_Ico] [nvarchar](max) NULL,
 CONSTRAINT [PK__Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Section_Content]    Script Date: 12/01/2016 12:41:43 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Section_Content](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[_Section_Id] [int] NOT NULL,
	[_Txt_1] [nvarchar](max) NULL,
	[_Txt_2] [nvarchar](max) NULL,
	[_Txt_3] [nvarchar](max) NULL,
	[_Txt_4] [nvarchar](max) NULL,
	[_Txt_5] [nvarchar](max) NULL,
	[_Txt_6] [nvarchar](max) NULL,
	[_Txt_7] [nvarchar](max) NULL,
	[_Txt_8] [nvarchar](max) NULL,
	[_Url_1] [nvarchar](max) NULL,
	[_Url_2] [nvarchar](max) NULL,
	[_Url_3] [nvarchar](max) NULL,
	[_Url_4] [nvarchar](max) NULL,
	[_Url_5] [nvarchar](max) NULL,
	[_Url_6] [nvarchar](max) NULL,
	[_Url_7] [nvarchar](max) NULL,
	[_Url_8] [nvarchar](max) NULL,
	[_Img_1] [int] NULL,
	[_Img_2] [int] NULL,
	[_Img_3] [int] NULL,
	[_Img_4] [int] NULL,
	[_Img_5] [int] NULL,
	[_Img_6] [int] NULL,
	[_Img_7] [int] NULL,
	[_Img_8] [int] NULL,
	[_Description] [nvarchar](max) NULL,
	[_Order] [int] NULL,
 CONSTRAINT [PK__Section_Content] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Section_Table]    Script Date: 12/01/2016 12:41:43 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Section_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[_Section_Name] [nvarchar](50) NULL,
	[_Main_Txt_1] [nvarchar](max) NULL,
	[_Main_Txt_2] [nvarchar](max) NULL,
	[_Main_Txt_3] [nvarchar](max) NULL,
	[_Main_Txt_4] [nvarchar](max) NULL,
	[_Main_Txt_5] [nvarchar](max) NULL,
	[_Main_Img_1] [nvarchar](max) NULL,
	[_Main_Img_2] [nvarchar](max) NULL,
	[_Main_Img_3] [nvarchar](max) NULL,
	[_Main_Img_4] [nvarchar](max) NULL,
	[_Display] [nvarchar](50) NULL,
	[_Order] [int] NULL,
 CONSTRAINT [PK__Section_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colors]    Script Date: 12/01/2016 12:41:43 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[_Color1] [nvarchar](max) NULL,
	[_Color2] [nvarchar](max) NULL,
	[_Color3] [nvarchar](max) NULL,
	[_Color4] [nvarchar](max) NULL,
	[_Color5] [nvarchar](max) NULL,
	[_Color6] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images] FOREIGN KEY([_Img_1])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images1] FOREIGN KEY([_Img_2])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images1]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images2] FOREIGN KEY([_Img_3])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images2]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images3] FOREIGN KEY([_Img_4])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images3]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images4] FOREIGN KEY([_Img_5])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images4]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images5] FOREIGN KEY([_Img_6])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images5]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images6] FOREIGN KEY([_Img_7])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images6]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images7] FOREIGN KEY([_Img_8])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images7]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Section_Table] FOREIGN KEY([_Section_Id])
REFERENCES [dbo].[_Section_Table] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Section_Table]
GO
USE [master]
GO
ALTER DATABASE [SpaDb] SET  READ_WRITE 
GO
