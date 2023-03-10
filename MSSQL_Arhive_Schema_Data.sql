USE [master]
GO
/****** Object:  Database [Archive]    Script Date: 23.02.2023 14:15:46 ******/
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
/****** Object:  Table [dbo].[Archive]    Script Date: 23.02.2023 14:15:46 ******/
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
/****** Object:  Table [dbo].[Client]    Script Date: 23.02.2023 14:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SecondName] [nvarchar](50) NOT NULL,
	[ThirdName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientOfferrings]    Script Date: 23.02.2023 14:15:46 ******/
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
/****** Object:  Table [dbo].[Document]    Script Date: 23.02.2023 14:15:46 ******/
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
/****** Object:  Table [dbo].[DocumentTheme]    Script Date: 23.02.2023 14:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentTheme](
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_DocumentTheme] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Archive] ON 

INSERT [dbo].[Archive] ([Id], [Shelf], [Ledge], [Sector], [SectorSerialNumber], [IsFilled]) VALUES (1, 1, 1, 1, N'SYZX1HMRCL', 1)
INSERT [dbo].[Archive] ([Id], [Shelf], [Ledge], [Sector], [SectorSerialNumber], [IsFilled]) VALUES (2, 1, 1, 2, N'5LI24Q48D6', 1)
INSERT [dbo].[Archive] ([Id], [Shelf], [Ledge], [Sector], [SectorSerialNumber], [IsFilled]) VALUES (3, 1, 1, 3, N'AP61Y6IS7Z', 1)
INSERT [dbo].[Archive] ([Id], [Shelf], [Ledge], [Sector], [SectorSerialNumber], [IsFilled]) VALUES (4, 1, 1, 4, N'BNDGYGOKWU', 1)
INSERT [dbo].[Archive] ([Id], [Shelf], [Ledge], [Sector], [SectorSerialNumber], [IsFilled]) VALUES (5, 1, 1, 5, N'U1GPG7Q54O', 1)
INSERT [dbo].[Archive] ([Id], [Shelf], [Ledge], [Sector], [SectorSerialNumber], [IsFilled]) VALUES (6, 1, 1, 6, N'J0A5UIJYHL', 1)
INSERT [dbo].[Archive] ([Id], [Shelf], [Ledge], [Sector], [SectorSerialNumber], [IsFilled]) VALUES (7, 1, 1, 7, N'QFAF099KMO', 1)
INSERT [dbo].[Archive] ([Id], [Shelf], [Ledge], [Sector], [SectorSerialNumber], [IsFilled]) VALUES (8, 1, 1, 8, N'2FT62VHNNM', 1)
INSERT [dbo].[Archive] ([Id], [Shelf], [Ledge], [Sector], [SectorSerialNumber], [IsFilled]) VALUES (9, 1, 2, 1, N'W47HWX3A6R', 1)
INSERT [dbo].[Archive] ([Id], [Shelf], [Ledge], [Sector], [SectorSerialNumber], [IsFilled]) VALUES (10, 1, 2, 2, N'NED8LJZEVZ', 0)
INSERT [dbo].[Archive] ([Id], [Shelf], [Ledge], [Sector], [SectorSerialNumber], [IsFilled]) VALUES (11, 1, 2, 3, N'5VEU2C0C25', 0)
INSERT [dbo].[Archive] ([Id], [Shelf], [Ledge], [Sector], [SectorSerialNumber], [IsFilled]) VALUES (12, 1, 2, 4, N'JG8MG9JQEE', 0)
SET IDENTITY_INSERT [dbo].[Archive] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([Id], [Name], [SecondName], [ThirdName], [PhoneNumber]) VALUES (1, N'Мария', N'Фёдорова', N'Фёдоровна', N'79993932441')
INSERT [dbo].[Client] ([Id], [Name], [SecondName], [ThirdName], [PhoneNumber]) VALUES (2, N'Федя', N'Романов', N'Михайловна', N'79993932442')
INSERT [dbo].[Client] ([Id], [Name], [SecondName], [ThirdName], [PhoneNumber]) VALUES (3, N'Дима', N'Кузнецов', N'Петровна', N'79993932443')
INSERT [dbo].[Client] ([Id], [Name], [SecondName], [ThirdName], [PhoneNumber]) VALUES (4, N'Катя', N'Ковалёва', N'Александровна', N'79993932444')
INSERT [dbo].[Client] ([Id], [Name], [SecondName], [ThirdName], [PhoneNumber]) VALUES (5, N'Алёна', N'Завьялова', N'Дмитриевна', N'79993932445')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientOfferrings] ON 

INSERT [dbo].[ClientOfferrings] ([Id], [DocumentId], [ClientId], [DateGiven], [DateReturn], [IsOverdue]) VALUES (1, 1, 1, CAST(N'2023-02-23T14:00:00.0000000' AS DateTime2), CAST(N'2023-03-23T14:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[ClientOfferrings] ([Id], [DocumentId], [ClientId], [DateGiven], [DateReturn], [IsOverdue]) VALUES (2, 2, 2, CAST(N'2023-02-23T14:00:00.0000001' AS DateTime2), CAST(N'2023-03-23T14:00:00.0000001' AS DateTime2), 0)
INSERT [dbo].[ClientOfferrings] ([Id], [DocumentId], [ClientId], [DateGiven], [DateReturn], [IsOverdue]) VALUES (3, 3, 2, CAST(N'2023-02-23T14:00:00.0000002' AS DateTime2), CAST(N'2023-03-23T14:00:00.0000002' AS DateTime2), 1)
INSERT [dbo].[ClientOfferrings] ([Id], [DocumentId], [ClientId], [DateGiven], [DateReturn], [IsOverdue]) VALUES (4, 4, 3, CAST(N'2023-02-23T14:00:00.0000003' AS DateTime2), CAST(N'2023-03-23T14:00:00.0000003' AS DateTime2), 0)
INSERT [dbo].[ClientOfferrings] ([Id], [DocumentId], [ClientId], [DateGiven], [DateReturn], [IsOverdue]) VALUES (5, 5, 4, CAST(N'2023-02-23T14:00:00.0000004' AS DateTime2), CAST(N'2023-03-23T14:00:00.0000004' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[ClientOfferrings] OFF
GO
SET IDENTITY_INSERT [dbo].[Document] ON 

INSERT [dbo].[Document] ([Id], [Name], [Theme], [SerialNumber], [Place], [AvalablePieces], [DateRegistered]) VALUES (1, N'рукопись войнича', N'литература', N'LI001', 1, 10, CAST(N'2023-02-23T14:00:00.0000000' AS DateTime2))
INSERT [dbo].[Document] ([Id], [Name], [Theme], [SerialNumber], [Place], [AvalablePieces], [DateRegistered]) VALUES (2, N'библия', N'литература', N'LI002', 2, 10, CAST(N'2023-02-23T14:00:00.0000001' AS DateTime2))
INSERT [dbo].[Document] ([Id], [Name], [Theme], [SerialNumber], [Place], [AvalablePieces], [DateRegistered]) VALUES (3, N'документация С#', N'учебное пособие', N'SL001', 3, 10, CAST(N'2023-02-23T14:00:00.0000002' AS DateTime2))
INSERT [dbo].[Document] ([Id], [Name], [Theme], [SerialNumber], [Place], [AvalablePieces], [DateRegistered]) VALUES (4, N'документация Python', N'учебное пособие', N'SL002', 4, 10, CAST(N'2023-02-23T14:00:00.0000003' AS DateTime2))
INSERT [dbo].[Document] ([Id], [Name], [Theme], [SerialNumber], [Place], [AvalablePieces], [DateRegistered]) VALUES (5, N'Преступление и наказание', N'литература', N'LI003', 5, 10, CAST(N'2023-02-23T14:00:00.0000004' AS DateTime2))
INSERT [dbo].[Document] ([Id], [Name], [Theme], [SerialNumber], [Place], [AvalablePieces], [DateRegistered]) VALUES (6, N'Война и мир', N'литература', N'LI004', 6, 10, CAST(N'2023-02-23T14:00:00.0000005' AS DateTime2))
INSERT [dbo].[Document] ([Id], [Name], [Theme], [SerialNumber], [Place], [AvalablePieces], [DateRegistered]) VALUES (7, N'Аттестация ПО', N'инструкция', N'IN001', 7, 10, CAST(N'2023-02-23T14:00:00.0000006' AS DateTime2))
INSERT [dbo].[Document] ([Id], [Name], [Theme], [SerialNumber], [Place], [AvalablePieces], [DateRegistered]) VALUES (8, N'Первая помощь', N'инструкция', N'IN002', 8, 10, CAST(N'2023-02-23T14:00:00.0000007' AS DateTime2))
INSERT [dbo].[Document] ([Id], [Name], [Theme], [SerialNumber], [Place], [AvalablePieces], [DateRegistered]) VALUES (9, N'Техника безопасности', N'инструкция', N'IN003', 9, 10, CAST(N'2023-02-23T14:00:00.0000008' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Document] OFF
GO
INSERT [dbo].[DocumentTheme] ([Name], [Description]) VALUES (N'инструкция', N'серийный номер начинается с букв IN')
INSERT [dbo].[DocumentTheme] ([Name], [Description]) VALUES (N'литература', N'серийный номер начинается с букв LI')
INSERT [dbo].[DocumentTheme] ([Name], [Description]) VALUES (N'учебное пособие', N'серийный номер начинается с букв SL')
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
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_Archive1] FOREIGN KEY([Place])
REFERENCES [dbo].[Archive] ([Id])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_Archive1]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_DocumentTheme] FOREIGN KEY([Theme])
REFERENCES [dbo].[DocumentTheme] ([Name])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_DocumentTheme]
GO
USE [master]
GO
ALTER DATABASE [Archive] SET  READ_WRITE 
GO
