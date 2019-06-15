USE [master]
GO
/****** Object:  Database [QuanLyCaPhe]    Script Date: 6/12/2019 8:41:42 AM ******/
CREATE DATABASE [QuanLyCaPhe] ON  PRIMARY 
( NAME = N'QuanLyCaPhe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyCaPhe.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyCaPhe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyCaPhe_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyCaPhe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyCaPhe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyCaPhe] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyCaPhe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyCaPhe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyCaPhe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyCaPhe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyCaPhe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyCaPhe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyCaPhe] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyCaPhe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyCaPhe] SET DB_CHAINING OFF 
GO
USE [QuanLyCaPhe]
GO
/****** Object:  Table [dbo].[tblBan]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBan](
	[MaBan] [varchar](3) NOT NULL,
	[SoBan] [int] NOT NULL,
	[Khu] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBanCoKhach]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBanCoKhach](
	[MaBan] [varchar](3) NULL,
	[SoBan] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBangLuong]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBangLuong](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[Thang] [int] NOT NULL,
	[MaNV] [varchar](5) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[TongGioLam] [float] NOT NULL,
	[MucLuong] [money] NOT NULL,
	[TienLuong] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBanSDNhieu]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBanSDNhieu](
	[MaBan] [varchar](3) NULL,
	[SoBan] [int] NOT NULL,
	[LuotSD] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblChamCongNV]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChamCongNV](
	[MaNV] [varchar](5) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[CaLam] [nvarchar](30) NOT NULL,
	[Ngay] [datetime] NOT NULL,
	[SoGioLam] [float] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTDoanhThu]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTDoanhThu](
	[Ngay] [datetime] NOT NULL,
	[MaMon] [varchar](5) NOT NULL,
	[SoLuongBan] [int] NOT NULL,
	[TongTien] [money] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTHoaDon]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTHoaDon](
	[MaHD] [int] NOT NULL,
	[MaMon] [varchar](5) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
	[ThanhTien] [money] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTNhapNL]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTNhapNL](
	[MaPhieuNhap] [int] NOT NULL,
	[MaNL] [varchar](5) NOT NULL,
	[TenNL] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[DonGia] [money] NOT NULL,
	[ThanhTien] [money] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTOder]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTOder](
	[MaOder] [int] NULL,
	[MaBan] [varchar](3) NOT NULL,
	[MaMon] [varchar](5) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonViTinh] [nvarchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTXuatNL]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTXuatNL](
	[MaPhieuXuat] [int] NOT NULL,
	[MaNL] [varchar](5) NOT NULL,
	[TenNL] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonViTinh] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDoanhThu]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDoanhThu](
	[Ngay] [datetime] NOT NULL,
	[DoanhThu] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDSMon]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDSMon](
	[MaMon] [varchar](5) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[MaLoaiMon] [nvarchar](50) NOT NULL,
	[DonGia] [money] NOT NULL,
	[DonViTinh] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaOder] [int] NOT NULL,
	[MaBan] [varchar](3) NOT NULL,
	[Ngay] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLoaiMon]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiMon](
	[MaLoaiMon] [nvarchar](50) NOT NULL,
	[TenLoaiMon] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNguyenLieu]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNguyenLieu](
	[MaNL] [varchar](5) NOT NULL,
	[TenNL] [nvarchar](50) NOT NULL,
	[DonGia] [money] NOT NULL,
	[DonViTinh] [nvarchar](50) NOT NULL,
	[SoLuongCon] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNV] [varchar](5) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[GioiTinh] [nvarchar](30) NOT NULL,
	[TrinhDoHocVan] [nvarchar](30) NULL,
	[ChucVu] [nvarchar](30) NOT NULL,
	[SoCMND] [char](11) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhapNL]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhapNL](
	[MaPhieuNhap] [int] NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[TongTien] [money] NOT NULL,
	[MaNV] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOder]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOder](
	[MaOder] [int] NOT NULL,
	[MaBan] [varchar](3) NOT NULL,
	[MaNV] [varchar](5) NOT NULL,
	[Ngay] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaOder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[MaUser] [varchar](5) NOT NULL,
	[PassWord] [varchar](10) NOT NULL,
	[TenThuNgan] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblXuatNL]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblXuatNL](
	[MaPhieuXuat] [int] NOT NULL,
	[NgayXuat] [datetime] NOT NULL,
	[MaNV] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B1', 1, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B10', 10, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B11', 11, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B12', 12, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B13', 13, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B14', 14, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B2', 2, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B3', 3, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B31', 31, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B32', 32, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B33', 33, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B34', 34, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B35', 35, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B36', 36, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B37', 37, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B38', 38, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B39', 39, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B4', 4, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B40', 40, N'B')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B5', 5, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B6', 6, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B7', 7, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B8', 8, N'A')
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B9', 9, N'A')
INSERT [dbo].[tblBanCoKhach] ([MaBan], [SoBan]) VALUES (N'B2', 2)
INSERT [dbo].[tblBanCoKhach] ([MaBan], [SoBan]) VALUES (N'B1', 1)
SET IDENTITY_INSERT [dbo].[tblBangLuong] ON 

INSERT [dbo].[tblBangLuong] ([STT], [Thang], [MaNV], [TenNV], [TongGioLam], [MucLuong], [TienLuong]) VALUES (1, 23, N'NV1', N'Lê Hải Sơn', 41, 12000.0000, 492000.0000)
SET IDENTITY_INSERT [dbo].[tblBangLuong] OFF
INSERT [dbo].[tblBanSDNhieu] ([MaBan], [SoBan], [LuotSD]) VALUES (N'B1', 1, 7)
INSERT [dbo].[tblBanSDNhieu] ([MaBan], [SoBan], [LuotSD]) VALUES (N'B2', 2, 1)
INSERT [dbo].[tblChamCongNV] ([MaNV], [TenNV], [CaLam], [Ngay], [SoGioLam]) VALUES (N'NV1', N'Lê Hải Sơn', N'Ca Sáng', CAST(N'2019-05-23 00:00:00.000' AS DateTime), 5)
INSERT [dbo].[tblChamCongNV] ([MaNV], [TenNV], [CaLam], [Ngay], [SoGioLam]) VALUES (N'NV1', N'Lê Hải Sơn', N'Ca Sáng', CAST(N'2019-05-22 00:00:00.000' AS DateTime), 8)
INSERT [dbo].[tblChamCongNV] ([MaNV], [TenNV], [CaLam], [Ngay], [SoGioLam]) VALUES (N'NV1', N'Lê Hải Sơn', N'Ca Sáng', CAST(N'2019-05-21 00:00:00.000' AS DateTime), 8)
INSERT [dbo].[tblChamCongNV] ([MaNV], [TenNV], [CaLam], [Ngay], [SoGioLam]) VALUES (N'NV1', N'Lê Hải Sơn', N'Ca Sáng', CAST(N'2019-05-20 00:00:00.000' AS DateTime), 8)
INSERT [dbo].[tblCTNhapNL] ([MaPhieuNhap], [MaNL], [TenNL], [SoLuong], [DonViTinh], [DonGia], [ThanhTien]) VALUES (1, N'NL01', N'Cà Phê Trung Nguyên', 12, N'Hộp', 100000.0000, 1200000.0000)
INSERT [dbo].[tblCTNhapNL] ([MaPhieuNhap], [MaNL], [TenNL], [SoLuong], [DonViTinh], [DonGia], [ThanhTien]) VALUES (2, N'NL02', N'Sữa tươi', 15, N'Hộp', 100000.0000, 1500000.0000)
INSERT [dbo].[tblCTNhapNL] ([MaPhieuNhap], [MaNL], [TenNL], [SoLuong], [DonViTinh], [DonGia], [ThanhTien]) VALUES (2, N'NL03', N'Chanh', 10, N'Kg', 100000.0000, 1000000.0000)
INSERT [dbo].[tblCTNhapNL] ([MaPhieuNhap], [MaNL], [TenNL], [SoLuong], [DonViTinh], [DonGia], [ThanhTien]) VALUES (2, N'NL05', N'Gừng', 5, N'Kg', 5000.0000, 25000.0000)
INSERT [dbo].[tblCTOder] ([MaOder], [MaBan], [MaMon], [SoLuong], [DonViTinh]) VALUES (4, N'B2', N'CF001', 3, N'')
INSERT [dbo].[tblCTOder] ([MaOder], [MaBan], [MaMon], [SoLuong], [DonViTinh]) VALUES (5, N'B1', N'CF001', 0, N'')
INSERT [dbo].[tblCTOder] ([MaOder], [MaBan], [MaMon], [SoLuong], [DonViTinh]) VALUES (5, N'B1', N'LK001', 4, N'')
INSERT [dbo].[tblCTOder] ([MaOder], [MaBan], [MaMon], [SoLuong], [DonViTinh]) VALUES (5, N'B1', N'LK003', 0, N'')
INSERT [dbo].[tblCTOder] ([MaOder], [MaBan], [MaMon], [SoLuong], [DonViTinh]) VALUES (5, N'B1', N'LK002', 0, N'')
INSERT [dbo].[tblCTOder] ([MaOder], [MaBan], [MaMon], [SoLuong], [DonViTinh]) VALUES (5, N'B1', N'LK004', 0, N'')
INSERT [dbo].[tblDoanhThu] ([Ngay], [DoanhThu]) VALUES (CAST(N'2019-05-28 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[tblDoanhThu] ([Ngay], [DoanhThu]) VALUES (CAST(N'2019-05-31 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[tblDoanhThu] ([Ngay], [DoanhThu]) VALUES (CAST(N'2019-06-01 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[tblDoanhThu] ([Ngay], [DoanhThu]) VALUES (CAST(N'2019-06-05 00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M01', N'Cà Phê Đen', N'LM01', 20.0000, N'Cốc ')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M02', N'Cà Phê Sữa', N'LM01', 20.0000, N'Cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M03', N'Bạc Xỉu', N'LM01', 30.0000, N'Cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M04', N'Latte', N'LM01', 30.0000, N'cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M05', N'Cà phê Cốt Dừa', N'LM01', 40.0000, N'cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M06', N'CocaCola', N'LM02', 10.0000, N'Chai')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M07', N'Sting', N'LM02', 10.0000, N'Chai')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M08', N'PepSi ', N'LM02', 10.0000, N'chai')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M09', N'7 up', N'LM02', 10.0000, N'chai')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M10', N'Trà Sen Vàng ', N'LM03', 40.0000, N'cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M11', N'Trà Đào Cam Xả ', N'LM03', 50.0000, N'cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M12', N'Kim Quất Trân Châu', N'LM03', 50.0000, N'cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M13', N'Trà OlongSen', N'LM03', 50.0000, N'cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M14', N'Freeze Trà Xnah ', N'LM03', 50.0000, N'cóc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M15 ', N'Freeze Sô-Cô-La', N'Lm03', 50.0000, N'cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M16', N'Trà Xanh Đậu Đỏ', N'LM03', 60.0000, N'cốc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M17', N'Bánh Mì Thịt Nướng', N'LM04', 20.0000, N'chiếc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M18', N'Bánh Mì Gà Xé', N'LM04', 25.0000, N'chiếc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M19', N'Bông Lan Trứng Muối ', N'LM04', 30.0000, N'chiếc')
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [MaLoaiMon], [DonGia], [DonViTinh]) VALUES (N'M20', N'Caramen', N'LM04', 20.0000, N'chiếc')
SET IDENTITY_INSERT [dbo].[tblHoaDon] ON 

INSERT [dbo].[tblHoaDon] ([MaHD], [MaOder], [MaBan], [Ngay]) VALUES (1, 1, N'B1', CAST(N'2019-05-28 00:00:00.000' AS DateTime))
INSERT [dbo].[tblHoaDon] ([MaHD], [MaOder], [MaBan], [Ngay]) VALUES (2, 2, N'B1', CAST(N'2019-05-28 00:00:00.000' AS DateTime))
INSERT [dbo].[tblHoaDon] ([MaHD], [MaOder], [MaBan], [Ngay]) VALUES (8, 3, N'B1', CAST(N'2019-05-28 00:00:00.000' AS DateTime))
INSERT [dbo].[tblHoaDon] ([MaHD], [MaOder], [MaBan], [Ngay]) VALUES (9, 3, N'B1', CAST(N'2019-05-28 00:00:00.000' AS DateTime))
INSERT [dbo].[tblHoaDon] ([MaHD], [MaOder], [MaBan], [Ngay]) VALUES (13, 4, N'B2', CAST(N'2019-05-31 00:00:00.000' AS DateTime))
INSERT [dbo].[tblHoaDon] ([MaHD], [MaOder], [MaBan], [Ngay]) VALUES (15, 5, N'B1', CAST(N'2019-06-02 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblHoaDon] OFF
INSERT [dbo].[tblLoaiMon] ([MaLoaiMon], [TenLoaiMon]) VALUES (N'LM01', N'Cafe ')
INSERT [dbo].[tblLoaiMon] ([MaLoaiMon], [TenLoaiMon]) VALUES (N'LM02', N'Nước Ngọt')
INSERT [dbo].[tblLoaiMon] ([MaLoaiMon], [TenLoaiMon]) VALUES (N'LM03', N'Trà')
INSERT [dbo].[tblLoaiMon] ([MaLoaiMon], [TenLoaiMon]) VALUES (N'LM04', N'Đồ Ăn Nhẹ')
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [DonGia], [DonViTinh], [SoLuongCon]) VALUES (N'NL01', N'Cà Phê Trung Nguyên', 100000.0000, N'Hộp', 112)
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [DonGia], [DonViTinh], [SoLuongCon]) VALUES (N'NL02', N'Sữa tươi', 100000.0000, N'Hộp', 115)
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [DonGia], [DonViTinh], [SoLuongCon]) VALUES (N'NL03', N'Chanh', 100000.0000, N'Kg', 15)
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [DonGia], [DonViTinh], [SoLuongCon]) VALUES (N'NL04', N'Sữa Chua', 150000.0000, N'Hộp', 20)
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [DonGia], [DonViTinh], [SoLuongCon]) VALUES (N'NL05', N'Gừng', 5000.0000, N'Kg', 8)
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV1', N'Lê Hải Sơn', CAST(N'1998-06-28 00:00:00.000' AS DateTime), N'Nam', N'Đại Học', N'Quản Lý', N'013492957  ', N'Hà Nội')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV2', N'Đinh Xuân Dũng', CAST(N'1998-06-05 00:00:00.000' AS DateTime), N'Nam', N'Đại học', N'Pha Chế', N'012343544  ', N'Quảng Ninh')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV3', N'Phạm Văn Tùng', CAST(N'1998-07-16 00:00:00.000' AS DateTime), N'Nam', N'Cấp 3', N'Giữ Xe', N'013492945  ', N'Nam Định')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV4', N'Trần Văn Vận', CAST(N'1998-06-10 00:00:00.000' AS DateTime), N'Nam', N'Tiểu Học', N'Tạp Vụ', N'024857463  ', N'Cà Mau')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV5', N'Luci', CAST(N'2000-07-22 00:00:00.000' AS DateTime), N'Nữ', N'Cao Đẳng', N'Thu Ngân', N'014536287  ', N'Hà Đông')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV6', N'Lâm Bảo Ngọc', CAST(N'1964-06-24 00:00:00.000' AS DateTime), N'Nữ', N'Tiến sí', N'Quản Lý', N'013454643  ', N'Hà Nội')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV7', N'Trần Bình Trọng', CAST(N'1998-11-26 00:00:00.000' AS DateTime), N'Nam', N'Đại học', N'Pha Chế', N'014325444  ', N'Hà Nam')
INSERT [dbo].[tblNhapNL] ([MaPhieuNhap], [NgayNhap], [TongTien], [MaNV]) VALUES (1, CAST(N'2019-06-09 00:00:00.000' AS DateTime), 0.0000, N'NV2')
INSERT [dbo].[tblNhapNL] ([MaPhieuNhap], [NgayNhap], [TongTien], [MaNV]) VALUES (2, CAST(N'2019-06-10 00:00:00.000' AS DateTime), 2525000.0000, N'NV1')
INSERT [dbo].[tblNhapNL] ([MaPhieuNhap], [NgayNhap], [TongTien], [MaNV]) VALUES (3, CAST(N'2019-06-11 00:00:00.000' AS DateTime), 0.0000, N'NV1')
INSERT [dbo].[tblNhapNL] ([MaPhieuNhap], [NgayNhap], [TongTien], [MaNV]) VALUES (4, CAST(N'2019-06-11 00:00:00.000' AS DateTime), 0.0000, N'NV1')
INSERT [dbo].[tblOder] ([MaOder], [MaBan], [MaNV], [Ngay]) VALUES (1, N'B1', N'NV1', CAST(N'2019-05-28 00:00:00.000' AS DateTime))
INSERT [dbo].[tblOder] ([MaOder], [MaBan], [MaNV], [Ngay]) VALUES (2, N'B1', N'NV1', CAST(N'2019-05-28 00:00:00.000' AS DateTime))
INSERT [dbo].[tblOder] ([MaOder], [MaBan], [MaNV], [Ngay]) VALUES (3, N'B1', N'NV1', CAST(N'2019-05-28 00:00:00.000' AS DateTime))
INSERT [dbo].[tblOder] ([MaOder], [MaBan], [MaNV], [Ngay]) VALUES (4, N'B2', N'NV1', CAST(N'2019-05-31 00:00:00.000' AS DateTime))
INSERT [dbo].[tblOder] ([MaOder], [MaBan], [MaNV], [Ngay]) VALUES (5, N'B1', N'NV1', CAST(N'2019-06-02 00:00:00.000' AS DateTime))
INSERT [dbo].[tblUser] ([MaUser], [PassWord], [TenThuNgan]) VALUES (N'Admin', N'1', N'Hải Sơn')
INSERT [dbo].[tblUser] ([MaUser], [PassWord], [TenThuNgan]) VALUES (N'Dung', N'1', N'Xuân Dũng')
INSERT [dbo].[tblUser] ([MaUser], [PassWord], [TenThuNgan]) VALUES (N'tungg', N'1234', N'Minh Tùng')
ALTER TABLE [dbo].[tblBanCoKhach]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
ALTER TABLE [dbo].[tblBangLuong]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblBanSDNhieu]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
ALTER TABLE [dbo].[tblChamCongNV]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblCTDoanhThu]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblDSMon] ([MaMon])
GO
ALTER TABLE [dbo].[tblCTDoanhThu]  WITH CHECK ADD FOREIGN KEY([Ngay])
REFERENCES [dbo].[tblDoanhThu] ([Ngay])
GO
ALTER TABLE [dbo].[tblCTHoaDon]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblDSMon] ([MaMon])
GO
ALTER TABLE [dbo].[tblCTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblCTHoaDon_tblHoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tblCTHoaDon] CHECK CONSTRAINT [FK_tblCTHoaDon_tblHoaDon]
GO
ALTER TABLE [dbo].[tblCTNhapNL]  WITH CHECK ADD FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[tblNhapNL] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[tblCTNhapNL]  WITH CHECK ADD FOREIGN KEY([MaNL])
REFERENCES [dbo].[tblNguyenLieu] ([MaNL])
GO
ALTER TABLE [dbo].[tblCTOder]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
ALTER TABLE [dbo].[tblCTOder]  WITH CHECK ADD FOREIGN KEY([MaOder])
REFERENCES [dbo].[tblOder] ([MaOder])
GO
ALTER TABLE [dbo].[tblCTXuatNL]  WITH CHECK ADD FOREIGN KEY([MaPhieuXuat])
REFERENCES [dbo].[tblXuatNL] ([MaPhieuXuat])
GO
ALTER TABLE [dbo].[tblCTXuatNL]  WITH CHECK ADD FOREIGN KEY([MaNL])
REFERENCES [dbo].[tblNguyenLieu] ([MaNL])
GO
ALTER TABLE [dbo].[tblDSMon]  WITH CHECK ADD  CONSTRAINT [FK_tblDSMon_tblLoaiMon] FOREIGN KEY([MaLoaiMon])
REFERENCES [dbo].[tblLoaiMon] ([MaLoaiMon])
GO
ALTER TABLE [dbo].[tblDSMon] CHECK CONSTRAINT [FK_tblDSMon_tblLoaiMon]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
ALTER TABLE [dbo].[tblNhapNL]  WITH CHECK ADD  CONSTRAINT [FK_tblNhapNL_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblNhapNL] CHECK CONSTRAINT [FK_tblNhapNL_tblNhanVien]
GO
ALTER TABLE [dbo].[tblOder]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
ALTER TABLE [dbo].[tblOder]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblXuatNL]  WITH CHECK ADD  CONSTRAINT [FK_tblXuatNL_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblXuatNL] CHECK CONSTRAINT [FK_tblXuatNL_tblNhanVien]
GO
/****** Object:  Trigger [dbo].[SoLuongNL_Nhap_Delete]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[SoLuongNL_Nhap_Delete] ON  [dbo].[tblCTNhapNL] FOR delete    
AS 
	update tblNguyenLieu
	set tblNguyenLieu.SoLuongCon=tblNguyenLieu.SoLuongCon - deleted.SoLuong
	from tblNguyenLieu inner join deleted on tblNguyenLieu.MaNL=deleted.MaNL


GO
/****** Object:  Trigger [dbo].[SoLuongNL_Nhap_Insert]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[SoLuongNL_Nhap_Insert] ON  [dbo].[tblCTNhapNL] FOR insert    
AS 
	update tblNguyenLieu
	set tblNguyenLieu.SoLuongCon=tblNguyenLieu.SoLuongCon + Inserted.SoLuong
	from tblNguyenLieu inner join Inserted on tblNguyenLieu.MaNL=Inserted.MaNL


GO
/****** Object:  Trigger [dbo].[SoLuongNL_Nhap_Update]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[SoLuongNL_Nhap_Update] ON  [dbo].[tblCTNhapNL] FOR update    
AS 
	if update(SoLuong)
	update tblNguyenLieu
	set tblNguyenLieu.SoLuongCon=tblNguyenLieu.SoLuongCon + (inserted.SoLuong-deleted.SoLuong)
	from (deleted inner join inserted on deleted.MaNL=inserted.MaNL) inner join tblNguyenLieu on tblNguyenLieu.maNL=deleted.MaNL

GO
/****** Object:  Trigger [dbo].[SoLuongNL_Xuat_Delete]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[SoLuongNL_Xuat_Delete] ON  [dbo].[tblCTXuatNL] FOR delete    
AS 
	update tblNguyenLieu
	set tblNguyenLieu.SoLuongCon=tblNguyenLieu.SoLuongCon + deleted.SoLuong
	from tblNguyenLieu inner join deleted on tblNguyenLieu.MaNL=deleted.MaNL


GO
/****** Object:  Trigger [dbo].[SoLuongNL_Xuat_Insert]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[SoLuongNL_Xuat_Insert] ON  [dbo].[tblCTXuatNL] FOR insert    
AS 
	update tblNguyenLieu
	set tblNguyenLieu.SoLuongCon=tblNguyenLieu.SoLuongCon - Inserted.SoLuong
	from tblNguyenLieu inner join Inserted on tblNguyenLieu.MaNL=Inserted.MaNL


GO
/****** Object:  Trigger [dbo].[SoLuongNL_Xuat_Update]    Script Date: 6/12/2019 8:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[SoLuongNL_Xuat_Update] ON  [dbo].[tblCTXuatNL] FOR update    
AS 
	if update(SoLuong)
	update tblNguyenLieu
	set tblNguyenLieu.SoLuongCon=tblNguyenLieu.SoLuongCon - (inserted.SoLuong-deleted.SoLuong)
	from (deleted inner join inserted on deleted.MaNL=inserted.MaNL) inner join tblNguyenLieu on tblNguyenLieu.maNL=deleted.MaNL


GO
USE [master]
GO
ALTER DATABASE [QuanLyCaPhe] SET  READ_WRITE 
GO
