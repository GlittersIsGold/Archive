USE [master]
GO
/****** Object:  Database [Archive]    Script Date: 23.02.2023 13:41:11 ******/
CREATE DATABASE [Archive]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Archive', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.GLEAM\MSSQL\DATA\Archive.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Archive_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.GLEAM\MSSQL\DATA\Archive_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Archive] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Archive].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Archive] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Archive] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Archive] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Archive] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Archive] SET ARITHABORT OFF 
GO
ALTER DATABASE [Archive] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Archive] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Archive] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Archive] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Archive] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Archive] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Archive] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Archive] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Archive] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Archive] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Archive] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Archive] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Archive] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Archive] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Archive] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Archive] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Archive] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Archive] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Archive] SET  MULTI_USER 
GO
ALTER DATABASE [Archive] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Archive] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Archive] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Archive] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Archive] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Archive] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Archive] SET QUERY_STORE = OFF
GO
USE [Archive]
GO
/****** Object:  Table [dbo].[Archive]    Script Date: 23.02.2023 13:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Archive](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Shelf] [int] NOT NULL,
	[Ledge] [int] NOT NULL,
	[Sector] [int] NOT NULL,
	[SectorSerialNumber] [nvarchar](50) NOT NULL,
	[IsFilled] [bit] NOT NULL,
 CONSTRAINT [PK_Archive] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 23.02.2023 13:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SecondName] [nvarchar](50) NOT NULL,
	[ThirdName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientOfferrings]    Script Date: 23.02.2023 13:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientOfferrings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentId] [int] NOT NULL,
	[ClientId] [int] NOT NULL,
	[DateGiven] [datetime2](7) NOT NULL,
	[DateReturn] [datetime2](7) NOT NULL,
	[IsOverdue] [bit] NOT NULL,
 CONSTRAINT [PK_ClientOfferrings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 23.02.2023 13:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Theme] [nvarchar](50) NOT NULL,
	[SerialNumber] [nvarchar](50) NOT NULL,
	[Place] [int] NOT NULL,
	[AvalablePieces] [int] NOT NULL,
	[DateRegistered] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientOfferrings]  WITH CHECK ADD  CONSTRAINT [FK_ClientOfferrings_Client] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[ClientOfferrings] CHECK CONSTRAINT [FK_ClientOfferrings_Client]
GO
ALTER TABLE [dbo].[ClientOfferrings]  WITH CHECK ADD  CONSTRAINT [FK_ClientOfferrings_Document] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Document] ([Id])
GO
ALTER TABLE [dbo].[ClientOfferrings] CHECK CONSTRAINT [FK_ClientOfferrings_Document]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_Archive] FOREIGN KEY([Place])
REFERENCES [dbo].[Archive] ([Id])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_Archive]
GO
USE [master]
GO
ALTER DATABASE [Archive] SET  READ_WRITE 
GO