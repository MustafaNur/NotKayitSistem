USE [master]
GO
/****** Object:  Database [DbNotKayıt]    Script Date: 6.07.2023 20:31:47 ******/
CREATE DATABASE [DbNotKayıt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbNotKayıt', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbNotKayıt.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbNotKayıt_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbNotKayıt_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DbNotKayıt] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbNotKayıt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbNotKayıt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbNotKayıt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbNotKayıt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbNotKayıt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbNotKayıt] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbNotKayıt] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbNotKayıt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbNotKayıt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbNotKayıt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbNotKayıt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbNotKayıt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbNotKayıt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbNotKayıt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbNotKayıt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbNotKayıt] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbNotKayıt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbNotKayıt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbNotKayıt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbNotKayıt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbNotKayıt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbNotKayıt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbNotKayıt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbNotKayıt] SET RECOVERY FULL 
GO
ALTER DATABASE [DbNotKayıt] SET  MULTI_USER 
GO
ALTER DATABASE [DbNotKayıt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbNotKayıt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbNotKayıt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbNotKayıt] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbNotKayıt] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbNotKayıt] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DbNotKayıt', N'ON'
GO
ALTER DATABASE [DbNotKayıt] SET QUERY_STORE = OFF
GO
USE [DbNotKayıt]
GO
/****** Object:  Table [dbo].[TblDers]    Script Date: 6.07.2023 20:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDers](
	[OgrID] [smallint] IDENTITY(1,1) NOT NULL,
	[OgrNumara] [char](4) NULL,
	[OgrAd] [varchar](50) NULL,
	[OgrSoyad] [varchar](50) NULL,
	[OgrS1] [tinyint] NULL,
	[OgrS2] [tinyint] NULL,
	[OgrS3] [tinyint] NULL,
	[Ortalama] [decimal](18, 2) NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_TblDers] PRIMARY KEY CLUSTERED 
(
	[OgrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblDers] ON 

INSERT [dbo].[TblDers] ([OgrID], [OgrNumara], [OgrAd], [OgrSoyad], [OgrS1], [OgrS2], [OgrS3], [Ortalama], [Durum]) VALUES (1, N'1235', N'Ali', N'Yıldız', 75, 81, 55, CAST(70.33 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblDers] ([OgrID], [OgrNumara], [OgrAd], [OgrSoyad], [OgrS1], [OgrS2], [OgrS3], [Ortalama], [Durum]) VALUES (2, N'1236', N'Mehmet', N'Çınar', 78, 95, 56, CAST(76.33 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblDers] ([OgrID], [OgrNumara], [OgrAd], [OgrSoyad], [OgrS1], [OgrS2], [OgrS3], [Ortalama], [Durum]) VALUES (3, N'1237', N'Ayşe', N'Güneş', 65, 66, 78, CAST(69.67 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblDers] ([OgrID], [OgrNumara], [OgrAd], [OgrSoyad], [OgrS1], [OgrS2], [OgrS3], [Ortalama], [Durum]) VALUES (4, N'1238', N'Veysel', N'Çınar', 14, 55, 24, CAST(31.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[TblDers] ([OgrID], [OgrNumara], [OgrAd], [OgrSoyad], [OgrS1], [OgrS2], [OgrS3], [Ortalama], [Durum]) VALUES (5, N'1239', N'Eda', N'Kaya', 45, 65, 55, CAST(55.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblDers] ([OgrID], [OgrNumara], [OgrAd], [OgrSoyad], [OgrS1], [OgrS2], [OgrS3], [Ortalama], [Durum]) VALUES (6, N'1241', N'Furkan', N'İnce', 87, 65, 25, CAST(59.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblDers] ([OgrID], [OgrNumara], [OgrAd], [OgrSoyad], [OgrS1], [OgrS2], [OgrS3], [Ortalama], [Durum]) VALUES (7, N'1242', N'Baran', N'Yücedağ', 98, 78, 88, CAST(88.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblDers] ([OgrID], [OgrNumara], [OgrAd], [OgrSoyad], [OgrS1], [OgrS2], [OgrS3], [Ortalama], [Durum]) VALUES (8, N'1243', N'Yunus', N'Meşe', 15, 45, 45, CAST(35.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[TblDers] ([OgrID], [OgrNumara], [OgrAd], [OgrSoyad], [OgrS1], [OgrS2], [OgrS3], [Ortalama], [Durum]) VALUES (9, N'1244', N'Sinem', N'Telli', 98, 45, 45, CAST(62.67 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblDers] ([OgrID], [OgrNumara], [OgrAd], [OgrSoyad], [OgrS1], [OgrS2], [OgrS3], [Ortalama], [Durum]) VALUES (10, N'1245', N'Ömer', N'Öztürk', 98, 88, 55, CAST(69.33 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblDers] ([OgrID], [OgrNumara], [OgrAd], [OgrSoyad], [OgrS1], [OgrS2], [OgrS3], [Ortalama], [Durum]) VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblDers] OFF
GO
USE [master]
GO
ALTER DATABASE [DbNotKayıt] SET  READ_WRITE 
GO
