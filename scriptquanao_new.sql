USE [master]
GO
/****** Object:  Database [AppBanQuanAoThoiTrangNam]    Script Date: 10/12/2024 17:02:48 ******/
CREATE DATABASE [AppBanQuanAoThoiTrangNam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AppBanQuanAoThoiTrangNam', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL16.CAROT\MSSQL\DATA\AppBanQuanAoThoiTrangNam.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AppBanQuanAoThoiTrangNam_log', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL16.CAROT\MSSQL\DATA\AppBanQuanAoThoiTrangNam_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AppBanQuanAoThoiTrangNam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET ARITHABORT OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET RECOVERY FULL 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET  MULTI_USER 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AppBanQuanAoThoiTrangNam', N'ON'
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET QUERY_STORE = ON
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AppBanQuanAoThoiTrangNam]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Anh]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anh](
	[ID] [uniqueidentifier] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[DuongDan] [varchar](100) NOT NULL,
	[IDMauSac] [uniqueidentifier] NULL,
	[IDSanPham] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Anh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietGioHang]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHang](
	[ID] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[IDCTSP] [uniqueidentifier] NOT NULL,
	[IDNguoiDung] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ChiTietGioHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[ID] [uniqueidentifier] NOT NULL,
	[DonGia] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[IDCTSP] [uniqueidentifier] NOT NULL,
	[IDHoaDon] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPham](
	[ID] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaBan] [int] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[IDSanPham] [uniqueidentifier] NOT NULL,
	[IDKhuyenMai] [uniqueidentifier] NULL,
	[IDMauSac] [uniqueidentifier] NOT NULL,
	[IDKichCo] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](100) NULL,
 CONSTRAINT [PK_ChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[ID] [uniqueidentifier] NOT NULL,
	[BinhLuan] [nvarchar](250) NULL,
	[Sao] [int] NULL,
	[TrangThai] [int] NOT NULL,
	[NgayDanhGia] [datetime] NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[IDKhachHang] [uniqueidentifier] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID] [uniqueidentifier] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[NgayThanhToan] [datetime] NULL,
	[TenNguoiNhan] [nvarchar](100) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[TienShip] [int] NOT NULL,
	[PhuongThucThanhToan] [nvarchar](max) NULL,
	[TrangThaiGiaoHang] [int] NOT NULL,
	[IDNhanVien] [uniqueidentifier] NULL,
	[IDVoucher] [uniqueidentifier] NULL,
	[LoaiHD] [int] NOT NULL,
	[MaHD] [nvarchar](max) NOT NULL,
	[TongTien] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[NgayNhanHang] [datetime] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KichCo]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KichCo](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](10) NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_KichCo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhachHang] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[GioiTinh] [int] NULL,
	[NgaySinh] [datetime] NULL,
	[Email] [varchar](250) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](10) NULL,
	[DiemTich] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[GiaTri] [int] NOT NULL,
	[NgayApDung] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[MoTa] [nvarchar](50) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuTichDiem]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuTichDiem](
	[ID] [uniqueidentifier] NOT NULL,
	[Diem] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[IDKhachHang] [uniqueidentifier] NULL,
	[IDQuyDoiDiem] [uniqueidentifier] NOT NULL,
	[IDHoaDon] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_LichSuTichDiem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](30) NOT NULL,
	[TrangThai] [int] NOT NULL,
	[IDLoaiSPCha] [uniqueidentifier] NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[Ma] [varchar](10) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_MauSac] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[SDT] [nvarchar](20) NOT NULL,
	[DiaChi] [nvarchar](250) NOT NULL,
	[TrangThai] [int] NULL,
	[IDVaiTro] [uniqueidentifier] NOT NULL,
	[PassWord] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyDoiDiem]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDoiDiem](
	[ID] [uniqueidentifier] NOT NULL,
	[TiLeTichDiem] [int] NOT NULL,
	[TiLeTieuDiem] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_QuyDoiDiem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](200) NOT NULL,
	[MoTa] [nvarchar](300) NULL,
	[TrangThai] [int] NOT NULL,
	[IDLoaiSP] [uniqueidentifier] NOT NULL,
	[IDChatLieu] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_VaiTro] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 10/12/2024 17:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[HinhThucGiamGia] [int] NOT NULL,
	[SoTienCan] [int] NOT NULL,
	[GiaTri] [int] NOT NULL,
	[NgayApDung] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MoTa] [nvarchar](50) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916130906_DuAnTotNghiep', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230928163807_AddPasswordNhanVien', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230930125837_UpdateThuocTinhSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230930135330_UpdateChiTietBT', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231002083559_s', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005050344_AddChiTietPTTT', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231008014048_SuaBienThe', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231011035651_AddAnhBienThe', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231011065855_AddBTisDefault', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231011070651_AlowKhuyenMaiNull', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231030040716_SuaSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231105141502_UpdateHoaDon', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231107032841_addtongTien', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231107044422_createHDOff', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231113143350_SuaPTTT', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231113145238_AddGhiChuToHoaDon', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231117013517_ThemMaSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231122174719_xoaVat-sdiem', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231201153128_SuaDBThemNgayNhanHangHoaDon', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231206103352_SuaChiTietSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231207161133_SuaKMVoucherKhSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231214153010_MaHoaMatKhau', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231214161628_UpdateNhanVien', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231215010757_InitNhanVien', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231215163422_SuaDB', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231219163516_updateSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231219164049_suaDBSabPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231219164623_SuaMoTaSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240406134915_SuaAdmin', N'6.0.21')
GO
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'acacc102-a13a-49e8-9302-02535acd1818', 1, N'bannerx243438169.png', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'1fb68e4c-f1bb-4164-a5ff-106217b8ad41', 1, N'Xanh_Neon_1242813769.webp', N'4552f6dc-53f3-4966-a4bb-5a9328e972b8', N'6d969295-0645-4e16-87d1-846038747d99')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'10b38061-3679-41fd-8e34-163e120af9b3', 1, N'vn-11134207-7r98o-ls483ybhznwk54_tn240111168.webp', N'2e31b635-3164-4391-8007-cdee9e3b7d1a', N'30af833f-e6ae-4827-beec-44d2b14a1b02')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'286be5d0-3951-4cf1-ad7f-18142df0f1c0', 1, N'13c39e74a0de7a0c55f3ffa76d6874de.jpg_720x720q80245115511.jpg', N'a5919aa2-b789-423a-b962-6d0f51673a44', N'8506c67c-ef59-47b6-a501-53ccda063ae5')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'b07818e7-0f5a-4362-83fe-1c1926fc55c3', 1, N'e7803d472db1c67cc189dcaa77c2567f.jpg_720x720q80240749621.jpg', N'a5919aa2-b789-423a-b962-6d0f51673a44', N'4884169c-7103-4932-af8b-77b353b4019d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'993570f7-482a-4441-a1bb-2f30dddb0af1', 1, N'Xanh_Duong_1242813760.webp', N'a5919aa2-b789-423a-b962-6d0f51673a44', N'6d969295-0645-4e16-87d1-846038747d99')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'aeb00090-6ccf-4d6e-a060-3ce351733e23', 1, N'080e3fe11aed44804c64f5c7c91f8b8a243728466.jpg', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'2dae67c9-e10a-4529-b00d-514a2633447c', 1, N'bannerx242444235.png', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'8c608a84-35b2-45d3-8007-573a6f70813d', 1, N'e7803d472db1c67cc189dcaa77c2567f.jpg_720x720q80245605862.jpg', N'a5919aa2-b789-423a-b962-6d0f51673a44', N'8e8b89f2-d437-42d2-90dc-678d1770e829')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'd3ba21f9-3c18-4012-a0c2-63cb64a020df', 1, N'52227e02fad7b20c4e9db81e13c5897e245151327.jpg', N'5984fce1-b2f4-4b43-a2f0-30cb3ebefaec', N'8506c67c-ef59-47b6-a501-53ccda063ae5')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'a07aaa66-9411-4cf5-b809-66f33c1368f5', 1, N'080e3fe11aed44804c64f5c7c91f8b8a243720557.jpg', N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'f62b4a51-4f5e-4dcb-8b7e-6bb6b43014dd', 1, N'a00069af2cfaa7980fedae6472b03987.jpg_720x720q80240419016.jpg', N'5984fce1-b2f4-4b43-a2f0-30cb3ebefaec', N'31e125aa-ea91-4941-bf9d-7981e62e1b35')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'1fde5fd6-5ee1-459c-93fd-739f77156848', 1, N'e7803d472db1c67cc189dcaa77c2567f.jpg_720x720q80245811992.jpg', N'a5919aa2-b789-423a-b962-6d0f51673a44', N'adadf1c6-22d3-468a-85a9-2c95c6018d2a')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'2d6b4569-eb19-4582-8c4d-8371b87f42be', 1, N'Áo Hoodie245651246.jpg', N'117b39b1-d5c6-4984-a1a0-8070b4d1063c', N'e7400427-12d0-4535-a4c5-7dadfe9ad1f1')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'08b95a3d-7bf6-4a36-a44b-94ae0a1c72b6', 1, N'4739ae4c18980ac103a9004b9940ac31245326303.jpg', N'ee6bc3a6-a09c-4c1c-ae32-c22578304978', N'8506c67c-ef59-47b6-a501-53ccda063ae5')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'd62bb0f7-bece-414b-9a51-94b9c1e42624', 1, N'Do_1242813770.webp', N'f7ea0204-6a31-4891-b807-cff779915b6d', N'6d969295-0645-4e16-87d1-846038747d99')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'3b533b70-5b5b-46b9-8ef4-953fd05d8462', 1, N'Screenshot (1)242501177.png', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'5042500b-3559-465b-a122-a40c19f4f55e', 1, N'ad97d0ac749ce3c3e57f2ba3d2ac40fe245254202.jpg', N'f7ea0204-6a31-4891-b807-cff779915b6d', N'8506c67c-ef59-47b6-a501-53ccda063ae5')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'64d98444-b838-4b7a-ac71-a5570616c8e0', 1, N'080e3fe11aed44804c64f5c7c91f8b8a243716811.jpg', N'ee6bc3a6-a09c-4c1c-ae32-c22578304978', N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'73fe5b22-f4b0-45ca-a8c1-a5f3b7310485', 1, N'bannerx243731121.png', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'94a73dbf-86fc-4b10-964b-aeb4779b676f', 1, N'f78786075b5f497a292847905e2b5715245959737.jpg', N'a5919aa2-b789-423a-b962-6d0f51673a44', N'36c65db0-0379-4302-9b80-cbe624a246bc')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'4b79b862-d1ed-4fe4-b2a0-af1c030f70f3', 1, N'e7803d472db1c67cc189dcaa77c2567f.jpg_720x720q80245637610.jpg', N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'8e8b89f2-d437-42d2-90dc-678d1770e829')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'9424c6f7-0adb-4f66-8ece-b163e348c15d', 1, N'080e3fe11aed44804c64f5c7c91f8b8a243909969.jpg', N'2e31b635-3164-4391-8007-cdee9e3b7d1a', N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'db63bcb7-590c-4d6c-9f7e-c1254a60806d', 1, N'Screenshot 2024-04-19 170634242452454.png', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'227fd63c-31d1-48b1-89c1-c3bcaeaf9232', 1, N'080e3fe11aed44804c64f5c7c91f8b8a243724055.jpg', N'ee6bc3a6-a09c-4c1c-ae32-c22578304978', N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'8fad197d-ccd6-402e-a141-d732e01488ad', 1, N'bannerx242456915.png', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'ad0c3e26-97cc-4415-8f01-fed88da95581', 1, N'13c39e74a0de7a0c55f3ffa76d6874de.jpg_720x720q80240712772.jpg', N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'4884169c-7103-4932-af8b-77b353b4019d')
GO
INSERT [dbo].[ChatLieu] ([ID], [Ten], [TrangThai]) VALUES (N'0282068c-edfd-4c76-a1b0-6f1698319eef', N'Lụa', 1)
INSERT [dbo].[ChatLieu] ([ID], [Ten], [TrangThai]) VALUES (N'0d16634e-c334-40f7-a407-982447d694d0', N'Polyme', 1)
INSERT [dbo].[ChatLieu] ([ID], [Ten], [TrangThai]) VALUES (N'7dda73f2-aae5-4659-8a86-f7f67c812dc9', N'Nhung', 1)
INSERT [dbo].[ChatLieu] ([ID], [Ten], [TrangThai]) VALUES (N'8aeacf00-8e48-4446-bbe2-fe1623973d65', N'Vải cotton', 1)
GO
INSERT [dbo].[ChiTietGioHang] ([ID], [SoLuong], [IDCTSP], [IDNguoiDung]) VALUES (N'748684b9-dc43-4779-8785-0d998ff3fc12', 1, N'df1fef02-c9d6-44cd-ae31-5eac2d19a8b0', N'e106c66d-f18d-4609-8a38-08e09d68e78c')
GO
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'b9ce9de5-f918-4f27-a603-001e6cd21714', 350000, 2, 1, N'f2b477ab-71f3-44f3-acbb-efe781e19cf1', N'0df91e61-60e4-448a-8fe3-38cb362d5fb4')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'643ecac7-87f2-495a-a10b-00caa8f0100b', 56000, 2, 1, N'4ec993f8-02ef-4eb9-a795-861a491d998a', N'0df91e61-60e4-448a-8fe3-38cb362d5fb4')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'7aeecff7-2c92-4bdd-bfce-01e17455e2d2', 56000, 2, 1, N'4ec993f8-02ef-4eb9-a795-861a491d998a', N'2dc0af1c-e5a7-46a6-9fe2-3fe4428c450d')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'56d0f287-7770-4714-bc95-06e5a7e28a20', 78000, 1, 1, N'44941a78-aa41-4665-9a69-f87ce5813fdb', N'2dc0af1c-e5a7-46a6-9fe2-3fe4428c450d')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'bd9ba65c-817a-4cf7-b7b0-07e0421e8098', 7890, 1, 1, N'df1fef02-c9d6-44cd-ae31-5eac2d19a8b0', N'63a3febc-cc9c-47f4-a078-980971101a75')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'f76392a8-ae8f-46eb-356f-08dc6435f149', 5, 1, 0, N'5bd080e7-111d-4de5-9090-1af02dd4ea29', N'6df7be80-fcd4-4c86-8291-2c6d2b6c6913')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'2fad54ae-447c-49b2-b483-24d9bcaba9e0', 56000, 1, 1, N'670f2484-17f4-49a2-aa0c-5a938a7bf37e', N'1861b136-ca44-40bd-93b0-467182641207')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'd48a5a13-6262-465f-80da-2752d21063f5', 350000, 4, 1, N'eba13915-c402-4b4d-b2ce-a3c4f7599d69', N'a6a6dcb6-b51a-4920-aca6-54dbdd65a3e8')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'c87c8828-837f-47b0-b2a5-345c4e6a216d', 99500, 4, 1, N'f8030ab8-5391-4170-a406-1686ffd82b83', N'0df91e61-60e4-448a-8fe3-38cb362d5fb4')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'7c9e825c-9f3a-42e4-ae3c-3605e9ad5e46', 5, 1, 1, N'5bd080e7-111d-4de5-9090-1af02dd4ea29', N'7ee3e777-d1c9-4aaf-88ac-0e71584d1c23')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'40e86511-0d1b-4244-94f7-3ad3b5ab17bb', 56000, 1, 1, N'670f2484-17f4-49a2-aa0c-5a938a7bf37e', N'63a3febc-cc9c-47f4-a078-980971101a75')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'1c556d96-5798-48f7-8419-42c7959f967a', 90000, 6, 1, N'e54e16df-633d-4bc9-8c1d-a22f52d7ec7d', N'94d65985-d90a-4bcf-b229-84add5975905')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'69de8df4-c774-49de-8f4e-4f5f9aecb1d9', 56000, 3, 1, N'4ec993f8-02ef-4eb9-a795-861a491d998a', N'c8655c1d-9ecc-40d7-9625-144bf336e77c')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'a67688f6-ff7e-4387-b830-5c022dc0e97d', 59000, 1, 1, N'c57acb3a-7bc8-45f3-8c14-37c9b8779560', N'7ee3e777-d1c9-4aaf-88ac-0e71584d1c23')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'1c80e8bc-9869-4e1a-baf9-631077629d24', 78900, 1, 1, N'df1fef02-c9d6-44cd-ae31-5eac2d19a8b0', N'0c62b898-7b68-4f02-bd9a-0933fd25eb9d')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'6c2fc2f0-0cf0-48bf-8227-7db8ed221588', 7890, 1, 1, N'df1fef02-c9d6-44cd-ae31-5eac2d19a8b0', N'c1d49a95-fb49-47f7-b1d6-1a5a1cfcd0d8')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'9e33b71a-adb2-436c-98e5-8465cfeee6b1', 59000, 1, 1, N'c57acb3a-7bc8-45f3-8c14-37c9b8779560', N'2dc0af1c-e5a7-46a6-9fe2-3fe4428c450d')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'fd3bdf80-1237-4e33-84d6-9289a11a0282', 56000, 1, 1, N'670f2484-17f4-49a2-aa0c-5a938a7bf37e', N'c8655c1d-9ecc-40d7-9625-144bf336e77c')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'2e080375-0081-49cd-af94-9caaba81f728', 70000, 2, 1, N'a2f73e18-7583-424d-866c-2f03af63e9db', N'0df91e61-60e4-448a-8fe3-38cb362d5fb4')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'fb53721c-8997-4b49-9a43-9e51371ac1e0', 78000, 1, 1, N'e998f9a0-bc1c-4688-98f1-59a64e9a33da', N'63a3febc-cc9c-47f4-a078-980971101a75')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'08a30c9d-8c1b-4bad-a94c-a97cc102dd87', 350000, 2, 1, N'eba13915-c402-4b4d-b2ce-a3c4f7599d69', N'ecff8535-aa74-4493-8c02-330715bdef2b')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'ac3d05bd-c718-4b2b-9975-ac8c3f42b65b', 56000, 1, 1, N'4ec993f8-02ef-4eb9-a795-861a491d998a', N'7ee3e777-d1c9-4aaf-88ac-0e71584d1c23')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'c8455cbe-39fd-45f4-b6d9-b801b39ce385', 88999, 1, 1, N'6c8aec13-a562-4850-90a7-6d2935dfc42e', N'5a58b00e-7eee-466e-849d-b89f6e7eb012')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'84c8d6fb-0876-4b4b-82e0-cbbe0ede87a0', 350000, 1, 1, N'fc7be193-b128-43ef-b93e-6027fb485182', N'0df91e61-60e4-448a-8fe3-38cb362d5fb4')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'35ab938d-d890-4832-93fc-cf00d041b487', 350000, 1, 1, N'23915b57-d65f-463b-ba87-c9f7c6915d04', N'0df91e61-60e4-448a-8fe3-38cb362d5fb4')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'9a027061-01ba-40d2-924e-d6d6abfce0da', 54000, 1, 1, N'5bd080e7-111d-4de5-9090-1af02dd4ea29', N'0c62b898-7b68-4f02-bd9a-0933fd25eb9d')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'2f274dd6-6cf8-4f72-896b-df081516832c', 78000, 2, 1, N'44941a78-aa41-4665-9a69-f87ce5813fdb', N'0df91e61-60e4-448a-8fe3-38cb362d5fb4')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'2d785df5-37db-433f-a6bf-e26bb0472d95', 90000, 1, 1, N'e54e16df-633d-4bc9-8c1d-a22f52d7ec7d', N'55ceffa5-5672-4007-9d47-5e3273213f54')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'd2115a3e-d8ed-4deb-900c-e4de6245014c', 78000, 2, 1, N'e998f9a0-bc1c-4688-98f1-59a64e9a33da', N'0df91e61-60e4-448a-8fe3-38cb362d5fb4')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'851c02d2-a2e7-49d2-8baf-ef6da6c4a8d5', 59000, 1, 1, N'c57acb3a-7bc8-45f3-8c14-37c9b8779560', N'0df91e61-60e4-448a-8fe3-38cb362d5fb4')
GO
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'f8030ab8-5391-4170-a406-1686ffd82b83', 0, 99500, CAST(N'2024-04-24T13:55:38.853' AS DateTime), 2, N'8e8b89f2-d437-42d2-90dc-678d1770e829', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP3XANHXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'9da0df7e-0850-4d39-85f0-17d4da0a6074', 100, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'4552f6dc-53f3-4966-a4bb-5a9328e972b8', N'1cda5b09-1fa5-4e55-86b4-9ab947992faf', N'SP9XANHLA10X')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'5bd080e7-111d-4de5-9090-1af02dd4ea29', 2, 54000, CAST(N'2024-04-24T13:59:39.750' AS DateTime), 1, N'36c65db0-0379-4302-9b80-cbe624a246bc', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'3c6dbcc1-78d9-4afe-b7bd-6ca99e321119', N'SP5XANHXXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'a2f73e18-7583-424d-866c-2f03af63e9db', 97, 70000, CAST(N'2024-04-24T13:51:39.323' AS DateTime), 2, N'8506c67c-ef59-47b6-a501-53ccda063ae5', NULL, N'5984fce1-b2f4-4b43-a2f0-30cb3ebefaec', N'1cda5b09-1fa5-4e55-86b4-9ab947992faf', N'SP2TIM10X')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'c57acb3a-7bc8-45f3-8c14-37c9b8779560', 0, 59000, CAST(N'2024-04-24T13:50:58.050' AS DateTime), 1, N'8506c67c-ef59-47b6-a501-53ccda063ae5', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'5e863e9f-8c80-4ea6-9903-01633155e470', N'SP2XANHX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'114432ae-d23d-4bed-a411-4a5c3bf6f325', 250, 289000, CAST(N'2024-12-09T11:56:36.887' AS DateTime), 1, N'e7400427-12d0-4535-a4c5-7dadfe9ad1f1', NULL, N'117b39b1-d5c6-4984-a1a0-8070b4d1063c', N'3c6dbcc1-78d9-4afe-b7bd-6ca99e321119', N'SP10BACXXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'e998f9a0-bc1c-4688-98f1-59a64e9a33da', 0, 78000, CAST(N'2024-04-24T13:58:07.117' AS DateTime), 1, N'adadf1c6-22d3-468a-85a9-2c95c6018d2a', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'5c33b977-5f2f-4abf-9f88-0934fbe6bbd5', N'SP4XANHS')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'5a23e146-2124-4b4a-a084-5a11683b349d', 2, 78888, CAST(N'2024-04-24T14:03:57.767' AS DateTime), 1, N'31e125aa-ea91-4941-bf9d-7981e62e1b35', NULL, N'5984fce1-b2f4-4b43-a2f0-30cb3ebefaec', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP7TIMXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'670f2484-17f4-49a2-aa0c-5a938a7bf37e', 85, 56000, CAST(N'2024-04-24T13:53:12.143' AS DateTime), 2, N'8506c67c-ef59-47b6-a501-53ccda063ae5', NULL, N'ee6bc3a6-a09c-4c1c-ae32-c22578304978', N'ca656d78-80a1-4409-933e-cc3ee5faf0d8', N'SP2NAUXXXL')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'df1fef02-c9d6-44cd-ae31-5eac2d19a8b0', 10, 79000, CAST(N'2024-04-24T14:00:54.387' AS DateTime), 1, N'30af833f-e6ae-4827-beec-44d2b14a1b02', NULL, N'2e31b635-3164-4391-8007-cdee9e3b7d1a', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP6VANGXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'fc7be193-b128-43ef-b93e-6027fb485182', 99, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'f7ea0204-6a31-4891-b807-cff779915b6d', N'add670bd-a69a-4200-9267-d54cf2171795', N'SP9DOXL')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'363d1c2c-27f7-4f53-af35-65eaeb6f0a5e', 100, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 1, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'1cda5b09-1fa5-4e55-86b4-9ab947992faf', N'SP9XANH10X')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'6c8aec13-a562-4850-90a7-6d2935dfc42e', 599, 88999, CAST(N'2024-04-22T15:36:33.610' AS DateTime), 0, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d', NULL, N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'5e863e9f-8c80-4ea6-9903-01633155e470', N'SP1DENX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'4618fb5c-8912-419d-adc9-7b9fec9b6152', 99, 789000, CAST(N'2024-04-24T15:07:44.520' AS DateTime), 2, N'4884169c-7103-4932-af8b-77b353b4019d', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP8XANHXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'4ec993f8-02ef-4eb9-a795-861a491d998a', 93, 56000, CAST(N'2024-04-24T13:39:00.493' AS DateTime), 1, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d', NULL, N'2e31b635-3164-4391-8007-cdee9e3b7d1a', N'1cda5b09-1fa5-4e55-86b4-9ab947992faf', N'SP1VANG10X')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'46fb4bc4-9a8c-42f2-81c5-8722639b5826', 100, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'4552f6dc-53f3-4966-a4bb-5a9328e972b8', N'b0219bd3-a2be-46f1-8612-90533e2892fb', N'SP9XANHLAXXL')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'e54e16df-633d-4bc9-8c1d-a22f52d7ec7d', 894, 90000, CAST(N'2024-04-22T15:40:10.583' AS DateTime), 0, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d', NULL, N'ee6bc3a6-a09c-4c1c-ae32-c22578304978', N'5e863e9f-8c80-4ea6-9903-01633155e470', N'SP1NAUX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'6589912c-c84c-47b6-a6bc-a379010052b3', 100, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'add670bd-a69a-4200-9267-d54cf2171795', N'SP9XANHXL')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'eba13915-c402-4b4d-b2ce-a3c4f7599d69', 96, 350000, CAST(N'2024-11-06T21:27:25.873' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'ca656d78-80a1-4409-933e-cc3ee5faf0d8', N'SP9XANHXXXL')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'e0b231d7-2293-40e5-ada3-accba39c3f55', 3, 890000, CAST(N'2024-04-24T15:07:02.717' AS DateTime), 1, N'4884169c-7103-4932-af8b-77b353b4019d', NULL, N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP8DENXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'f6caaaa2-fd08-4af5-b007-b7737fef1f36', 100, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'f7ea0204-6a31-4891-b807-cff779915b6d', N'ca656d78-80a1-4409-933e-cc3ee5faf0d8', N'SP9DOXXXL')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'4320df1a-ae38-42fe-8f77-c56514f0a2ec', 2, 99500, CAST(N'2024-04-24T13:56:33.177' AS DateTime), 1, N'8e8b89f2-d437-42d2-90dc-678d1770e829', NULL, N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP3DENXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'23915b57-d65f-463b-ba87-c9f7c6915d04', 99, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'b0219bd3-a2be-46f1-8612-90533e2892fb', N'SP9XANHXXL')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'5c742ff4-f07a-4359-95ad-cfb64d34dde9', 100, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'5c33b977-5f2f-4abf-9f88-0934fbe6bbd5', N'SP9XANHS')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'432c2fb6-bd1b-44a7-af1e-db67b0dface7', 100, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'4552f6dc-53f3-4966-a4bb-5a9328e972b8', N'5c33b977-5f2f-4abf-9f88-0934fbe6bbd5', N'SP9XANHLAS')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'48d63fce-a4a0-412c-b494-ea1e2b9af913', 100, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'f7ea0204-6a31-4891-b807-cff779915b6d', N'b0219bd3-a2be-46f1-8612-90533e2892fb', N'SP9DOXXL')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'60a08640-386a-4261-bc9e-ec28a65304f6', 100, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'f7ea0204-6a31-4891-b807-cff779915b6d', N'5c33b977-5f2f-4abf-9f88-0934fbe6bbd5', N'SP9DOS')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'f2b477ab-71f3-44f3-acbb-efe781e19cf1', 98, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'4552f6dc-53f3-4966-a4bb-5a9328e972b8', N'ca656d78-80a1-4409-933e-cc3ee5faf0d8', N'SP9XANHLAXXXL')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'4ba01f7d-b839-40fa-b7f0-f563ed37d65e', 100, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'4552f6dc-53f3-4966-a4bb-5a9328e972b8', N'add670bd-a69a-4200-9267-d54cf2171795', N'SP9XANHLAXL')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'44941a78-aa41-4665-9a69-f87ce5813fdb', 96, 78000, CAST(N'2024-04-24T13:52:42.283' AS DateTime), 2, N'8506c67c-ef59-47b6-a501-53ccda063ae5', NULL, N'f7ea0204-6a31-4891-b807-cff779915b6d', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP2DOXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'd87b0bb6-6c9a-4a9d-9910-f8e7866a42b7', 100, 350000, CAST(N'2024-11-06T21:27:25.877' AS DateTime), 2, N'6d969295-0645-4e16-87d1-846038747d99', NULL, N'f7ea0204-6a31-4891-b807-cff779915b6d', N'1cda5b09-1fa5-4e55-86b4-9ab947992faf', N'SP9DO10X')
GO
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'b9ce9de5-f918-4f27-a603-001e6cd21714', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'643ecac7-87f2-495a-a10b-00caa8f0100b', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'7aeecff7-2c92-4bdd-bfce-01e17455e2d2', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'56d0f287-7770-4714-bc95-06e5a7e28a20', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'bd9ba65c-817a-4cf7-b7b0-07e0421e8098', N'Rất oke', 4, 1, CAST(N'2024-04-24T14:23:01.673' AS DateTime))
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'f76392a8-ae8f-46eb-356f-08dc6435f149', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'2fad54ae-447c-49b2-b483-24d9bcaba9e0', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'd48a5a13-6262-465f-80da-2752d21063f5', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'c87c8828-837f-47b0-b2a5-345c4e6a216d', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'7c9e825c-9f3a-42e4-ae3c-3605e9ad5e46', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'40e86511-0d1b-4244-94f7-3ad3b5ab17bb', N'hi', 5, 1, CAST(N'2024-04-24T14:23:17.000' AS DateTime))
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'1c556d96-5798-48f7-8419-42c7959f967a', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'69de8df4-c774-49de-8f4e-4f5f9aecb1d9', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'a67688f6-ff7e-4387-b830-5c022dc0e97d', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'1c80e8bc-9869-4e1a-baf9-631077629d24', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'6c2fc2f0-0cf0-48bf-8227-7db8ed221588', N'rat oke', 5, 1, CAST(N'2024-04-24T15:20:14.097' AS DateTime))
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'9e33b71a-adb2-436c-98e5-8465cfeee6b1', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'fd3bdf80-1237-4e33-84d6-9289a11a0282', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'2e080375-0081-49cd-af94-9caaba81f728', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'fb53721c-8997-4b49-9a43-9e51371ac1e0', N'sản phẩm tốt', 5, 1, CAST(N'2024-04-24T14:23:11.317' AS DateTime))
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'08a30c9d-8c1b-4bad-a94c-a97cc102dd87', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'ac3d05bd-c718-4b2b-9975-ac8c3f42b65b', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'c8455cbe-39fd-45f4-b6d9-b801b39ce385', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'84c8d6fb-0876-4b4b-82e0-cbbe0ede87a0', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'35ab938d-d890-4832-93fc-cf00d041b487', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'9a027061-01ba-40d2-924e-d6d6abfce0da', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'2f274dd6-6cf8-4f72-896b-df081516832c', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'2d785df5-37db-433f-a6bf-e26bb0472d95', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'd2115a3e-d8ed-4deb-900c-e4de6245014c', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'851c02d2-a2e7-49d2-8baf-ef6da6c4a8d5', NULL, NULL, 0, NULL)
GO
INSERT [dbo].[GioHang] ([IDKhachHang], [NgayTao]) VALUES (N'e106c66d-f18d-4609-8a38-08e09d68e78c', CAST(N'2024-04-24T15:00:16.780' AS DateTime))
INSERT [dbo].[GioHang] ([IDKhachHang], [NgayTao]) VALUES (N'992b39ef-127f-4349-9582-4336b5ecebbb', CAST(N'2024-04-24T13:21:56.553' AS DateTime))
INSERT [dbo].[GioHang] ([IDKhachHang], [NgayTao]) VALUES (N'4c945bf7-c9cf-4e87-aac1-5b8ae7a4eff6', CAST(N'2024-12-09T11:28:47.193' AS DateTime))
INSERT [dbo].[GioHang] ([IDKhachHang], [NgayTao]) VALUES (N'55f17322-09f6-4513-bbbe-67deb6806515', CAST(N'2024-11-06T13:16:59.773' AS DateTime))
INSERT [dbo].[GioHang] ([IDKhachHang], [NgayTao]) VALUES (N'e3e4e6e1-06a1-4b52-8802-ad8138a99ebc', CAST(N'2024-12-09T10:02:00.227' AS DateTime))
INSERT [dbo].[GioHang] ([IDKhachHang], [NgayTao]) VALUES (N'e8e5a3e5-b99c-48b0-bb9d-f979e97e4ed5', CAST(N'2024-04-22T15:19:52.277' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'0c62b898-7b68-4f02-bd9a-0933fd25eb9d', CAST(N'2024-12-09T11:45:06.107' AS DateTime), CAST(N'2024-12-09T11:50:26.517' AS DateTime), N'Trương Phú Kiệt', N'0389526714', N'3122411174@sv.sgu.edu.vn', N'12A Đường Tam Đảo, Xã Mường Bang, Huyện Phù Yên, Sơn La', 30000, N'COD', 5, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HD0C62B898', 0, N'Người thân của tui sẽ giúp tui lấy hàng nhé!', CAST(N'2024-12-09T11:50:26.517' AS DateTime))
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'7ee3e777-d1c9-4aaf-88ac-0e71584d1c23', CAST(N'2024-11-06T13:42:48.843' AS DateTime), CAST(N'2024-11-06T20:36:14.947' AS DateTime), N'Lê Song Nhật Quyền', N'0362631410', N'lesongnhatquyen@gmail.com', N'23/2 Nhật Tảo, Phường 4, Quận 10, Hồ Chí Minh', 30000, N'COD', 5, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HD7EE3E777', 0, N'Sản phẩm lỗi', CAST(N'2024-11-06T20:36:14.947' AS DateTime))
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'c8655c1d-9ecc-40d7-9625-144bf336e77c', CAST(N'2024-04-24T15:03:24.447' AS DateTime), CAST(N'2024-04-24T15:03:24.407' AS DateTime), N'demokhach', N'0364877525', N'demokhach@gmail.com', N'khu pho 3 an phu quan 2, Xã Phình Giàng, Huyện Điện Biên Đông, Điện Biên', 30000, N'VNPay', 8, NULL, N'dcf1de69-a1ec-489e-90eb-559d4d17dc7e', 0, N'HDC8655C1D', 209200, NULL, NULL)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'c1d49a95-fb49-47f7-b1d6-1a5a1cfcd0d8', CAST(N'2024-04-24T15:04:35.573' AS DateTime), CAST(N'2024-04-24T15:06:05.730' AS DateTime), N'demokhach', N'0364877525', N'demokhach@gmail.com', N'khu pho 3 an phu quan 2, Xã Thạch Lương, Huyện Văn Chấn, Yên Bái', 30000, N'COD', 6, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HDC1D49A95', 37890, NULL, CAST(N'2024-04-24T15:06:05.730' AS DateTime))
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'6df7be80-fcd4-4c86-8291-2c6d2b6c6913', CAST(N'2024-04-24T15:09:46.607' AS DateTime), CAST(N'2024-04-24T15:10:27.280' AS DateTime), NULL, NULL, NULL, NULL, 0, N'Tiền mặt', 6, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 1, N'HD6DF7BE80', 5, N'oke', NULL)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'ecff8535-aa74-4493-8c02-330715bdef2b', CAST(N'2024-11-23T21:48:11.113' AS DateTime), CAST(N'2024-11-23T21:48:11.083' AS DateTime), N'Lê Song Nhật Quyền', N'0993246149', N'lesongnhatquyen@gmail.com', N'23/2 Nhật Tảo, Phường 4, Quận 10, Hồ Chí Minh', 30000, N'VNPay', 7, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HDECFF8535', 730000, N'Hủy bỏ do không liên lạc được khác hàng, tiền sẽ được hoàn về cho quý khách ạ!', NULL)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'0df91e61-60e4-448a-8fe3-38cb362d5fb4', CAST(N'2024-12-09T11:40:19.393' AS DateTime), CAST(N'2024-12-09T11:49:16.060' AS DateTime), N'Trương Phú Kiệt', N'0389526714', N'3122411174@sv.sgu.edu.vn', N'273T/24B/3 Thành Thái, Xã Phú Mỹ Hưng, Huyện Củ Chi, Hồ Chí Minh', 99003, N'VNPay', 6, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HD0DF91E61', 2520003, N'Giao tận nhà lúc 19:30 giúp mình nhé!', CAST(N'2024-12-09T11:49:16.060' AS DateTime))
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'2dc0af1c-e5a7-46a6-9fe2-3fe4428c450d', CAST(N'2024-11-06T21:14:10.497' AS DateTime), CAST(N'2024-11-06T21:16:15.183' AS DateTime), N'Lê Song Nhật Quyền', N'0993246149', N'lesongnhatquyen@gmail.com', N'23/2 Nhật Tảo, Phường 4, Quận 10, Hồ Chí Minh', 30000, N'VNPay', 6, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HD2DC0AF1C', 279000, N'abcXYZ', CAST(N'2024-11-06T21:16:15.183' AS DateTime))
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'1861b136-ca44-40bd-93b0-467182641207', CAST(N'2024-04-24T14:42:55.393' AS DateTime), CAST(N'2024-04-24T14:42:55.370' AS DateTime), N'mmmmmm mmmmmm', N'0364877525', N'mmmmmm@gmail.com', N'khu pho 3 an phu quan 2, Xã Phìn Hồ, Huyện Sìn Hồ, Lai Châu', 30000, N'VNPay', 2, NULL, NULL, 0, N'HD1861B136', 86000, NULL, NULL)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'a6a6dcb6-b51a-4920-aca6-54dbdd65a3e8', CAST(N'2024-11-07T16:10:34.697' AS DateTime), CAST(N'2024-11-07T16:10:34.643' AS DateTime), N'Lê Song Nhật Quyền', N'0993246149', N'lesongnhatquyen@gmail.com', N'23/2 Nhật Tảo, Phường 4, Quận 10, Hồ Chí Minh', 30000, N'VNPay', 2, NULL, NULL, 0, N'HDA6A6DCB6', 1430000, N'Phú Kiệt cc', NULL)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'55ceffa5-5672-4007-9d47-5e3273213f54', CAST(N'2024-04-22T15:41:58.660' AS DateTime), CAST(N'2024-04-22T15:42:59.000' AS DateTime), N'mmmmmm mmmmmm', N'0364877525', N'mmmmmm@gmail.com', N'khu pho 3 an phu quan 2, Xã Long Điền, Huyện Đông Hải, Bạc Liêu', 30000, N'COD', 5, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HD55CEFFA5', 0, N'ok', CAST(N'2024-04-22T15:42:59.000' AS DateTime))
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'94d65985-d90a-4bcf-b229-84add5975905', CAST(N'2024-04-22T15:45:12.727' AS DateTime), CAST(N'2024-04-22T15:45:45.493' AS DateTime), N'mmmmmm mmmmmm', N'0364877525', N'mmmmmm@gmail.com', N'khu pho 3 an phu quan 2, Xã Long Thạnh, Huyện Vĩnh Lợi, Bạc Liêu', 40000, N'COD', 6, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HD94D65985', 580000, NULL, CAST(N'2024-04-22T15:45:45.493' AS DateTime))
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'63a3febc-cc9c-47f4-a078-980971101a75', CAST(N'2024-04-24T14:21:18.063' AS DateTime), CAST(N'2024-04-24T14:22:08.467' AS DateTime), N'mmmmmm mmmmmm', N'0364877525', N'mmmmmm@gmail.com', N'khu pho 3 an phu quan 2, Xã Đông Thạnh, Huyện Châu Thành, Hậu Giang', 30000, N'COD', 6, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HD63A3FEBC', 171890, NULL, CAST(N'2024-04-24T14:22:08.467' AS DateTime))
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'5a58b00e-7eee-466e-849d-b89f6e7eb012', CAST(N'2024-04-22T15:44:39.843' AS DateTime), CAST(N'2024-04-22T15:45:35.107' AS DateTime), N'mmmmmm mmmmmm', N'0364877525', N'mmmmmm@gmail.com', N'khu pho 3 an phu quan 2, Xã Tú Nang, Huyện Yên Châu, Sơn La', 30000, N'COD', 4, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HD5A58B00E', 118999, N'x', CAST(N'2024-04-22T15:45:35.107' AS DateTime))
GO
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'5e863e9f-8c80-4ea6-9903-01633155e470', N'X', 1)
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'65a264a7-1da7-4937-af45-0683563c98f3', N'XX', 1)
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'5c33b977-5f2f-4abf-9f88-0934fbe6bbd5', N'S', 1)
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'3c6dbcc1-78d9-4afe-b7bd-6ca99e321119', N'XXX', 1)
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'b0219bd3-a2be-46f1-8612-90533e2892fb', N'XXL', 1)
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'1cda5b09-1fa5-4e55-86b4-9ab947992faf', N'10X', 1)
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'ca656d78-80a1-4409-933e-cc3ee5faf0d8', N'XXXL', 1)
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'add670bd-a69a-4200-9267-d54cf2171795', N'XL', 1)
GO
INSERT [dbo].[KhachHang] ([IDKhachHang], [Ten], [Password], [GioiTinh], [NgaySinh], [Email], [DiaChi], [SDT], [DiemTich], [TrangThai]) VALUES (N'4c945bf7-c9cf-4e87-aac1-5b8ae7a4eff6', N'Trương Phú Kiệt', N'$2a$10$d7SQC1Laj8wyuENivYalz.hLCIlyXZTw5YKCx2H2UDNpa6eDlJPgu', 1, CAST(N'2004-04-25T13:00:00.000' AS DateTime), N'3122411174@sv.sgu.edu.vn', N'273 An Dương Vương P.3, Q.5', N'0389526714', 242100, 1)
INSERT [dbo].[KhachHang] ([IDKhachHang], [Ten], [Password], [GioiTinh], [NgaySinh], [Email], [DiaChi], [SDT], [DiemTich], [TrangThai]) VALUES (N'55f17322-09f6-4513-bbbe-67deb6806515', N'Lê Song Nhật Quyền', N'$2a$10$yEFLD0vUKPTQdJDSOhf9luXXm7NdlKLOsn8HxZgp5qJwqvb/Dt.pe', 1, CAST(N'2004-10-04T00:00:00.000' AS DateTime), N'lesongnhatquyen@gmail.com', N'23/2 Nhật Tảo Phường 4, Quận 10', N'0993246149', 24900, 1)
GO
INSERT [dbo].[KhuyenMai] ([ID], [Ten], [GiaTri], [NgayApDung], [NgayKetThuc], [MoTa], [TrangThai]) VALUES (N'9f167f3a-8deb-4dd1-9bbd-213b8f377e40', N'KM01', 100000, CAST(N'2024-04-24T13:28:00.000' AS DateTime), CAST(N'2024-04-27T13:28:00.000' AS DateTime), N'km 30/4', 0)
INSERT [dbo].[KhuyenMai] ([ID], [Ten], [GiaTri], [NgayApDung], [NgayKetThuc], [MoTa], [TrangThai]) VALUES (N'e416bb4b-a3df-4abb-9f49-2b2ed764ee33', N'KM02', 30, CAST(N'2024-04-24T13:29:00.000' AS DateTime), CAST(N'2024-05-01T13:29:00.000' AS DateTime), N'km 30/4', 1)
GO
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'9c4ef746-b5fb-4da7-8880-08dcfe6808ca', 11500, 3, N'55f17322-09f6-4513-bbbe-67deb6806515', N'6c81401d-2d54-43c6-b31b-d8a290a445c6', N'7ee3e777-d1c9-4aaf-88ac-0e71584d1c23')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'841e6c5c-530a-423b-9f6e-08dd180d02f9', 13290, 3, N'4c945bf7-c9cf-4e87-aac1-5b8ae7a4eff6', N'6c81401d-2d54-43c6-b31b-d8a290a445c6', N'0c62b898-7b68-4f02-bd9a-0933fd25eb9d')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'39936dfc-b772-47c6-8f14-17fc7df65124', 0, 1, N'55f17322-09f6-4513-bbbe-67deb6806515', N'6c81401d-2d54-43c6-b31b-d8a290a445c6', N'ecff8535-aa74-4493-8c02-330715bdef2b')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'014fffa2-0a9f-4474-bc83-388db1411520', 11500, 1, N'55f17322-09f6-4513-bbbe-67deb6806515', N'6c81401d-2d54-43c6-b31b-d8a290a445c6', N'7ee3e777-d1c9-4aaf-88ac-0e71584d1c23')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'bf07a48f-12b8-4070-8094-8297c3fce968', 140000, 1, N'55f17322-09f6-4513-bbbe-67deb6806515', N'6c81401d-2d54-43c6-b31b-d8a290a445c6', N'a6a6dcb6-b51a-4920-aca6-54dbdd65a3e8')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'25acb17e-a372-4f2c-8379-892f5ee963b6', 13290, 1, N'4c945bf7-c9cf-4e87-aac1-5b8ae7a4eff6', N'6c81401d-2d54-43c6-b31b-d8a290a445c6', N'0c62b898-7b68-4f02-bd9a-0933fd25eb9d')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'b1ed0e1a-c0f0-49d5-858a-a2b782b488b5', 242100, 1, N'4c945bf7-c9cf-4e87-aac1-5b8ae7a4eff6', N'6c81401d-2d54-43c6-b31b-d8a290a445c6', N'0df91e61-60e4-448a-8fe3-38cb362d5fb4')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'4854a339-7db0-4147-ab54-ef65a1a7a224', 24900, 1, N'55f17322-09f6-4513-bbbe-67deb6806515', N'6c81401d-2d54-43c6-b31b-d8a290a445c6', N'2dc0af1c-e5a7-46a6-9fe2-3fe4428c450d')
GO
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'fcf6ab02-0a69-44e3-696f-08dc62a55ede', N'Áo nam', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'552c8672-00c2-481e-6970-08dc62a55ede', N'Áo khoác', 1, N'fcf6ab02-0a69-44e3-696f-08dc62a55ede')
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'8c0710d8-aca2-42f6-5692-08dc6427b0c9', N'Áo sơ mi', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'76e236f8-3bc2-40fd-5693-08dc6427b0c9', N'Áo thun', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'e34e106b-2dd0-4f07-5694-08dc6427b0c9', N'Áo vest', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'6375dd2d-39b0-428b-5695-08dc6427b0c9', N'Quần jeans', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'03488eca-fd24-4cc2-5696-08dc6427b0c9', N'Quần tây', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'74e6e566-49cc-4e46-5697-08dc6427b0c9', N'Đồ bộ', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'581494fd-6306-4821-5698-08dc6427b0c9', N'Áo thun cổ tròn', 1, N'76e236f8-3bc2-40fd-5693-08dc6427b0c9')
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'3d2d0216-52d0-4e45-5699-08dc6427b0c9', N'Quần dài', 1, N'03488eca-fd24-4cc2-5696-08dc6427b0c9')
GO
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'5984fce1-b2f4-4b43-a2f0-30cb3ebefaec', N'Tím', N'#480cd4', 1)
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'4552f6dc-53f3-4966-a4bb-5a9328e972b8', N'Xanh la', N'#8d9b27', 1)
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'a5919aa2-b789-423a-b962-6d0f51673a44', N'Xanh', N'#4723fb', 1)
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'117b39b1-d5c6-4984-a1a0-8070b4d1063c', N'Bạc', N'#f2f2f2', 1)
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'Đen', N'#000000', 1)
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'ee6bc3a6-a09c-4c1c-ae32-c22578304978', N'Nâu', N'#392323', 1)
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'2e31b635-3164-4391-8007-cdee9e3b7d1a', N'Vàng', N'#f4ed1a', 1)
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'f7ea0204-6a31-4891-b807-cff779915b6d', N'Đỏ', N'#f40b0b', 1)
GO
INSERT [dbo].[NhanVien] ([ID], [Ten], [Email], [SDT], [DiaChi], [TrangThai], [IDVaiTro], [PassWord]) VALUES (N'4127568f-30d8-447f-83b6-45bc740051ca', N'nhanvien', N'nhanvien@gmail.com', N'0987654322', N'hcm vn', 1, N'952c1a5d-74ff-4daf-ba88-135c5440809c', N'$2a$10$6lhBQlZNs6wvg0.BJKevVeOkRFMUy4DoQjBFG.VOzQguzDhK65AXC')
INSERT [dbo].[NhanVien] ([ID], [Ten], [Email], [SDT], [DiaChi], [TrangThai], [IDVaiTro], [PassWord]) VALUES (N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', N'Admin', N'admin@gmail.com', N'0993246149', N'Hồ Chí Minh', 1, N'b4996b2d-a343-434b-bfe9-09f8efbb3852', N'$2a$10$Dtd69oylpK55KA0dSj5x/uAp3OqpPZaLezJGVbdrR9OIIQxOAJavS')
GO
INSERT [dbo].[QuyDoiDiem] ([ID], [TiLeTichDiem], [TiLeTieuDiem], [TrangThai]) VALUES (N'16bd37c4-cef0-4e92-9bb5-511c43d99037', 0, 0, 0)
INSERT [dbo].[QuyDoiDiem] ([ID], [TiLeTichDiem], [TiLeTieuDiem], [TrangThai]) VALUES (N'6c81401d-2d54-43c6-b31b-d8a290a445c6', 10, 10, 2)
GO
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'adadf1c6-22d3-468a-85a9-2c95c6018d2a', N'Quần tây', N'Thân: 97% Bông, 3% Elastan/ Vải Túi: 65% Polyeste, 35% Bông', 1, N'3d2d0216-52d0-4e45-5699-08dc6427b0c9', N'0d16634e-c334-40f7-a407-982447d694d0', N'SP4')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'30af833f-e6ae-4827-beec-44d2b14a1b02', N'Áo Thun Ngắn Tay KJYT', N'sản phẩm chất, ngầu và phong thái toàn vẹn', 1, N'581494fd-6306-4821-5698-08dc6427b0c9', N'8aeacf00-8e48-4446-bbe2-fe1623973d65', N'SP6')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'8506c67c-ef59-47b6-a501-53ccda063ae5', N'Áo Thun Dáng Rộng Tay Lỡ', N'The Uniqlo U collection is the realization of a dedicated and skilled team of international designers based at our Paris', 1, N'581494fd-6306-4821-5698-08dc6427b0c9', N'0282068c-edfd-4c76-a1b0-6f1698319eef', N'SP2')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'8e8b89f2-d437-42d2-90dc-678d1770e829', N'Quần Cotton Dáng Relax Dài Đến Mắt Cá', N'Thân: 97% Bông, 3% Elastan/ Vải Túi: 65% Polyeste, 35% Bông', 1, N'3d2d0216-52d0-4e45-5699-08dc6427b0c9', N'7dda73f2-aae5-4659-8a86-f7f67c812dc9', N'SP3')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'4884169c-7103-4932-af8b-77b353b4019d', N'demo them sp', N'demo...', 0, N'581494fd-6306-4821-5698-08dc6427b0c9', N'0282068c-edfd-4c76-a1b0-6f1698319eef', N'SP8')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'31e125aa-ea91-4941-bf9d-7981e62e1b35', N'Áo khoac nam', N'a', 0, N'552c8672-00c2-481e-6970-08dc62a55ede', N'0d16634e-c334-40f7-a407-982447d694d0', N'SP7')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'e7400427-12d0-4535-a4c5-7dadfe9ad1f1', N'Áo Hoodie tay dài', N'Có nón, vải êm dịu thoải mái và bảo vệ tia UV từ ánh nắng mặt trời toàn diện', 1, N'552c8672-00c2-481e-6970-08dc62a55ede', N'0282068c-edfd-4c76-a1b0-6f1698319eef', N'SP10')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'6d969295-0645-4e16-87d1-846038747d99', N'Áo thể thao Coolmate', N'Áo dành cho dân chuyên chạy bộ', 1, N'581494fd-6306-4821-5698-08dc6427b0c9', N'7dda73f2-aae5-4659-8a86-f7f67c812dc9', N'SP9')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'36c65db0-0379-4302-9b80-cbe624a246bc', N'Áo Thun Ngắn Tay', N'abv', 0, N'581494fd-6306-4821-5698-08dc6427b0c9', N'0d16634e-c334-40f7-a407-982447d694d0', N'SP5')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'91f4602b-f470-40ed-98aa-d401e8f6ce4d', N'Áo Polo Nam Premium Tay Ngắn Phối Viền Cổ Form Fitte', N'- Vải pique mịn, nhẹ được làm từ hỗn hợp cotton và polyester chống vón cục. - Với công nghệ DRY khô nhanh. - Thiết kế cơ bản đa năng và kiểu dáng dễ dàng tạo kiểu. - Cổ áo được cài khuy hoặc cởi ra trông rất đẹp. - Cổ tay áo có gân mang phong cách truyền thống.', 1, N'552c8672-00c2-481e-6970-08dc62a55ede', N'8aeacf00-8e48-4446-bbe2-fe1623973d65', N'SP1')
GO
INSERT [dbo].[VaiTro] ([ID], [Ten], [TrangThai]) VALUES (N'b4996b2d-a343-434b-bfe9-09f8efbb3852', N'Admin', 1)
INSERT [dbo].[VaiTro] ([ID], [Ten], [TrangThai]) VALUES (N'952c1a5d-74ff-4daf-ba88-135c5440809c', N'Nhân viên', 1)
GO
INSERT [dbo].[Voucher] ([ID], [Ten], [HinhThucGiamGia], [SoTienCan], [GiaTri], [NgayApDung], [NgayKetThuc], [SoLuong], [MoTa], [TrangThai]) VALUES (N'dcf1de69-a1ec-489e-90eb-559d4d17dc7e', N'VC01', 1, 50000, 20, CAST(N'2024-04-24T13:30:00.000' AS DateTime), CAST(N'2024-04-27T13:30:00.000' AS DateTime), 98, N'km 30/4', 1)
GO
/****** Object:  Index [IX_Anh_IDMauSac]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_Anh_IDMauSac] ON [dbo].[Anh]
(
	[IDMauSac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Anh_IDSanPham]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_Anh_IDSanPham] ON [dbo].[Anh]
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietGioHang_IDCTSP]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietGioHang_IDCTSP] ON [dbo].[ChiTietGioHang]
(
	[IDCTSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietGioHang_IDNguoiDung]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietGioHang_IDNguoiDung] ON [dbo].[ChiTietGioHang]
(
	[IDNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietHoaDon_IDCTSP]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietHoaDon_IDCTSP] ON [dbo].[ChiTietHoaDon]
(
	[IDCTSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietHoaDon_IDHoaDon]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietHoaDon_IDHoaDon] ON [dbo].[ChiTietHoaDon]
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSanPham_IDKichCo]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSanPham_IDKichCo] ON [dbo].[ChiTietSanPham]
(
	[IDKichCo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSanPham_IDKhuyenMai]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSanPham_IDKhuyenMai] ON [dbo].[ChiTietSanPham]
(
	[IDKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSanPham_IDMauSac]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSanPham_IDMauSac] ON [dbo].[ChiTietSanPham]
(
	[IDMauSac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSanPham_IDSanPham]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSanPham_IDSanPham] ON [dbo].[ChiTietSanPham]
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HoaDon_IDNhanVien]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_HoaDon_IDNhanVien] ON [dbo].[HoaDon]
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HoaDon_IDVoucher]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_HoaDon_IDVoucher] ON [dbo].[HoaDon]
(
	[IDVoucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LichSuTichDiem_IDHoaDon]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_LichSuTichDiem_IDHoaDon] ON [dbo].[LichSuTichDiem]
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LichSuTichDiem_IDKhachHang]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_LichSuTichDiem_IDKhachHang] ON [dbo].[LichSuTichDiem]
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LichSuTichDiem_IDQuyDoiDiem]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_LichSuTichDiem_IDQuyDoiDiem] ON [dbo].[LichSuTichDiem]
(
	[IDQuyDoiDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LoaiSP_IDLoaiSPCha]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_LoaiSP_IDLoaiSPCha] ON [dbo].[LoaiSP]
(
	[IDLoaiSPCha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NhanVien_IDVaiTro]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_NhanVien_IDVaiTro] ON [dbo].[NhanVien]
(
	[IDVaiTro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPham_IDChatLieu]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_SanPham_IDChatLieu] ON [dbo].[SanPham]
(
	[IDChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPham_IDLoaiSP]    Script Date: 10/12/2024 17:02:50 ******/
CREATE NONCLUSTERED INDEX [IX_SanPham_IDLoaiSP] ON [dbo].[SanPham]
(
	[IDLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Anh] ADD  DEFAULT ('') FOR [DuongDan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [LoaiHD]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (N'') FOR [MaHD]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (N'') FOR [PassWord]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [IDChatLieu]
GO
ALTER TABLE [dbo].[Anh]  WITH CHECK ADD  CONSTRAINT [FK_Anh_MauSac_IDMauSac] FOREIGN KEY([IDMauSac])
REFERENCES [dbo].[MauSac] ([ID])
GO
ALTER TABLE [dbo].[Anh] CHECK CONSTRAINT [FK_Anh_MauSac_IDMauSac]
GO
ALTER TABLE [dbo].[Anh]  WITH CHECK ADD  CONSTRAINT [FK_Anh_SanPham_IDSanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([ID])
GO
ALTER TABLE [dbo].[Anh] CHECK CONSTRAINT [FK_Anh_SanPham_IDSanPham]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_ChiTietSanPham_IDCTSP] FOREIGN KEY([IDCTSP])
REFERENCES [dbo].[ChiTietSanPham] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_ChiTietSanPham_IDCTSP]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_GioHang_IDNguoiDung] FOREIGN KEY([IDNguoiDung])
REFERENCES [dbo].[GioHang] ([IDKhachHang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_GioHang_IDNguoiDung]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_ChiTietSanPham_IDCTSP] FOREIGN KEY([IDCTSP])
REFERENCES [dbo].[ChiTietSanPham] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_ChiTietSanPham_IDCTSP]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_DanhGia_ID] FOREIGN KEY([ID])
REFERENCES [dbo].[DanhGia] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_DanhGia_ID]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon_IDHoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon_IDHoaDon]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_KichCo_IDKichCo] FOREIGN KEY([IDKichCo])
REFERENCES [dbo].[KichCo] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_ChiTietSanPham_KichCo_IDKichCo]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_KhuyenMai_IDKhuyenMai] FOREIGN KEY([IDKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([ID])
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_ChiTietSanPham_KhuyenMai_IDKhuyenMai]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_MauSac_IDMauSac] FOREIGN KEY([IDMauSac])
REFERENCES [dbo].[MauSac] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_ChiTietSanPham_MauSac_IDMauSac]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_SanPham_IDSanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_ChiTietSanPham_SanPham_IDSanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien_IDNhanVien] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([ID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien_IDNhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Voucher_IDVoucher] FOREIGN KEY([IDVoucher])
REFERENCES [dbo].[Voucher] ([ID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Voucher_IDVoucher]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_GioHang_IDKhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[GioHang] ([IDKhachHang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_GioHang_IDKhachHang]
GO
ALTER TABLE [dbo].[LichSuTichDiem]  WITH CHECK ADD  CONSTRAINT [FK_LichSuTichDiem_HoaDon_IDHoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuTichDiem] CHECK CONSTRAINT [FK_LichSuTichDiem_HoaDon_IDHoaDon]
GO
ALTER TABLE [dbo].[LichSuTichDiem]  WITH CHECK ADD  CONSTRAINT [FK_LichSuTichDiem_KhachHang_IDKhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[LichSuTichDiem] CHECK CONSTRAINT [FK_LichSuTichDiem_KhachHang_IDKhachHang]
GO
ALTER TABLE [dbo].[LichSuTichDiem]  WITH CHECK ADD  CONSTRAINT [FK_LichSuTichDiem_QuyDoiDiem_IDQuyDoiDiem] FOREIGN KEY([IDQuyDoiDiem])
REFERENCES [dbo].[QuyDoiDiem] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuTichDiem] CHECK CONSTRAINT [FK_LichSuTichDiem_QuyDoiDiem_IDQuyDoiDiem]
GO
ALTER TABLE [dbo].[LoaiSP]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSP_LoaiSP_IDLoaiSPCha] FOREIGN KEY([IDLoaiSPCha])
REFERENCES [dbo].[LoaiSP] ([ID])
GO
ALTER TABLE [dbo].[LoaiSP] CHECK CONSTRAINT [FK_LoaiSP_LoaiSP_IDLoaiSPCha]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_VaiTro_IDVaiTro] FOREIGN KEY([IDVaiTro])
REFERENCES [dbo].[VaiTro] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_VaiTro_IDVaiTro]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ChatLieu_IDChatLieu] FOREIGN KEY([IDChatLieu])
REFERENCES [dbo].[ChatLieu] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ChatLieu_IDChatLieu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP_IDLoaiSP] FOREIGN KEY([IDLoaiSP])
REFERENCES [dbo].[LoaiSP] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP_IDLoaiSP]
GO
USE [master]
GO
ALTER DATABASE [AppBanQuanAoThoiTrangNam] SET  READ_WRITE 
GO
