USE [master]
GO
/****** Object:  Database [QUANLYKHACHSAN]    Script Date: 17/4/2021 8:56:41 PM ******/
CREATE DATABASE [QUANLYKHACHSAN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLYKHACHSAN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QUANLYKHACHSAN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUANLYKHACHSAN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QUANLYKHACHSAN_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QUANLYKHACHSAN] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYKHACHSAN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYKHACHSAN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYKHACHSAN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANLYKHACHSAN] SET QUERY_STORE = OFF
GO
USE [QUANLYKHACHSAN]
GO
/****** Object:  Table [dbo].[BAO_CAO_DOANH_THU]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAO_CAO_DOANH_THU](
	[MaDoanhThu] [varchar](10) NOT NULL,
	[Thang] [datetime] NULL,
	[TongDoanhThu] [float] NULL,
 CONSTRAINT [PK_BAO_CAO_DOANH_THU] PRIMARY KEY CLUSTERED 
(
	[MaDoanhThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_BAO_CAO_DOANH_THU]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_BAO_CAO_DOANH_THU](
	[Thang] [int] NOT NULL,
	[Nam] [int] NULL,
	[MaPhong] [varchar](3) NOT NULL,
	[DoanhThu] [float] NULL,
	[TyLe] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_HOA_DON]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_HOA_DON](
	[MaHoaDon] [varchar](3) NOT NULL,
	[MaPhong] [varchar](3) NOT NULL,
	[MaPhieuDichVu] [varchar](5) NOT NULL,
	[MaChinhSach] [varchar](5) NOT NULL,
	[PhuThu] [float] NULL,
	[TienPhong] [float] NULL,
	[TienDichVu] [float] NULL,
	[GiamGiaKH] [float] NULL,
	[HinhThucThanhToan] [nvarchar](50) NULL,
	[SoNgay] [int] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_CHI_TIET_HOA_DON_1] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_MAT_DO_SU_DUNG_PHONG]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_MAT_DO_SU_DUNG_PHONG](
	[MaChiTietMatDo] [varchar](10) NOT NULL,
	[MaMatDo] [varchar](10) NOT NULL,
	[MaPhong] [varchar](10) NOT NULL,
	[SoNgayThue] [int] NULL,
	[TyLe] [float] NULL,
 CONSTRAINT [PK_CHI_TIET_MAT_DO_SU_DUNG_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaChiTietMatDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_PHIEU_DICH_VU]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_PHIEU_DICH_VU](
	[MaPhieuDichVu] [varchar](5) NULL,
	[MaDichVu] [varchar](5) NULL,
	[MaNhanPhong] [varchar](5) NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_PHIEU_NHAN_PHONG]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_PHIEU_NHAN_PHONG](
	[MaNhanPhong] [varchar](5) NOT NULL,
	[MaPhong] [varchar](3) NOT NULL,
	[HoTenKhachHang] [nvarchar](50) NULL,
	[CMND] [nvarchar](15) NULL,
	[NgayNhan] [datetime] NULL,
	[NgayTraDuKien] [datetime] NULL,
	[NgayTraThucTe] [datetime] NULL,
 CONSTRAINT [PK_CHI_TIET_PHIEU_NHAN_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaNhanPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_PHIEU_THUE_PHONG]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_PHIEU_THUE_PHONG](
	[MaPhieuThue] [varchar](10) NOT NULL,
	[MaPhong] [varchar](3) NOT NULL,
	[NgayDangKy] [datetime] NULL,
	[NgayNhan] [datetime] NULL,
 CONSTRAINT [PK_CHI_TIET_PHIEU_THUE_PHONG_1] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHINH_SACH_TRA_PHONG]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHINH_SACH_TRA_PHONG](
	[MaChinhSach] [varchar](5) NOT NULL,
	[ThoiGianQuiDinh] [nvarchar](50) NULL,
	[PhuThu] [float] NULL,
 CONSTRAINT [PK_CHINH_SACH_TRA_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaChinhSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICH_VU]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICH_VU](
	[MaDichVu] [varchar](5) NOT NULL,
	[MaLoaiDichVu] [varchar](5) NOT NULL,
	[MaDonVi] [varchar](3) NOT NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_DICH_VU] PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DON_VI]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_VI](
	[MaDonVi] [varchar](3) NOT NULL,
	[TenDonVi] [nvarchar](50) NULL,
 CONSTRAINT [PK_DON_VI] PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOA_DON]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOA_DON](
	[MaHoaDon] [varchar](3) NOT NULL,
	[NhanVienLap] [nvarchar](50) NULL,
	[MaKhachHang] [varchar](3) NOT NULL,
	[MaNhanPhong] [varchar](5) NOT NULL,
	[TongTien] [float] NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_HOA_DON] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[MaKhachHang] [varchar](3) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[CMND] [nvarchar](15) NOT NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](12) NULL,
	[QuocTich] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHACH_HANG] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_DICH_VU]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_DICH_VU](
	[MaLoaiDichVu] [varchar](5) NOT NULL,
	[TenLoaiDichVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAI_DICH_VU] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_NGUOI_DUNG]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_NGUOI_DUNG](
	[LoaiNguoiDung] [int] NOT NULL,
	[TenLoaiNguoiDung] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAI_NGUOI_DUNG] PRIMARY KEY CLUSTERED 
(
	[LoaiNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_PHONG]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_PHONG](
	[MaLoaiPhong] [varchar](3) NOT NULL,
	[TenLoaiPhong] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[SoNguoiChuan] [int] NULL,
	[SoNguoiToiDa] [int] NULL,
	[TyLeTang] [float] NULL,
 CONSTRAINT [PK_LOAI_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_TINH_TRANG]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_TINH_TRANG](
	[MaLoaiTinhTrangPhong] [int] NOT NULL,
	[TenLoaiTinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAI_TINH_TRANG] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTinhTrangPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAT_DO_SU_DUNG_PHONG]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAT_DO_SU_DUNG_PHONG](
	[MaMatDo] [varchar](10) NOT NULL,
	[Ngay] [datetime] NULL,
	[Thang] [datetime] NULL,
	[Nam] [datetime] NULL,
 CONSTRAINT [PK_MAT_DO_SU_DUNG_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaMatDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOI_DUNG]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOI_DUNG](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[LoaiNguoiDung] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_DICH_VU]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_DICH_VU](
	[MaPhieuDichVu] [varchar](5) NOT NULL,
	[MaNhanPhong] [varchar](5) NOT NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_PHIEU_DICH_VU] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_NHAN_PHONG]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_NHAN_PHONG](
	[MaNhanPhong] [varchar](5) NOT NULL,
	[MaPhieuThue] [varchar](10) NOT NULL,
	[MaKhachHang] [varchar](3) NOT NULL,
 CONSTRAINT [PK_PHIEU_NHAN_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaNhanPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_THUE_PHONG]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_THUE_PHONG](
	[MaPhieuThue] [varchar](10) NOT NULL,
	[MaKhachHang] [varchar](3) NOT NULL,
 CONSTRAINT [PK_PHIEU_THUE_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[MaPhong] [varchar](3) NOT NULL,
	[MaLoaiPhong] [varchar](3) NOT NULL,
	[MaLoaiTinhTrangPhong] [int] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUI_DINH]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUI_DINH](
	[TenQuiDinh] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THAM_SO]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THAM_SO](
	[PhieuDangKy] [int] NOT NULL,
	[PhieuNhan] [int] NOT NULL,
	[HoaDon] [int] NULL,
	[STT] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THIET_BI]    Script Date: 17/4/2021 8:56:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THIET_BI](
	[MaThietBi] [varchar](8) NOT NULL,
	[TenThietBi] [nvarchar](50) NULL,
	[MaLoaiPhong] [varchar](3) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_THIET_BI] PRIMARY KEY CLUSTERED 
(
	[MaThietBi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'02', N'202', N'02', N'Muc5', 1, 320000, 21000, 0, N'Trực tiếp', 1, 661000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'03', N'202', N'03', N'Muc1', 0, 320000, 15000, 0, N'Trực tiếp', 2, 655000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'04', N'201', N'04', N'Muc2', 1, 320000, 54000, 0, N'Chuyển khoản', 1, 438000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'05', N'203', N'05', N'Muc3', 1, 270000, 10000, 0, N'Trực tiếp', 1, 478000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'05_', N'204', N'05_1', N'Muc3', 1, 270000, 0, 0, N'Trực tiếp', 1, 378000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'06', N'902', N'06', N'Muc4', 1, 720000, 110000, 10000, N'Chuyển khoản', 1, 1180000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'06_', N'208', N'06_', N'Muc4', 1, 270000, 0, 0, N'Chuyển khoản', 1, 405000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'07', N'210', N'07', N'Muc1', 0, 320000, 160000, 0, N'Trực tiếp', 1, 480000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'09', N'301', N'09', N'Muc1', 0, 320000, 0, 0, N'Trực tiếp', 1, 320000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'1', N'301', N'1', N'Muc5', 1, 320000, 0, 0, N'Chuyển khoản', 1, 640000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'12', N'303', N'12', N'Muc1', 0, 270000, 160000, 0, N'Trực tiếp', 2, 700000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'13', N'401', N'13', N'Muc1', 0, 320000, 8000, 0, N'Trực tiếp', 1, 328000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'14', N'401', N'14', N'Muc2', 1, 320000, 160000, 0, N'Chuyển khoản', 1, 544000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'15', N'403', N'15', N'Muc1', 0, 270000, 10000, 0, N'Trực tiếp', 1, 280000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'16', N'903', N'16', N'Muc1', 0, 720000, 281000, 0, N'Chuyển khoản', 1, 900000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'19', N'404', N'16', N'Muc1', 0, 270000, 10000, 0, N'Trực tiếp', 2, 550000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'2', N'302', N'2', N'Muc5', 1, 320000, 60000, 0, N'Chuyển khoản', 1, 700000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'20', N'406', N'20', N'Muc1', 0, 270000, 0, 0, N'Trực tiếp', 2, 540000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'21', N'407', N'21', N'Muc1', 0, 270000, 25000, 0, N'Chuyển khoản', 2, 565000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'22', N'410', N'22', N'Muc1', 0, 320000, 80000, 0, N'Trực tiếp', 1, 400000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaPhieuDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'23', N'410', N'23', N'Muc1', 0, 320000, 0, 0, N'Chuyển khoản', 1, 320000)
GO
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'02', N'DV06', N'02', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'02', N'DV07', N'02', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'2', N'DV01', N'2', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'1', N'DV00', N'1', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'03', N'DV07', N'03', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'03', N'DV14', N'03', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'03', N'DV17', N'03', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'04', N'DV03', N'04', 2)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'04', N'DV06', N'04', 2)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'05', N'DV02', N'05', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'05', N'DV15', N'05', 2)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'05', N'DV26', N'05', 2)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'05_1', N'DV00', N'05_1', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'06', N'DV02', N'06', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'06', N'DV12', N'06', 3)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'06', N'DV23', N'06', 3)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'06_', N'DV00', N'06_', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'07', N'DV02', N'07', 2)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'09', N'DV00', N'09', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'12', N'DV02', N'12', 2)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'13', N'DV05', N'13', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'14', N'DV06', N'14', 2)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'15', N'DV08', N'15', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'15', N'DV18', N'15', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'16', N'DV16', N'16', 3)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'16', N'DV27', N'16', 3)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'16', N'DV02', N'16', 3)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'16', N'DV05', N'16', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'19', N'DV07', N'19', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'19', N'DV17', N'19', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'20', N'DV00', N'20', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'21', N'DV04', N'21', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'21', N'DV10', N'21', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'21', N'DV20', N'21', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'22', N'DV02', N'22', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'23', N'DV00', N'23', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'24', N'DV06', N'24', 1)
INSERT [dbo].[CHI_TIET_PHIEU_DICH_VU] ([MaPhieuDichVu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'24', N'DV07', N'24', 1)
GO
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'01', N'209', N'Nguyễn Hồng Hà', N'123412345', CAST(N'2021-03-11T08:00:00.000' AS DateTime), CAST(N'2021-03-30T00:00:00.000' AS DateTime), CAST(N'2021-03-30T12:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'02', N'202', N'Lê Thị Thu Giang', N'0013000122', CAST(N'2021-03-15T00:00:00.000' AS DateTime), CAST(N'2021-03-16T00:00:00.000' AS DateTime), CAST(N'2021-03-16T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'03', N'202', N'Nguyễn Đức Anh', N'00130099', CAST(N'2021-03-16T12:10:00.000' AS DateTime), CAST(N'2021-03-18T12:00:00.000' AS DateTime), CAST(N'2021-03-18T12:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'04', N'201', N'Trần Trung Đức', N'001300032', CAST(N'2021-03-16T13:00:00.000' AS DateTime), CAST(N'2021-03-17T14:00:00.000' AS DateTime), CAST(N'2021-03-17T14:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'05', N'203', N'Vũ Hoàng Long', N'001300033', CAST(N'2021-03-16T16:05:00.000' AS DateTime), CAST(N'2021-03-17T16:05:00.000' AS DateTime), CAST(N'2021-03-17T16:05:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'05_1', N'204', N'Vũ Hoàng Long', N'001300033', CAST(N'2021-03-16T16:05:00.000' AS DateTime), CAST(N'2021-03-17T16:05:00.000' AS DateTime), CAST(N'2021-03-17T16:05:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'06', N'902', N'Phan Thùy Dương', N'001300034', CAST(N'2021-03-17T12:01:00.000' AS DateTime), CAST(N'2021-03-18T18:30:00.000' AS DateTime), CAST(N'2021-03-18T18:30:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'06_', N'208', N'Phan Thùy Dương', N'001300034', CAST(N'2021-03-17T12:01:00.000' AS DateTime), CAST(N'2021-03-18T18:30:00.000' AS DateTime), CAST(N'2021-03-18T18:30:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'07', N'210', N'Billie Eilish', N'004832484', CAST(N'2021-03-17T12:01:00.000' AS DateTime), CAST(N'2021-03-18T12:01:00.000' AS DateTime), CAST(N'2021-03-17T12:01:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'09', N'301', N'Baek JuHo', N'094545854', CAST(N'2021-03-17T12:05:00.000' AS DateTime), CAST(N'2021-03-18T13:00:00.000' AS DateTime), CAST(N'2021-03-17T13:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'1', N'301', N'Hien', N'1234567', CAST(N'2021-02-24T08:00:00.000' AS DateTime), CAST(N'2021-02-25T00:00:00.000' AS DateTime), CAST(N'2021-02-25T12:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'12', N'303', N'Trần Khả Như', N'001300035', CAST(N'2021-03-17T13:01:00.000' AS DateTime), CAST(N'2021-03-20T12:00:00.000' AS DateTime), CAST(N'2021-03-19T12:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'13', N'401', N'Ariana ', N'083804934', CAST(N'2021-03-18T08:05:00.000' AS DateTime), CAST(N'2021-03-18T13:00:00.000' AS DateTime), CAST(N'2021-03-18T13:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'14', N'401', N'Thái Tử Khôn', N'001300099', CAST(N'2021-03-18T14:05:00.000' AS DateTime), CAST(N'2021-03-19T14:05:00.000' AS DateTime), CAST(N'2021-03-19T14:09:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'15', N'403', N'Tom Hiddleson', N'5237937645', CAST(N'2021-03-19T09:15:00.000' AS DateTime), CAST(N'2021-03-19T13:00:00.000' AS DateTime), CAST(N'2021-03-19T13:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'16', N'903', N'Nguyễn Thu Hòa', N'001300036', CAST(N'2021-03-19T12:00:00.000' AS DateTime), CAST(N'2021-03-20T08:00:00.000' AS DateTime), CAST(N'2021-03-20T12:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'19', N'404', N'Nguyễn Thị Phương Thảo', N'001300039', CAST(N'2021-03-19T08:00:00.000' AS DateTime), CAST(N'2021-03-20T12:00:00.000' AS DateTime), CAST(N'2021-03-20T12:30:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'2', N'302', N'Hien', N'1234567', CAST(N'2021-02-24T00:00:00.000' AS DateTime), CAST(N'2021-02-25T00:00:00.000' AS DateTime), CAST(N'2021-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'20', N'406', N'Phan Nhật Minh', N'001300040', CAST(N'2021-03-19T08:05:00.000' AS DateTime), CAST(N'2021-03-20T08:05:00.000' AS DateTime), CAST(N'2021-03-20T08:05:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'21', N'407', N'Phan Thu Ninh', N'001300041', CAST(N'2021-03-19T08:05:00.000' AS DateTime), CAST(N'2021-03-20T08:05:00.000' AS DateTime), CAST(N'2021-03-20T08:05:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'22', N'410', N'Chu Thị Hường', N'001300042', CAST(N'2021-03-19T13:10:00.000' AS DateTime), CAST(N'2021-03-20T12:05:00.000' AS DateTime), CAST(N'2021-03-20T12:05:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'23', N'410', N'Trương Phương Thúy', N'001300043', CAST(N'2021-03-20T13:10:00.000' AS DateTime), CAST(N'2021-03-21T13:00:00.000' AS DateTime), CAST(N'2021-03-21T13:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'24', N'201', N'Phùng Minh Đức', N'001300044', CAST(N'2021-04-07T00:00:00.000' AS DateTime), CAST(N'2021-04-08T00:00:00.000' AS DateTime), CAST(N'2021-04-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'01', N'209', CAST(N'2021-03-11T00:00:00.000' AS DateTime), CAST(N'2021-03-11T08:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'02', N'202', CAST(N'2021-03-15T00:00:00.000' AS DateTime), CAST(N'2021-03-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'03', N'202', CAST(N'2021-03-16T00:00:00.000' AS DateTime), CAST(N'2021-03-16T12:10:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'04', N'201', CAST(N'2021-03-16T00:00:00.000' AS DateTime), CAST(N'2021-03-16T13:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'05', N'203', CAST(N'2021-03-16T16:00:00.000' AS DateTime), CAST(N'2021-03-16T16:05:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'05_1', N'204', CAST(N'2021-03-16T16:05:00.000' AS DateTime), CAST(N'2021-03-16T16:05:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'06', N'902', CAST(N'2021-03-17T12:00:00.000' AS DateTime), CAST(N'2021-03-17T12:01:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'06_', N'208', CAST(N'2021-03-17T12:00:00.000' AS DateTime), CAST(N'2021-03-17T12:01:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'07', N'210', CAST(N'2021-03-17T12:00:00.000' AS DateTime), CAST(N'2021-03-17T12:01:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'09', N'301', CAST(N'2021-03-17T12:01:00.000' AS DateTime), CAST(N'2021-03-17T12:05:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'1', N'301', CAST(N'2021-02-24T00:00:00.000' AS DateTime), CAST(N'2021-02-24T08:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'10', N'303', CAST(N'2021-03-20T12:00:00.000' AS DateTime), CAST(N'2021-03-20T12:01:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'11', N'304', CAST(N'2021-03-20T12:00:00.000' AS DateTime), CAST(N'2021-03-20T12:01:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'12', N'303', CAST(N'2021-03-17T13:00:00.000' AS DateTime), CAST(N'2021-03-20T13:01:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'13', N'401', CAST(N'2021-03-18T08:00:00.000' AS DateTime), CAST(N'2021-03-18T08:05:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'14', N'401', CAST(N'2021-03-18T14:00:00.000' AS DateTime), CAST(N'2021-03-18T14:05:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'15', N'403', CAST(N'2021-03-19T09:05:00.000' AS DateTime), CAST(N'2021-03-19T09:15:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'16', N'903', CAST(N'2021-03-19T07:00:00.000' AS DateTime), CAST(N'2021-03-19T12:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'17', N'308', CAST(N'2021-03-30T08:00:00.000' AS DateTime), CAST(N'2021-03-30T08:01:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'18', N'309', CAST(N'2021-03-30T08:00:00.000' AS DateTime), CAST(N'2021-03-30T08:01:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'19', N'404', CAST(N'2021-03-19T08:00:00.000' AS DateTime), CAST(N'2021-03-19T08:01:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'2', N'302', CAST(N'2021-02-24T00:00:00.000' AS DateTime), CAST(N'2021-02-24T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'20', N'406', CAST(N'2021-03-19T08:00:00.000' AS DateTime), CAST(N'2021-03-19T08:05:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'21', N'407', CAST(N'2021-03-19T08:00:00.000' AS DateTime), CAST(N'2021-03-19T08:05:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'22', N'410', CAST(N'2021-03-19T13:05:00.000' AS DateTime), CAST(N'2021-03-19T13:10:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'23', N'410', CAST(N'2021-03-20T13:05:00.000' AS DateTime), CAST(N'2021-03-20T13:10:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'24', N'201', CAST(N'2021-04-06T00:00:00.000' AS DateTime), CAST(N'2021-04-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc1', N'12h-13h', 0)
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc2', N'13h-15h', 0.2)
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc3', N'15h-17h', 0.4)
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc4', N'17h-19h', 0.5)
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc5', N'Sau 19h', 1)
GO
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV00', N'KHONG', N'KSD', 0)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV01', N'K', N'H', 60000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV02', N'M', N'V', 80000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV03', N'BH', N'L', 12000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV04', N'NB', N'L', 12000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV05', N'NL', N'CH', 8000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV06', N'TG', N'L', 15000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV07', N'GASM', N'C', 6000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV08', N'GQT', N'C', 6000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV09', N'GQS', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV10', N'GADAM', N'C', 8000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV11', N'GADAI', N'B', 9000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV12', N'GVD', N'B', 6000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV13', N'GVN', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV14', N'GQJ', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV15', N'GAT', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV16', N'GQAN', N'B', 8000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV17', N'UASM', N'C', 4000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV18', N'UQT', N'C', 4000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV19', N'UQS', N'C', 3000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV20', N'UADAM', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV21', N'UADAI', N'B', 6000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV22', N'UVD', N'B', 4000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV23', N'UVD', N'C', 4000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV25', N'UQJ', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV26', N'UAT', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV27', N'UQAN', N'B', 4000)
GO
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'B', N'Bộ')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'C', N'Cái')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'CH', N'Chai')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'H', N'Giờ')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'KSD', N'Không sddv')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'L', N'Lon')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'V', N'Vé')
GO
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'02', N'Hạ Vũ', N'A02', N'02', 661000, CAST(N'2021-03-16T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'03', N'Hạ Vũ', N'A03', N'03', 655000, CAST(N'2021-03-18T12:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'04', N'Hạ Vũ', N'A04', N'04', 438000, CAST(N'2021-03-17T14:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'05', N'Hạ Vũ', N'A05', N'05', 478000, CAST(N'2021-03-17T16:05:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'05_', N'Hạ Vũ', N'A05', N'05_1', 378000, CAST(N'2021-03-17T16:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'06', N'Võ Trung Quân', N'A06', N'06', 1180000, CAST(N'2021-03-18T18:40:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'06_', N'Võ Trung Quân', N'A06', N'06_', 405000, CAST(N'2021-03-18T18:40:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'07', N'Hạ Vũ', N'A07', N'07', 480000, CAST(N'2021-03-18T12:01:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'09', N'Hạ Vũ', N'A09', N'09', 320000, CAST(N'2021-03-18T13:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'1', N'Võ Trung Quân', N'A08', N'1', 640000, CAST(N'2021-02-25T12:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'12', N'Võ Trung Quân', N'A12', N'12', 700000, CAST(N'2021-03-19T12:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'13', N'Hạ Vũ', N'A13', N'13', 328000, CAST(N'2021-03-18T13:01:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'14', N'Hạ Vũ', N'A14', N'14', 544000, CAST(N'2021-03-19T14:05:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'15', N'Võ Trung Quân', N'A15', N'15', 280000, CAST(N'2021-03-19T13:10:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'16', N'Võ Trung Quân', N'A16', N'16', 1001000, CAST(N'2021-03-20T12:05:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'19', N'Hạ Vũ', N'A19', N'19', 550000, CAST(N'2021-03-20T12:30:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'2', N'Võ Trung Quân', N'A08', N'2', 700000, CAST(N'2021-02-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'20', N'Hạ Vũ', N'A20', N'20', 540000, CAST(N'2021-03-20T08:05:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'21', N'Hạ Vũ', N'A21', N'21', 0, CAST(N'2021-03-20T08:05:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'22', N'Hạ Vũ', N'A22', N'22', 400000, CAST(N'2021-03-20T12:10:00.000' AS DateTime), NULL)
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap], [GhiChu]) VALUES (N'23', N'Võ Trung Quân', N'A23', N'23', 320000, CAST(N'2021-03-20T13:10:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A01', N'Nguyễn Hồng Hà', N'123412345', N'Nữ', N'xã-huyện-tỉnh', N'0345678910', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A02', N'Lê Thị Thu Giang', N'001300122', N'Nữ ', N'Hà Nội', N'0312456789', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A03', N'Nguyễn Đức Anh', N'001200099', N'Nam', N'Thanh Hóa', N'0960031288', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A04', N'Trần Trung Đức', N'001300032', N'Nam', N'Đông Anh - Hà Nội', N'0973304541', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A05', N'Vũ Hoàng Long', N'001300033', N'Nam', N'Hải Dương', N'0352561634', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A06', N'Phan Thùy Dương', N'001300034', N'Nữ', N'Buôn Ma Thuột', N'0986234431', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A07', N'Billie Eilish', N'004832484', N'Nữ', N'Floria - Mỹ', N'0347893094', N'Mỹ')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A08', N'Hien', N'123456789', N'Nữ', N'Vân Tảo-Thường Tín-Hà Nội', N'0345678999', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A09', N'Baek JuHo', N'094545854', N'Nam', N'Seoul-Hàn Quốc', N'0946498784', N'Hàn Quốc')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A10', N'Kudo Shinichi', N'113322888', N'Nam', N'Osaka-Nhật Bản', N'0432444888', N'Nhật Bản')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A11', N'Ran Mori', N'113322567', N'Nữ', N'Osaka-Nhật Bản', N'0432558999', N'Nhật Bản')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A12', N'Trần Khả Như', N'001300035', N'Nữ', N'Quận 12-Hồ Chí Minh', N'0969323888', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A13', N'Ariana', N'083804934', N'Nữ', N'California-Mỹ', N'0997484844', N'Mỹ')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A14', N'Thái Tử Khôn', N'001300099', N'Nam', N'Bắc Kinh - Trung Quốc', N'0567998888', N'Trung Quốc')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A15', N'Tom Hiddleson', N'5237937645', N'Nam', N'Westminster, London', N'0345678910', N'Mỹ')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A16', N'Nguyễn Thu Hòa', N'001300036', N'Nữ', N'Ngọc Hồi-KonTum', N'0379228459', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A17', N'Trịnh Thanh Bình', N'001300037', N'Nam', N'Quận 1 - Hồ Chí Minh', N'0352644899', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A18', N'Trịnh Hà Thu', N'001300038', N'Nữ', N'Quận 1 - HCM', N'0352644889', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A19', N'Nguyễn Thị Phương Thảo', N'001300039', N'Nữ', N'Quận 2 - HCM', N'0349987236', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A20', N'Phan Nhật Minh', N'001300040', N'Nam', N'322-Xuân Thủy-Cầu Giấy-Hà Nội', N'0897402001', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A21', N'PhanThu Ninh', N'001300041', N'Nữ', N'103-Xa La- Hà Đông', N'024598688', N'Campuchia')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A22', N'Chu Thị Hường', N'001300042', N'Nữ', N'110-HQV-Cầu Giấy-Hà Nội', N'0986345345', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A23', N'Trương Phương Thúy', N'001300043', N'Nữ', N'236-HQV-Cổ Nhuế-Hà Nội', N'0988909021', N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A24', N'Phùng Minh Đức', N'001300044', N'Nam', N'120-Hồ Tùng Mậu- Cầu Giấy-Hà Nội', N'0909876222', N'Lào')
GO
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'BH', N'Bò húc')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GADAI', N'Giặt áo dài')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GADAM', N'Giặt áo đầm')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GASM', N'Giặt áo sơ mi')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GAT', N'Giặt áo thun')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GQAN', N'Giặt quần áo ngủ')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GQJ', N'Giặt quần jean')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GQS', N'Giặt quần sọt')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GQT', N'Giặt quần tây')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GVD', N'Giặt váy dài')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GVN', N'Giặt váy ngắn')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'K', N'Karaoke')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'KHONG', N'Không dùng dịch vụ')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'M', N'Massage')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'NB', N'Nước bí')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'NL', N'Nước Lavie')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'TG', N'Tiger Beer')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UADAI', N'Ủi áo dài')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UADAM', N'Ủi áo đầm')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UASM', N'Ủi áo sơ mi')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UAT', N'Ủi áo thun')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UQAN', N'Ủi quần áo ngủ')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UQJ', N'Ủi quần jean')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UQS', N'Ủi quần sọt')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UQT', N'Ủi quần tây')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UVD', N'Ủi váy dài')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UVN', N'Ủi váy ngắn')
GO
INSERT [dbo].[LOAI_NGUOI_DUNG] ([LoaiNguoiDung], [TenLoaiNguoiDung]) VALUES (1, N'Admin')
INSERT [dbo].[LOAI_NGUOI_DUNG] ([LoaiNguoiDung], [TenLoaiNguoiDung]) VALUES (2, N'User')
GO
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'DB', N'Đặc biệt', 720000, 2, 4, NULL)
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'LI', N'Loại I', 320000, 2, 4, NULL)
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'LII', N'Loại II', 270000, 2, 4, NULL)
GO
INSERT [dbo].[LOAI_TINH_TRANG] ([MaLoaiTinhTrangPhong], [TenLoaiTinhTrang]) VALUES (1, N'Trống')
INSERT [dbo].[LOAI_TINH_TRANG] ([MaLoaiTinhTrangPhong], [TenLoaiTinhTrang]) VALUES (2, N'Đặt')
INSERT [dbo].[LOAI_TINH_TRANG] ([MaLoaiTinhTrangPhong], [TenLoaiTinhTrang]) VALUES (3, N'Có người ở')
GO
INSERT [dbo].[NGUOI_DUNG] ([TenDangNhap], [MatKhau], [LoaiNguoiDung]) VALUES (N'giang', N'giang', 1)
INSERT [dbo].[NGUOI_DUNG] ([TenDangNhap], [MatKhau], [LoaiNguoiDung]) VALUES (N'quan', N'quan', 2)
INSERT [dbo].[NGUOI_DUNG] ([TenDangNhap], [MatKhau], [LoaiNguoiDung]) VALUES (N'ha', N'ha', 1)
INSERT [dbo].[NGUOI_DUNG] ([TenDangNhap], [MatKhau], [LoaiNguoiDung]) VALUES (N'hien', N'hien', 1)
GO
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'02', N'02', 21000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'03', N'03', 1500)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'04', N'04', 54000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'05', N'05', 100000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'05_1', N'05_1', 0)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'06', N'06', 110000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'06_', N'06_', 0)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'07', N'07', 160000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'09', N'09', 0)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'1', N'1', 0)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'12', N'12', 160000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'13', N'13', 8000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'14', N'14', 160000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'15', N'15', 10000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'16', N'16', 281000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'19', N'19', 10000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'2', N'2', 60000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'20', N'20', 0)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'21', N'21', 25000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'22', N'22', 80000)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'23', N'23', 0)
INSERT [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu], [MaNhanPhong], [ThanhTien]) VALUES (N'24', N'24', 21000)
GO
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'01', N'01', N'A01')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'02', N'02', N'A02')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'03', N'03', N'A03')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'04', N'04', N'A04')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'05', N'05', N'A05')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'05_1', N'05_1', N'A05')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'06', N'06', N'A06')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'06_', N'06_', N'A06')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'07', N'07', N'A07')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'09', N'09', N'A09')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'1', N'1', N'A08')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'12', N'12', N'A12')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'13', N'13', N'A13')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'14', N'14', N'A14')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'15', N'15', N'A15')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'16', N'16', N'A16')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'19', N'19', N'A19')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'2', N'2', N'A08')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'20', N'20', N'A20')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'21', N'21', N'A21')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'22', N'22', N'A22')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'23', N'23', N'A23')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'24', N'24', N'A24')
GO
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'01', N'A01')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'02', N'A02')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'03', N'A03')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'04', N'A04')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'05', N'A05')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'05_1', N'A05')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'06', N'A06')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'06_', N'A06')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'07', N'A07')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'09', N'A09')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'1', N'A08')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'10', N'A10')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'11', N'A11')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'12', N'A12')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'13', N'A13')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'14', N'A14')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'15', N'A15')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'16', N'A16')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'17', N'A17')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'18', N'A18')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'19', N'A19')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'2', N'A08')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'20', N'A20')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'21', N'A21')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'22', N'A22')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'23', N'A23')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'24', N'A24')
GO
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'201', N'LI', 3, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'202', N'LI', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'203', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'204', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'205', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'206', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'207', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'208', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'209', N'LII', 3, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'210', N'LI', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'301', N'LI', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'302', N'LI', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'303', N'LII', 2, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'304', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'305', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'306', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'307', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'308', N'LII', 2, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'309', N'LII', 2, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'310', N'LI', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'401', N'LI', 2, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'402', N'LI', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'403', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'404', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'405', N'LII', 2, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'406', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'407', N'LII', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'410', N'LI', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'801', N'DB', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'802', N'LI', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'902', N'DB', 2, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'903', N'DB', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'904', N'LI', 1, N'')
GO
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (N'Chính sách trả phòng', N'1. Thời gain trả mỗi ngày là 12h')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'2. Trả phòng sau 12h đến 13h không phụ thu tiền phòng')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'3. Trả phòng sau 13h đến 15h phụ thu 20% tiền phòng')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'4. Trả phòng sau 15h đến 17h phụ thu 40% tiền phòng')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'5. Trả phòng sau 17h đến 19h phụ thu 50% tiền phòng')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'5. Trả phòng sau 19h tính nguyên giá đêm')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (N'Nội qui Khách Sạn', N'1. Khách đến thuê phòng phải xuất trình hộ chiếu có thị thực  nhập cảnh hợp lệ cho tiếp tân ( hoặc chứng minh nhân dân đối với khách trong nước ).')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'2. Không mang vũ khí, chất độc, chất nổ, chất cháy và gia súc vào khách sạn.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'3. Khách sạn chỉ chịu trách nhiệm về những tư trang, tiền bạc mà khách ký gởi tại khách sạn và có biên nhận. ')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'4. Không tự ý thay đổi phòng và thêm người.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'5. Không đưa gái mại dâm vào khách sạn.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'6. Cần báo cho tiếp tân biết khi tiếp khách tại phòng và phải kết thúc trước 23h.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'7. Khi ra khỏi khách sạn, vui lòng gửi lại chìa khóa cho tiếp tân.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'8. Không nấu nướng và ủi quần áo trong phòng.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'9. Giờ trả phòng trước 12h.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (N'Qui định K', N'ytgh')
GO
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'BDKML', N'Bộ điều khiển máy lạnh từ xa', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'BDKTV', N'Bộ điều khiển Ti Vi', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'BDKTVLI', N'Bộ điều khiển Ti Vi', N'LI', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'BDKTVLII', N'Bộ điều khiển Ti Vi', N'LII', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'BT', N'Bình thủy', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DEP', N'Dép', N'DB', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DEPLI', N'Dép', N'LI', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DEPLII', N'Dép', N'LII', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DH', N'Đồng hồ', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DHLI', N'Đồng hồ', N'LI', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DHLII', N'Đồng hồ', N'LII', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DT', N'Điện thoại', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DTLI', N'Điện thoại', N'LI', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DTLII', N'Điện thoại', N'LII', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DUL', N'Dĩa úp ly', N'DB', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DULLII', N'Dĩa úp ly', N'LII', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'GT', N'Gạt tàn', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'GTLI', N'Gạt tàn', N'LI', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'GTLII', N'Gạt tàn', N'LII', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KL', N'Khai ly', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KLYLI', N'Khai ly', N'LI', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KLYLII', N'Khai ly', N'LII', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KM', N'Khăn mặt', N'DB', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KMLI', N'Khăn mặt', N'LI', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KMLII', N'Khăn mặt', N'LII', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KT', N'Khăn tắm', N'DB', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KTLI', N'Khăn tắm', N'LI', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KTLII', N'Khăn tắm', N'LII', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'LY', N'Ly', N'DB', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'LYLI', N'Ly', N'LI', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'LYLII', N'Ly', N'LII', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'MST', N'Máy sấy tóc', N'DB', 1)
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_HOA_DON_CHINH_SACH_TRA_PHONG] FOREIGN KEY([MaChinhSach])
REFERENCES [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach])
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON] CHECK CONSTRAINT [FK_CHI_TIET_HOA_DON_CHINH_SACH_TRA_PHONG]
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_HOA_DON_HOA_DON] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HOA_DON] ([MaHoaDon])
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON] CHECK CONSTRAINT [FK_CHI_TIET_HOA_DON_HOA_DON]
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_HOA_DON_PHIEU_DICH_VU] FOREIGN KEY([MaPhieuDichVu])
REFERENCES [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu])
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON] CHECK CONSTRAINT [FK_CHI_TIET_HOA_DON_PHIEU_DICH_VU]
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_HOA_DON_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON] CHECK CONSTRAINT [FK_CHI_TIET_HOA_DON_PHONG]
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_DICH_VU]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_PHIEU_DICH_VU_DICH_VU] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[DICH_VU] ([MaDichVu])
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_DICH_VU] CHECK CONSTRAINT [FK_CHI_TIET_PHIEU_DICH_VU_DICH_VU]
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_DICH_VU]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_PHIEU_DICH_VU_PHIEU_DICH_VU] FOREIGN KEY([MaPhieuDichVu])
REFERENCES [dbo].[PHIEU_DICH_VU] ([MaPhieuDichVu])
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_DICH_VU] CHECK CONSTRAINT [FK_CHI_TIET_PHIEU_DICH_VU_PHIEU_DICH_VU]
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_NHAN_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_PHIEU_NHAN_PHONG_PHIEU_NHAN_PHONG] FOREIGN KEY([MaNhanPhong])
REFERENCES [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong])
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] CHECK CONSTRAINT [FK_CHI_TIET_PHIEU_NHAN_PHONG_PHIEU_NHAN_PHONG]
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_NHAN_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_PHIEU_NHAN_PHONG_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] CHECK CONSTRAINT [FK_CHI_TIET_PHIEU_NHAN_PHONG_PHONG]
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_THUE_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_PHIEU_THUE_PHONG_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_THUE_PHONG] CHECK CONSTRAINT [FK_CHI_TIET_PHIEU_THUE_PHONG_PHONG]
GO
ALTER TABLE [dbo].[DICH_VU]  WITH CHECK ADD  CONSTRAINT [FK_DICH_VU_DON_VI1] FOREIGN KEY([MaDonVi])
REFERENCES [dbo].[DON_VI] ([MaDonVi])
GO
ALTER TABLE [dbo].[DICH_VU] CHECK CONSTRAINT [FK_DICH_VU_DON_VI1]
GO
ALTER TABLE [dbo].[DICH_VU]  WITH CHECK ADD  CONSTRAINT [FK_DICH_VU_LOAI_DICH_VU] FOREIGN KEY([MaLoaiDichVu])
REFERENCES [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu])
GO
ALTER TABLE [dbo].[DICH_VU] CHECK CONSTRAINT [FK_DICH_VU_LOAI_DICH_VU]
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_HOA_DON_KHACH_HANG1] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACH_HANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HOA_DON] CHECK CONSTRAINT [FK_HOA_DON_KHACH_HANG1]
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_HOA_DON_PHIEU_NHAN_PHONG] FOREIGN KEY([MaNhanPhong])
REFERENCES [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong])
GO
ALTER TABLE [dbo].[HOA_DON] CHECK CONSTRAINT [FK_HOA_DON_PHIEU_NHAN_PHONG]
GO
ALTER TABLE [dbo].[NGUOI_DUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOI_DUNG_LOAI_NGUOI_DUNG] FOREIGN KEY([LoaiNguoiDung])
REFERENCES [dbo].[LOAI_NGUOI_DUNG] ([LoaiNguoiDung])
GO
ALTER TABLE [dbo].[NGUOI_DUNG] CHECK CONSTRAINT [FK_NGUOI_DUNG_LOAI_NGUOI_DUNG]
GO
ALTER TABLE [dbo].[PHIEU_NHAN_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_NHAN_PHONG_KHACH_HANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACH_HANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PHIEU_NHAN_PHONG] CHECK CONSTRAINT [FK_PHIEU_NHAN_PHONG_KHACH_HANG]
GO
ALTER TABLE [dbo].[PHIEU_NHAN_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_NHAN_PHONG_PHIEU_THUE_PHONG] FOREIGN KEY([MaPhieuThue])
REFERENCES [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue])
GO
ALTER TABLE [dbo].[PHIEU_NHAN_PHONG] CHECK CONSTRAINT [FK_PHIEU_NHAN_PHONG_PHIEU_THUE_PHONG]
GO
ALTER TABLE [dbo].[PHIEU_THUE_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_THUE_PHONG_CHI_TIET_PHIEU_THUE_PHONG] FOREIGN KEY([MaPhieuThue])
REFERENCES [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue])
GO
ALTER TABLE [dbo].[PHIEU_THUE_PHONG] CHECK CONSTRAINT [FK_PHIEU_THUE_PHONG_CHI_TIET_PHIEU_THUE_PHONG]
GO
ALTER TABLE [dbo].[PHIEU_THUE_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_THUE_PHONG_KHACH_HANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACH_HANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PHIEU_THUE_PHONG] CHECK CONSTRAINT [FK_PHIEU_THUE_PHONG_KHACH_HANG]
GO
ALTER TABLE [dbo].[PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHONG_LOAI_PHONG] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LOAI_PHONG] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[PHONG] CHECK CONSTRAINT [FK_PHONG_LOAI_PHONG]
GO
ALTER TABLE [dbo].[PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHONG_LOAI_TINH_TRANG] FOREIGN KEY([MaLoaiTinhTrangPhong])
REFERENCES [dbo].[LOAI_TINH_TRANG] ([MaLoaiTinhTrangPhong])
GO
ALTER TABLE [dbo].[PHONG] CHECK CONSTRAINT [FK_PHONG_LOAI_TINH_TRANG]
GO
ALTER TABLE [dbo].[THIET_BI]  WITH CHECK ADD  CONSTRAINT [FK_THIET_BI_LOAI_PHONG] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LOAI_PHONG] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[THIET_BI] CHECK CONSTRAINT [FK_THIET_BI_LOAI_PHONG]
GO
/****** Object:  StoredProcedure [dbo].[SelectCTHoaDon]    Script Date: 17/4/2021 8:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SelectCTHoaDon]
	@MaHoaDon varchar(3)
AS
BEGIN
	SELECT * from CHI_TIET_HOA_DON ct
	WHERE ct.MaHoaDon = @MaHoaDon
END
GO
/****** Object:  StoredProcedure [dbo].[SelectHoaDon]    Script Date: 17/4/2021 8:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SelectHoaDon]
	@MaHoaDon varchar(3)
AS
BEGIN
	SELECT * from  HOA_DON hd
	WHERE hd.MaHoaDon = @MaHoaDon
END
GO
/****** Object:  StoredProcedure [dbo].[tongTienDvu]    Script Date: 17/4/2021 8:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[tongTienDvu] 
	@MaPhieuDichVu varchar(5)
AS
BEGIN
	DECLARE  @TongTT float 
	SELECT @TongTT = SUM(ct.SoLuong*dv.DonGia)
	FROM CHI_TIET_PHIEU_DICH_VU ct, DICH_VU dv
	WHERE ct.MaDichVu = dv.MaDichVu and MaPhieuDichVu = @MaPhieuDichVu

	UPDATE PHIEU_DICH_VU
	SET ThanhTien = @TongTT
	where MaPhieuDichVu = @MaPhieuDichVu 

END
GO
USE [master]
GO
ALTER DATABASE [QUANLYKHACHSAN] SET  READ_WRITE 
GO
