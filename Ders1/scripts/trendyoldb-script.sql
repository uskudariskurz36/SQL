USE [master]
GO
/****** Object:  Database [TrendyolDB]    Script Date: 29.11.2022 09:12:17 ******/
DROP DATABASE IF EXISTS [TrendyolDB]
GO
/****** Object:  Database [TrendyolDB]    Script Date: 29.11.2022 09:12:17 ******/
CREATE DATABASE [TrendyolDB]
GO
ALTER DATABASE [TrendyolDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TrendyolDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TrendyolDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TrendyolDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TrendyolDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TrendyolDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TrendyolDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TrendyolDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TrendyolDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TrendyolDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TrendyolDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TrendyolDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TrendyolDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TrendyolDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TrendyolDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TrendyolDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TrendyolDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TrendyolDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TrendyolDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TrendyolDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TrendyolDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TrendyolDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TrendyolDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TrendyolDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TrendyolDB] SET RECOVERY FULL 
GO
ALTER DATABASE [TrendyolDB] SET  MULTI_USER 
GO
ALTER DATABASE [TrendyolDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TrendyolDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TrendyolDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TrendyolDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TrendyolDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TrendyolDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TrendyolDB', N'ON'
GO
ALTER DATABASE [TrendyolDB] SET QUERY_STORE = OFF
GO
USE [TrendyolDB]
GO
/****** Object:  Table [dbo].[BrandProducts]    Script Date: 29.11.2022 09:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrandProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[BrandId] [int] NULL,
 CONSTRAINT [PK_BrandProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 29.11.2022 09:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 29.11.2022 09:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 29.11.2022 09:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CategoryId] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsDetail]    Script Date: 29.11.2022 09:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsDetail](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Summary] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductsDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BrandProducts] ON 
GO
INSERT [dbo].[BrandProducts] ([Id], [ProductId], [BrandId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[BrandProducts] ([Id], [ProductId], [BrandId]) VALUES (2, 1, 2)
GO
INSERT [dbo].[BrandProducts] ([Id], [ProductId], [BrandId]) VALUES (3, 2, 1)
GO
INSERT [dbo].[BrandProducts] ([Id], [ProductId], [BrandId]) VALUES (4, 2, 3)
GO
SET IDENTITY_INSERT [dbo].[BrandProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 
GO
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (1, N'Eti')
GO
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (2, N'Ülker')
GO
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (3, N'Torku')
GO
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Atıştırmalık Gıda')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Temel Gıda')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price]) VALUES (1, N'Gofret', 1, CAST(12 AS Decimal(18, 0)))
GO
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price]) VALUES (2, N'Cips', 1, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price]) VALUES (3, N'Ekmek', 2, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price]) VALUES (4, N'Organik Ekmek', 2, CAST(6 AS Decimal(18, 0)))
GO
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price]) VALUES (5, N'Çikolata', 1, CAST(3 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[ProductsDetail] ([Id], [Description], [Summary]) VALUES (2, NULL, N'havasız')
GO
INSERT [dbo].[ProductsDetail] ([Id], [Description], [Summary]) VALUES (3, N'Kepeksiz', NULL)
GO
INSERT [dbo].[ProductsDetail] ([Id], [Description], [Summary]) VALUES (4, N'Kepekli', NULL)
GO
ALTER TABLE [dbo].[BrandProducts]  WITH CHECK ADD  CONSTRAINT [FK_BrandProducts_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[BrandProducts] CHECK CONSTRAINT [FK_BrandProducts_Brands]
GO
ALTER TABLE [dbo].[BrandProducts]  WITH CHECK ADD  CONSTRAINT [FK_BrandProducts_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[BrandProducts] CHECK CONSTRAINT [FK_BrandProducts_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[ProductsDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProductsDetail_Products] FOREIGN KEY([Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductsDetail] CHECK CONSTRAINT [FK_ProductsDetail_Products]
GO
USE [master]
GO
ALTER DATABASE [TrendyolDB] SET  READ_WRITE 
GO
