USE [QLTruongTHPT]
GO
/****** Object:  Table [dbo].[BaoCaoHocTap]    Script Date: 11/4/2024 9:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoHocTap](
	[MaBC] [nvarchar](10) NOT NULL,
	[MaGV] [nvarchar](10) NULL,
	[MaHS] [nvarchar](10) NULL,
	[MaHK] [nvarchar](10) NULL,
	[XepLoai] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 11/4/2024 9:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[MaDiem] [nvarchar](10) NULL,
	[MaMHHK] [nvarchar](10) NULL,
	[MaHS] [nvarchar](10) NULL,
	[DiemMieng] [float] NULL,
	[Diem15p] [float] NULL,
	[Diem45p] [float] NULL,
	[DiemGiuaKy] [float] NULL,
	[DiemCuoiKy] [float] NULL,
	[DiemTB] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 11/4/2024 9:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](255) NULL,
	[GioiTinh] [bit] NULL,
	[MaTK] [nvarchar](10) NULL,
	[MaMH] [nvarchar](10) NULL,
	[Anh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocKy]    Script Date: 11/4/2024 9:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocKy](
	[MaHK] [nvarchar](10) NOT NULL,
	[TenHK] [nvarchar](50) NULL,
	[NamHoc] [nvarchar](50) NULL,
	[HeSo] [int] NULL,
	[DiemTKHK] [float] NULL,
 CONSTRAINT [PK_HocKy] PRIMARY KEY CLUSTERED 
(
	[MaHK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 11/4/2024 9:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[MaHS] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinh_Lop]    Script Date: 11/4/2024 9:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh_Lop](
	[MaHSL] [nvarchar](10) NOT NULL,
	[MaHS] [nvarchar](10) NULL,
	[MaLop] [nvarchar](10) NULL,
 CONSTRAINT [PK_HocSinh_Lop] PRIMARY KEY CLUSTERED 
(
	[MaHSL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 11/4/2024 9:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHoc](
	[MaLop] [nvarchar](10) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[TenKL] [nvarchar](50) NULL,
	[MaGVCN] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 11/4/2024 9:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](10) NOT NULL,
	[TenMH] [nvarchar](50) NULL,
	[SoTiet] [int] NULL,
	[HeSo] [int] NULL,
	[DiemTK] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc_HocKy]    Script Date: 11/4/2024 9:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc_HocKy](
	[MaMHHK] [nvarchar](10) NOT NULL,
	[MaHK] [nvarchar](10) NULL,
	[MaMH] [nvarchar](10) NULL,
 CONSTRAINT [PK_MonHoc_HocKy] PRIMARY KEY CLUSTERED 
(
	[MaMHHK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/4/2024 9:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [nvarchar](10) NOT NULL,
	[TenTK] [nvarchar](50) NULL,
	[MatKhauTK] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[SDT] [nvarchar](15) NULL,
	[QuyenUser] [nvarchar](20) NULL,
	[Anh] [nvarchar](225) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThoiKhoaBieu]    Script Date: 11/4/2024 9:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiKhoaBieu](
	[MaTKB] [nvarchar](10) NOT NULL,
	[MaLop] [nvarchar](10) NULL,
	[MaMH] [nvarchar](10) NULL,
	[Thu] [nvarchar](10) NULL,
	[Tiet] [int] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[MaGV] [nvarchar](10) NULL,
	[MaHK] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTKB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC001', N'GV001', N'HS001', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC002', N'GV001', N'HS002', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC003', N'GV001', N'HS003', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC004', N'GV001', N'HS004', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC005', N'GV001', N'HS005', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC006', N'GV001', N'HS006', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC007', N'GV001', N'HS007', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC008', N'GV001', N'HS008', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC009', N'GV001', N'HS009', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC010', N'GV001', N'HS010', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC011', N'GV001', N'HS011', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC012', N'GV001', N'HS012', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC013', N'GV001', N'HS013', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC014', N'GV001', N'HS014', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC015', N'GV001', N'HS015', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC016', N'GV002', N'HS016', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC017', N'GV002', N'HS017', N'HK1', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC018', N'GV002', N'HS018', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC019', N'GV002', N'HS019', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC020', N'GV002', N'HS020', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC021', N'GV002', N'HS021', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC022', N'GV002', N'HS022', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC023', N'GV002', N'HS023', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC024', N'GV002', N'HS024', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC025', N'GV002', N'HS025', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC026', N'GV002', N'HS026', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC027', N'GV002', N'HS027', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC028', N'GV002', N'HS028', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC029', N'GV002', N'HS029', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC030', N'GV002', N'HS030', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC031', N'GV003', N'HS031', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC032', N'GV003', N'HS032', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC033', N'GV003', N'HS033', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC034', N'GV003', N'HS034', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC035', N'GV003', N'HS035', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC036', N'GV003', N'HS036', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC037', N'GV003', N'HS037', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC038', N'GV003', N'HS038', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC039', N'GV003', N'HS039', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC040', N'GV003', N'HS040', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC041', N'GV003', N'HS041', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC042', N'GV003', N'HS042', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC043', N'GV003', N'HS043', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC044', N'GV003', N'HS044', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC045', N'GV003', N'HS045', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC046', N'GV005', N'HS046', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC047', N'GV005', N'HS047', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC048', N'GV005', N'HS048', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC049', N'GV005', N'HS049', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC050', N'GV005', N'HS050', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC051', N'GV005', N'HS051', N'HK1', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC052', N'GV005', N'HS052', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC053', N'GV005', N'HS053', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC054', N'GV005', N'HS054', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC055', N'GV005', N'HS055', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC056', N'GV005', N'HS056', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC057', N'GV005', N'HS057', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC058', N'GV005', N'HS058', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC059', N'GV005', N'HS059', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC060', N'GV005', N'HS060', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC061', N'GV008', N'HS061', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC062', N'GV008', N'HS062', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC063', N'GV008', N'HS063', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC064', N'GV008', N'HS064', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC065', N'GV008', N'HS065', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC066', N'GV008', N'HS066', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC067', N'GV008', N'HS067', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC068', N'GV008', N'HS068', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC069', N'GV008', N'HS069', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC070', N'GV008', N'HS070', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC071', N'GV008', N'HS071', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC072', N'GV008', N'HS072', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC073', N'GV008', N'HS073', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC074', N'GV008', N'HS074', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC075', N'GV008', N'HS075', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC076', N'GV004', N'HS076', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC077', N'GV004', N'HS077', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC078', N'GV004', N'HS078', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC079', N'GV004', N'HS079', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC080', N'GV004', N'HS080', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC081', N'GV004', N'HS081', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC082', N'GV004', N'HS082', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC083', N'GV004', N'HS083', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC084', N'GV004', N'HS084', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC085', N'GV004', N'HS085', N'HK1', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC086', N'GV004', N'HS086', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC087', N'GV004', N'HS087', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC088', N'GV004', N'HS088', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC089', N'GV004', N'HS089', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC090', N'GV004', N'HS090', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC091', N'GV006', N'HS091', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC092', N'GV006', N'HS092', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC093', N'GV006', N'HS093', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC094', N'GV006', N'HS094', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC095', N'GV006', N'HS095', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC096', N'GV006', N'HS096', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC097', N'GV006', N'HS097', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC098', N'GV006', N'HS098', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC099', N'GV006', N'HS099', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC100', N'GV006', N'HS100', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC101', N'GV006', N'HS101', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC102', N'GV006', N'HS102', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC103', N'GV006', N'HS103', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC104', N'GV006', N'HS104', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC105', N'GV006', N'HS105', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC106', N'GV007', N'HS106', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC107', N'GV007', N'HS107', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC108', N'GV007', N'HS108', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC109', N'GV007', N'HS109', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC110', N'GV007', N'HS110', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC111', N'GV007', N'HS111', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC112', N'GV007', N'HS112', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC113', N'GV007', N'HS113', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC114', N'GV007', N'HS114', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC115', N'GV007', N'HS115', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC116', N'GV007', N'HS116', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC117', N'GV007', N'HS117', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC118', N'GV007', N'HS118', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC119', N'GV007', N'HS119', N'HK1', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC120', N'GV007', N'HS120', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC121', N'GV009', N'HS121', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC122', N'GV009', N'HS122', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC123', N'GV009', N'HS123', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC124', N'GV009', N'HS124', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC125', N'GV009', N'HS125', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC126', N'GV009', N'HS126', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC127', N'GV009', N'HS127', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC128', N'GV009', N'HS128', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC129', N'GV009', N'HS129', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC130', N'GV009', N'HS130', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC131', N'GV009', N'HS131', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC132', N'GV009', N'HS132', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC133', N'GV009', N'HS133', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC134', N'GV009', N'HS134', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC135', N'GV009', N'HS135', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC136', N'GV010', N'HS136', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC137', N'GV010', N'HS137', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC138', N'GV010', N'HS138', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC139', N'GV010', N'HS139', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC140', N'GV010', N'HS140', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC141', N'GV010', N'HS141', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC142', N'GV010', N'HS142', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC143', N'GV010', N'HS143', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC144', N'GV010', N'HS144', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC145', N'GV010', N'HS145', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC146', N'GV010', N'HS146', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC147', N'GV010', N'HS147', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC148', N'GV010', N'HS148', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC149', N'GV010', N'HS149', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC150', N'GV010', N'HS150', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC151', N'GV011', N'HS151', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC152', N'GV011', N'HS152', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC153', N'GV011', N'HS153', N'HK1', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC154', N'GV011', N'HS154', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC155', N'GV011', N'HS155', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC156', N'GV011', N'HS156', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC157', N'GV011', N'HS157', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC158', N'GV011', N'HS158', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC159', N'GV011', N'HS159', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC160', N'GV011', N'HS160', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC161', N'GV011', N'HS161', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC162', N'GV011', N'HS162', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC163', N'GV011', N'HS163', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC164', N'GV011', N'HS164', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC165', N'GV011', N'HS165', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC166', N'GV013', N'HS166', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC167', N'GV013', N'HS167', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC168', N'GV013', N'HS168', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC169', N'GV013', N'HS169', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC170', N'GV013', N'HS170', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC171', N'GV013', N'HS171', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC172', N'GV013', N'HS172', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC173', N'GV013', N'HS173', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC174', N'GV013', N'HS174', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC175', N'GV013', N'HS175', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC176', N'GV013', N'HS176', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC177', N'GV013', N'HS177', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC178', N'GV013', N'HS178', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC179', N'GV013', N'HS179', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC180', N'GV013', N'HS180', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC181', N'GV012', N'HS181', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC182', N'GV012', N'HS182', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC183', N'GV012', N'HS183', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC184', N'GV012', N'HS184', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC185', N'GV012', N'HS185', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC186', N'GV012', N'HS186', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC187', N'GV012', N'HS187', N'HK1', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC188', N'GV012', N'HS188', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC189', N'GV012', N'HS189', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC190', N'GV012', N'HS190', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC191', N'GV012', N'HS191', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC192', N'GV012', N'HS192', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC193', N'GV012', N'HS193', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC194', N'GV012', N'HS194', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC195', N'GV012', N'HS195', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC196', N'GV015', N'HS196', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC197', N'GV015', N'HS197', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC198', N'GV015', N'HS198', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC199', N'GV015', N'HS199', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC200', N'GV015', N'HS200', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC201', N'GV015', N'HS201', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC202', N'GV015', N'HS202', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC203', N'GV015', N'HS203', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC204', N'GV015', N'HS204', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC205', N'GV015', N'HS205', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC206', N'GV015', N'HS206', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC207', N'GV015', N'HS207', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC208', N'GV015', N'HS208', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC209', N'GV015', N'HS209', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC210', N'GV015', N'HS210', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC211', N'GV016', N'HS211', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC212', N'GV016', N'HS212', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC213', N'GV016', N'HS213', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC214', N'GV016', N'HS214', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC215', N'GV016', N'HS215', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC216', N'GV016', N'HS216', N'HK1', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC217', N'GV016', N'HS217', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC218', N'GV016', N'HS218', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC219', N'GV016', N'HS219', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC220', N'GV016', N'HS220', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC221', N'GV016', N'HS221', N'HK1', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC222', N'GV016', N'HS222', N'HK1', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC223', N'GV016', N'HS223', N'HK1', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC224', N'GV016', N'HS224', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC225', N'GV016', N'HS225', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC226', N'GV001', N'HS001', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC227', N'GV001', N'HS002', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC228', N'GV001', N'HS003', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC229', N'GV001', N'HS004', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC230', N'GV001', N'HS005', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC231', N'GV001', N'HS006', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC232', N'GV001', N'HS007', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC233', N'GV001', N'HS008', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC234', N'GV001', N'HS009', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC235', N'GV001', N'HS010', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC236', N'GV001', N'HS011', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC237', N'GV001', N'HS012', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC238', N'GV001', N'HS013', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC239', N'GV001', N'HS014', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC240', N'GV001', N'HS015', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC241', N'GV002', N'HS016', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC242', N'GV002', N'HS017', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC243', N'GV002', N'HS018', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC244', N'GV002', N'HS019', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC245', N'GV002', N'HS020', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC246', N'GV002', N'HS021', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC247', N'GV002', N'HS022', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC248', N'GV002', N'HS023', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC249', N'GV002', N'HS024', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC250', N'GV002', N'HS025', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC251', N'GV002', N'HS026', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC252', N'GV002', N'HS027', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC253', N'GV002', N'HS028', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC254', N'GV002', N'HS029', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC255', N'GV002', N'HS030', N'HK2', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC256', N'GV003', N'HS031', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC257', N'GV003', N'HS032', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC258', N'GV003', N'HS033', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC259', N'GV003', N'HS034', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC260', N'GV003', N'HS035', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC261', N'GV003', N'HS036', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC262', N'GV003', N'HS037', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC263', N'GV003', N'HS038', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC264', N'GV003', N'HS039', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC265', N'GV003', N'HS040', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC266', N'GV003', N'HS041', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC267', N'GV003', N'HS042', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC268', N'GV003', N'HS043', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC269', N'GV003', N'HS044', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC270', N'GV003', N'HS045', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC271', N'GV005', N'HS046', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC272', N'GV005', N'HS047', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC273', N'GV005', N'HS048', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC274', N'GV005', N'HS049', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC275', N'GV005', N'HS050', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC276', N'GV005', N'HS051', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC277', N'GV005', N'HS052', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC278', N'GV005', N'HS053', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC279', N'GV005', N'HS054', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC280', N'GV005', N'HS055', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC281', N'GV005', N'HS056', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC282', N'GV005', N'HS057', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC283', N'GV005', N'HS058', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC284', N'GV005', N'HS059', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC285', N'GV005', N'HS060', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC286', N'GV008', N'HS061', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC287', N'GV008', N'HS062', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC288', N'GV008', N'HS063', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC289', N'GV008', N'HS064', N'HK2', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC290', N'GV008', N'HS065', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC291', N'GV008', N'HS066', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC292', N'GV008', N'HS067', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC293', N'GV008', N'HS068', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC294', N'GV008', N'HS069', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC295', N'GV008', N'HS070', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC296', N'GV008', N'HS071', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC297', N'GV008', N'HS072', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC298', N'GV008', N'HS073', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC299', N'GV008', N'HS074', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC300', N'GV008', N'HS075', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC301', N'GV004', N'HS076', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC302', N'GV004', N'HS077', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC303', N'GV004', N'HS078', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC304', N'GV004', N'HS079', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC305', N'GV004', N'HS080', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC306', N'GV004', N'HS081', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC307', N'GV004', N'HS082', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC308', N'GV004', N'HS083', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC309', N'GV004', N'HS084', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC310', N'GV004', N'HS085', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC311', N'GV004', N'HS086', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC312', N'GV004', N'HS087', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC313', N'GV004', N'HS088', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC314', N'GV004', N'HS089', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC315', N'GV004', N'HS090', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC316', N'GV006', N'HS091', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC317', N'GV006', N'HS092', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC318', N'GV006', N'HS093', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC319', N'GV006', N'HS094', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC320', N'GV006', N'HS095', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC321', N'GV006', N'HS096', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC322', N'GV006', N'HS097', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC323', N'GV006', N'HS098', N'HK2', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC324', N'GV006', N'HS099', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC325', N'GV006', N'HS100', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC326', N'GV006', N'HS101', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC327', N'GV006', N'HS102', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC328', N'GV006', N'HS103', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC329', N'GV006', N'HS104', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC330', N'GV006', N'HS105', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC331', N'GV007', N'HS106', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC332', N'GV007', N'HS107', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC333', N'GV007', N'HS108', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC334', N'GV007', N'HS109', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC335', N'GV007', N'HS110', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC336', N'GV007', N'HS111', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC337', N'GV007', N'HS112', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC338', N'GV007', N'HS113', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC339', N'GV007', N'HS114', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC340', N'GV007', N'HS115', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC341', N'GV007', N'HS116', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC342', N'GV007', N'HS117', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC343', N'GV007', N'HS118', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC344', N'GV007', N'HS119', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC345', N'GV007', N'HS120', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC346', N'GV009', N'HS121', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC347', N'GV009', N'HS122', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC348', N'GV009', N'HS123', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC349', N'GV009', N'HS124', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC350', N'GV009', N'HS125', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC351', N'GV009', N'HS126', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC352', N'GV009', N'HS127', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC353', N'GV009', N'HS128', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC354', N'GV009', N'HS129', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC355', N'GV009', N'HS130', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC356', N'GV009', N'HS131', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC357', N'GV009', N'HS132', N'HK2', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC358', N'GV009', N'HS133', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC359', N'GV009', N'HS134', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC360', N'GV009', N'HS135', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC361', N'GV010', N'HS136', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC362', N'GV010', N'HS137', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC363', N'GV010', N'HS138', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC364', N'GV010', N'HS139', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC365', N'GV010', N'HS140', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC366', N'GV010', N'HS141', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC367', N'GV010', N'HS142', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC368', N'GV010', N'HS143', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC369', N'GV010', N'HS144', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC370', N'GV010', N'HS145', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC371', N'GV010', N'HS146', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC372', N'GV010', N'HS147', N'HK2', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC373', N'GV010', N'HS148', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC374', N'GV010', N'HS149', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC375', N'GV010', N'HS150', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC376', N'GV011', N'HS151', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC377', N'GV011', N'HS152', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC378', N'GV011', N'HS153', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC379', N'GV011', N'HS154', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC380', N'GV011', N'HS155', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC381', N'GV011', N'HS156', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC382', N'GV011', N'HS157', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC383', N'GV011', N'HS158', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC384', N'GV011', N'HS159', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC385', N'GV011', N'HS160', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC386', N'GV011', N'HS161', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC387', N'GV011', N'HS162', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC388', N'GV011', N'HS163', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC389', N'GV011', N'HS164', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC390', N'GV011', N'HS165', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC391', N'GV013', N'HS166', N'HK2', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC392', N'GV013', N'HS167', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC393', N'GV013', N'HS168', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC394', N'GV013', N'HS169', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC395', N'GV013', N'HS170', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC396', N'GV013', N'HS171', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC397', N'GV013', N'HS172', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC398', N'GV013', N'HS173', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC399', N'GV013', N'HS174', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC400', N'GV013', N'HS175', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC401', N'GV013', N'HS176', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC402', N'GV013', N'HS177', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC403', N'GV013', N'HS178', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC404', N'GV013', N'HS179', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC405', N'GV013', N'HS180', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC406', N'GV012', N'HS181', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC407', N'GV012', N'HS182', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC408', N'GV012', N'HS183', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC409', N'GV012', N'HS184', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC410', N'GV012', N'HS185', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC411', N'GV012', N'HS186', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC412', N'GV012', N'HS187', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC413', N'GV012', N'HS188', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC414', N'GV012', N'HS189', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC415', N'GV012', N'HS190', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC416', N'GV012', N'HS191', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC417', N'GV012', N'HS192', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC418', N'GV012', N'HS193', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC419', N'GV012', N'HS194', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC420', N'GV012', N'HS195', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC421', N'GV015', N'HS196', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC422', N'GV015', N'HS197', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC423', N'GV015', N'HS198', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC424', N'GV015', N'HS199', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC425', N'GV015', N'HS200', N'HK2', N'kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC426', N'GV015', N'HS201', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC427', N'GV015', N'HS202', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC428', N'GV015', N'HS203', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC429', N'GV015', N'HS204', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC430', N'GV015', N'HS205', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC431', N'GV015', N'HS206', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC432', N'GV015', N'HS207', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC433', N'GV015', N'HS208', N'HK2', N'Yeu')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC434', N'GV015', N'HS209', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC435', N'GV015', N'HS210', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC436', N'GV016', N'HS211', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC437', N'GV016', N'HS212', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC438', N'GV016', N'HS213', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC439', N'GV016', N'HS214', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC440', N'GV016', N'HS215', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC441', N'GV016', N'HS216', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC442', N'GV016', N'HS217', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC443', N'GV016', N'HS218', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC444', N'GV016', N'HS219', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC445', N'GV016', N'HS220', N'HK2', N'Trung Binh')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC446', N'GV016', N'HS221', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC447', N'GV016', N'HS222', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC448', N'GV016', N'HS223', N'HK2', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC449', N'GV016', N'HS224', N'HK2', N'Kha')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC450', N'GV016', N'HS225', N'HK2', N'Kha')
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D001', N'MK001', N'HS001', 7, 5, 7, 6, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D084', N'MK001', N'HS084', 6, 5, 7, 8, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D167', N'MK001', N'HS167', 9, 7, 8, 8, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D250', N'MK002', N'HS025', 8, 8, 7, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D333', N'MK002', N'HS108', 7, 8, 8, 10, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D416', N'MK002', N'HS191', 7, 5, 7, 8, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D499', N'MK003', N'HS049', 10, 7, 7, 5, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D582', N'MK003', N'HS132', 5, 9, 5, 7, 10, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D665', N'MK003', N'HS215', 10, 5, 10, 8, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D748', N'MK004', N'HS073', 10, 8, 5, 10, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D831', N'MK004', N'HS156', 8, 10, 6, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D914', N'MK005', N'HS014', 5, 6, 5, 5, 5, 5.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D997', N'MK005', N'HS097', 7, 7, 9, 6, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1079', N'MK005', N'HS179', 8, 5, 10, 7, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1161', N'MK006', N'HS036', 5, 8, 9, 7, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1243', N'MK006', N'HS118', 5, 7, 9, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1325', N'MK006', N'HS200', 6, 7, 8, 10, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1407', N'MK007', N'HS057', 8, 10, 7, 10, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1489', N'MK007', N'HS139', 9, 5, 10, 8, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1571', N'MK007', N'HS221', 8, 6, 5, 7, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1653', N'MK008', N'HS078', 10, 6, 9, 7, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1735', N'MK008', N'HS160', 8, 10, 6, 9, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1817', N'MK009', N'HS017', 10, 9, 5, 10, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1899', N'MK009', N'HS099', 9, 8, 6, 9, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1981', N'MK009', N'HS181', 9, 9, 10, 9, 7, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2063', N'MK010', N'HS038', 10, 8, 7, 8, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2145', N'MK010', N'HS120', 8, 5, 9, 7, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2227', N'MK010', N'HS202', 9, 7, 7, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2309', N'MK014', N'HS059', 7, 6, 5, 5, 5, 5.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2391', N'MK014', N'HS141', 8, 7, 7, 6, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2392', N'MK014', N'HS142', 8, 10, 7, 10, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2393', N'MK014', N'HS143', 9, 10, 9, 10, 6, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2394', N'MK014', N'HS144', 7, 9, 7, 7, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2395', N'MK014', N'HS145', 6, 8, 6, 7, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2396', N'MK014', N'HS146', 9, 7, 7, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2397', N'MK014', N'HS147', 7, 5, 9, 9, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2398', N'MK014', N'HS148', 10, 5, 7, 6, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2399', N'MK014', N'HS149', 10, 5, 7, 5, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2400', N'MK014', N'HS150', 8, 8, 9, 6, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2401', N'MK014', N'HS151', 7, 7, 10, 9, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2402', N'MK014', N'HS152', 9, 9, 10, 9, 10, 9.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2403', N'MK014', N'HS153', 5, 5, 6, 8, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2404', N'MK014', N'HS154', 8, 5, 5, 9, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2405', N'MK014', N'HS155', 7, 10, 9, 10, 10, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2406', N'MK014', N'HS156', 6, 10, 6, 7, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2407', N'MK014', N'HS157', 8, 10, 10, 8, 6, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2408', N'MK014', N'HS158', 5, 6, 9, 9, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2409', N'MK014', N'HS159', 10, 7, 9, 8, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2410', N'MK014', N'HS160', 6, 6, 7, 7, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2411', N'MK014', N'HS161', 10, 8, 7, 6, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2412', N'MK014', N'HS162', 5, 8, 5, 8, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2413', N'MK014', N'HS163', 7, 6, 5, 8, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2414', N'MK014', N'HS164', 5, 9, 8, 5, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2415', N'MK014', N'HS165', 9, 6, 10, 7, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2416', N'MK014', N'HS166', 8, 8, 8, 5, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2417', N'MK014', N'HS167', 5, 9, 8, 6, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2418', N'MK014', N'HS168', 8, 9, 10, 10, 5, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2419', N'MK014', N'HS169', 10, 9, 8, 8, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2420', N'MK014', N'HS170', 5, 8, 10, 5, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2421', N'MK014', N'HS171', 10, 10, 5, 10, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2422', N'MK014', N'HS172', 10, 10, 5, 9, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2423', N'MK014', N'HS173', 10, 7, 5, 5, 9, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2424', N'MK014', N'HS174', 7, 6, 7, 7, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2425', N'MK014', N'HS175', 10, 8, 10, 6, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2426', N'MK014', N'HS176', 5, 7, 6, 8, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2427', N'MK014', N'HS177', 6, 9, 10, 8, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2428', N'MK014', N'HS178', 8, 9, 7, 5, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2429', N'MK014', N'HS179', 10, 8, 10, 5, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2430', N'MK014', N'HS180', 10, 5, 9, 8, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2431', N'MK014', N'HS181', 8, 8, 10, 10, 10, 9.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2432', N'MK014', N'HS182', 5, 5, 6, 8, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2433', N'MK014', N'HS183', 8, 8, 6, 7, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2434', N'MK014', N'HS184', 8, 10, 5, 6, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2435', N'MK014', N'HS185', 10, 7, 9, 10, 10, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2436', N'MK014', N'HS186', 9, 9, 9, 8, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2437', N'MK014', N'HS187', 5, 5, 7, 8, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2438', N'MK014', N'HS188', 10, 6, 8, 5, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2439', N'MK014', N'HS189', 7, 9, 10, 9, 5, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2440', N'MK014', N'HS190', 9, 9, 9, 9, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2441', N'MK014', N'HS191', 10, 7, 10, 6, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2442', N'MK014', N'HS192', 9, 9, 10, 8, 6, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2310', N'MK014', N'HS060', 10, 6, 10, 6, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2311', N'MK014', N'HS061', 7, 6, 9, 10, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2312', N'MK014', N'HS062', 6, 8, 5, 8, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2313', N'MK014', N'HS063', 10, 8, 7, 6, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2314', N'MK014', N'HS064', 9, 9, 8, 6, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2315', N'MK014', N'HS065', 7, 7, 6, 10, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2316', N'MK014', N'HS066', 9, 8, 8, 9, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2317', N'MK014', N'HS067', 10, 7, 10, 5, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2318', N'MK014', N'HS068', 9, 9, 10, 9, 5, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2319', N'MK014', N'HS069', 6, 9, 8, 10, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2320', N'MK014', N'HS070', 10, 9, 5, 7, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2321', N'MK014', N'HS071', 7, 6, 10, 7, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2322', N'MK014', N'HS072', 10, 9, 6, 10, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2323', N'MK014', N'HS073', 7, 9, 10, 10, 9, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2324', N'MK014', N'HS074', 9, 6, 9, 7, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2325', N'MK014', N'HS075', 10, 8, 7, 8, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2326', N'MK014', N'HS076', 8, 5, 8, 7, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2327', N'MK014', N'HS077', 10, 7, 8, 10, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2328', N'MK014', N'HS078', 5, 10, 8, 6, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2329', N'MK014', N'HS079', 5, 5, 10, 10, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2330', N'MK014', N'HS080', 10, 7, 5, 9, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2331', N'MK014', N'HS081', 5, 6, 6, 5, 10, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2332', N'MK014', N'HS082', 8, 5, 9, 9, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2333', N'MK014', N'HS083', 7, 5, 10, 6, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2334', N'MK014', N'HS084', 9, 10, 7, 7, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2335', N'MK014', N'HS085', 10, 8, 10, 5, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2336', N'MK014', N'HS086', 10, 5, 6, 8, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2337', N'MK014', N'HS087', 8, 5, 5, 10, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2338', N'MK014', N'HS088', 6, 9, 6, 8, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2339', N'MK014', N'HS089', 8, 8, 9, 9, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2340', N'MK014', N'HS090', 10, 8, 10, 5, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2341', N'MK014', N'HS091', 8, 9, 5, 5, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2342', N'MK014', N'HS092', 10, 7, 6, 10, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2343', N'MK014', N'HS093', 8, 9, 9, 5, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2344', N'MK014', N'HS094', 5, 6, 8, 7, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2345', N'MK014', N'HS095', 8, 5, 8, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2346', N'MK014', N'HS096', 7, 6, 9, 6, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2347', N'MK014', N'HS097', 5, 8, 6, 9, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2348', N'MK014', N'HS098', 10, 9, 5, 10, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2349', N'MK014', N'HS099', 6, 7, 7, 5, 9, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2350', N'MK014', N'HS100', 7, 10, 5, 9, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2351', N'MK014', N'HS101', 6, 5, 9, 8, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2352', N'MK014', N'HS102', 7, 10, 6, 10, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2353', N'MK014', N'HS103', 5, 5, 9, 6, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2354', N'MK014', N'HS104', 6, 8, 7, 7, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2355', N'MK014', N'HS105', 9, 5, 8, 7, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2356', N'MK014', N'HS106', 5, 6, 10, 5, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2357', N'MK014', N'HS107', 6, 6, 5, 10, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2358', N'MK014', N'HS108', 5, 9, 6, 10, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2359', N'MK014', N'HS109', 6, 10, 8, 5, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2360', N'MK014', N'HS110', 9, 9, 8, 6, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2361', N'MK014', N'HS111', 6, 8, 8, 8, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2362', N'MK014', N'HS112', 5, 10, 8, 9, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2363', N'MK014', N'HS113', 6, 7, 8, 6, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2364', N'MK014', N'HS114', 7, 5, 7, 8, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2365', N'MK014', N'HS115', 6, 6, 8, 7, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2366', N'MK014', N'HS116', 10, 8, 9, 8, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2367', N'MK014', N'HS117', 8, 10, 6, 9, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2368', N'MK014', N'HS118', 9, 5, 5, 6, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2369', N'MK014', N'HS119', 7, 10, 8, 8, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2370', N'MK014', N'HS120', 5, 10, 6, 9, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2371', N'MK014', N'HS121', 5, 9, 10, 9, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2372', N'MK014', N'HS122', 10, 6, 5, 5, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2373', N'MK014', N'HS123', 8, 9, 9, 10, 5, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2374', N'MK014', N'HS124', 9, 8, 9, 8, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2375', N'MK014', N'HS125', 6, 9, 7, 5, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2376', N'MK014', N'HS126', 6, 6, 6, 10, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2377', N'MK014', N'HS127', 5, 7, 6, 8, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2378', N'MK014', N'HS128', 6, 5, 7, 8, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2379', N'MK014', N'HS129', 8, 9, 10, 9, 10, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2380', N'MK014', N'HS130', 8, 10, 10, 5, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2381', N'MK014', N'HS131', 8, 10, 5, 7, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2382', N'MK014', N'HS132', 6, 9, 5, 7, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2383', N'MK014', N'HS133', 9, 5, 7, 6, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2384', N'MK014', N'HS134', 10, 10, 9, 10, 7, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2385', N'MK014', N'HS135', 5, 7, 9, 6, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2386', N'MK014', N'HS136', 8, 9, 9, 10, 9, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2387', N'MK014', N'HS137', 7, 5, 8, 9, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2388', N'MK014', N'HS138', 9, 5, 5, 8, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2389', N'MK014', N'HS139', 6, 5, 6, 7, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2390', N'MK014', N'HS140', 6, 5, 10, 7, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2443', N'MK014', N'HS193', 7, 10, 10, 10, 5, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2444', N'MK014', N'HS194', 7, 5, 9, 5, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2445', N'MK014', N'HS195', 7, 5, 8, 10, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2446', N'MK014', N'HS196', 8, 5, 9, 5, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2447', N'MK014', N'HS197', 9, 9, 10, 8, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2448', N'MK014', N'HS198', 6, 10, 5, 7, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2449', N'MK014', N'HS199', 6, 6, 10, 5, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2450', N'MK014', N'HS200', 6, 9, 9, 6, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2451', N'MK014', N'HS201', 7, 10, 5, 5, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2452', N'MK014', N'HS202', 7, 6, 7, 5, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2453', N'MK014', N'HS203', 6, 6, 6, 5, 9, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2454', N'MK014', N'HS204', 8, 8, 9, 5, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2455', N'MK014', N'HS205', 7, 9, 6, 7, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2456', N'MK014', N'HS206', 9, 9, 10, 5, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2457', N'MK014', N'HS207', 7, 9, 8, 5, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2458', N'MK014', N'HS208', 10, 7, 10, 9, 10, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2459', N'MK014', N'HS209', 6, 9, 9, 8, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2460', N'MK014', N'HS210', 5, 9, 6, 7, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2461', N'MK014', N'HS211', 7, 6, 10, 7, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2462', N'MK014', N'HS212', 6, 9, 6, 7, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2463', N'MK014', N'HS213', 6, 10, 7, 10, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2464', N'MK014', N'HS214', 9, 6, 5, 8, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2465', N'MK014', N'HS215', 7, 9, 10, 5, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2466', N'MK014', N'HS216', 10, 6, 5, 9, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2467', N'MK014', N'HS217', 8, 9, 9, 7, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2468', N'MK014', N'HS218', 7, 5, 8, 10, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2469', N'MK014', N'HS219', 6, 5, 8, 9, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2470', N'MK014', N'HS220', 8, 8, 9, 7, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2471', N'MK014', N'HS221', 9, 8, 9, 8, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2472', N'MK014', N'HS222', 8, 8, 8, 5, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2473', N'MK014', N'HS223', 6, 6, 6, 5, 9, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2474', N'MK014', N'HS224', 6, 6, 9, 10, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2475', N'MK014', N'HS225', 7, 7, 6, 5, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2476', N'MK011', N'HS001', 7, 7, 10, 5, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2477', N'MK011', N'HS002', 7, 6, 10, 10, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2478', N'MK011', N'HS003', 5, 9, 8, 5, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2479', N'MK011', N'HS004', 9, 7, 5, 10, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2480', N'MK011', N'HS005', 7, 8, 8, 8, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2481', N'MK011', N'HS006', 6, 7, 9, 5, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2482', N'MK011', N'HS007', 6, 9, 5, 6, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2483', N'MK011', N'HS008', 6, 10, 7, 8, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2484', N'MK011', N'HS009', 6, 10, 9, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2485', N'MK011', N'HS010', 7, 5, 7, 10, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2486', N'MK011', N'HS011', 9, 10, 10, 7, 9, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2487', N'MK011', N'HS012', 8, 6, 6, 10, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2488', N'MK011', N'HS013', 6, 10, 6, 7, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2489', N'MK011', N'HS014', 10, 7, 10, 7, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2490', N'MK011', N'HS015', 10, 10, 7, 8, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2491', N'MK011', N'HS016', 7, 9, 9, 5, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2492', N'MK011', N'HS017', 9, 10, 8, 9, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2493', N'MK011', N'HS018', 8, 8, 5, 10, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2494', N'MK011', N'HS019', 9, 10, 7, 6, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2495', N'MK011', N'HS020', 8, 5, 6, 9, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2496', N'MK011', N'HS021', 7, 6, 8, 6, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2497', N'MK011', N'HS022', 5, 7, 6, 6, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2498', N'MK011', N'HS023', 6, 9, 7, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2499', N'MK011', N'HS024', 7, 8, 10, 10, 8, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2500', N'MK011', N'HS025', 8, 6, 10, 10, 5, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2501', N'MK011', N'HS026', 6, 6, 10, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2502', N'MK011', N'HS027', 6, 7, 7, 7, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2503', N'MK011', N'HS028', 5, 9, 6, 5, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2504', N'MK011', N'HS029', 5, 8, 10, 10, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2505', N'MK011', N'HS030', 6, 6, 7, 8, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2506', N'MK011', N'HS031', 8, 10, 5, 6, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2507', N'MK011', N'HS032', 7, 10, 8, 6, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2508', N'MK011', N'HS033', 10, 5, 10, 8, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2509', N'MK011', N'HS034', 10, 6, 5, 5, 7, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2510', N'MK011', N'HS035', 7, 9, 9, 10, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2511', N'MK011', N'HS036', 6, 8, 5, 8, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2512', N'MK011', N'HS037', 5, 7, 7, 9, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2513', N'MK011', N'HS038', 8, 10, 10, 6, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2514', N'MK011', N'HS039', 5, 8, 9, 8, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2515', N'MK011', N'HS040', 5, 6, 6, 5, 9, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2516', N'MK011', N'HS041', 9, 5, 6, 6, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2517', N'MK011', N'HS042', 6, 7, 9, 8, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2518', N'MK011', N'HS043', 6, 6, 8, 7, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2519', N'MK011', N'HS044', 9, 7, 6, 9, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2520', N'MK011', N'HS045', 9, 7, 7, 9, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2521', N'MK011', N'HS046', 9, 8, 7, 5, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2522', N'MK011', N'HS047', 9, 7, 7, 8, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2523', N'MK011', N'HS048', 6, 8, 6, 7, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2524', N'MK011', N'HS049', 5, 8, 5, 5, 10, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2525', N'MK011', N'HS050', 9, 5, 10, 8, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2526', N'MK011', N'HS051', 5, 9, 9, 9, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2527', N'MK011', N'HS052', 7, 6, 7, 6, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2528', N'MK011', N'HS053', 10, 7, 8, 7, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2529', N'MK011', N'HS054', 5, 6, 9, 5, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2530', N'MK011', N'HS055', 10, 6, 5, 7, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2531', N'MK011', N'HS056', 10, 6, 5, 10, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2532', N'MK011', N'HS057', 7, 10, 6, 10, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2533', N'MK011', N'HS058', 7, 9, 10, 6, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2534', N'MK011', N'HS059', 6, 8, 7, 6, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2535', N'MK011', N'HS060', 7, 7, 5, 8, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2536', N'MK011', N'HS061', 8, 10, 9, 5, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2537', N'MK011', N'HS062', 5, 8, 5, 8, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2538', N'MK011', N'HS063', 5, 7, 6, 7, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2539', N'MK011', N'HS064', 9, 5, 5, 9, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2540', N'MK011', N'HS065', 10, 9, 9, 8, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2541', N'MK011', N'HS066', 7, 10, 8, 6, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2542', N'MK011', N'HS067', 7, 6, 9, 7, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2543', N'MK011', N'HS068', 10, 5, 7, 6, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2544', N'MK011', N'HS069', 7, 6, 6, 7, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2545', N'MK011', N'HS070', 6, 10, 6, 6, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2546', N'MK011', N'HS071', 5, 8, 7, 9, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2547', N'MK011', N'HS072', 7, 6, 9, 5, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2548', N'MK011', N'HS073', 5, 9, 7, 10, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2549', N'MK011', N'HS074', 5, 8, 9, 6, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2550', N'MK011', N'HS075', 5, 9, 8, 10, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2551', N'MK011', N'HS076', 5, 10, 10, 8, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2552', N'MK011', N'HS077', 6, 8, 10, 5, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2553', N'MK011', N'HS078', 10, 5, 6, 10, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2554', N'MK011', N'HS079', 5, 6, 10, 8, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2555', N'MK011', N'HS080', 10, 7, 6, 5, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2556', N'MK011', N'HS081', 8, 5, 9, 10, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2557', N'MK011', N'HS082', 9, 8, 5, 5, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2558', N'MK011', N'HS083', 5, 10, 7, 10, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2559', N'MK011', N'HS084', 10, 9, 7, 5, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2560', N'MK011', N'HS085', 9, 8, 9, 5, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2561', N'MK011', N'HS086', 8, 10, 9, 9, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2562', N'MK011', N'HS087', 5, 5, 9, 5, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2563', N'MK011', N'HS088', 10, 7, 5, 7, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2564', N'MK011', N'HS089', 10, 8, 6, 10, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2565', N'MK011', N'HS090', 9, 8, 5, 8, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2566', N'MK011', N'HS091', 7, 8, 10, 8, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2567', N'MK011', N'HS092', 9, 7, 9, 8, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2568', N'MK011', N'HS093', 9, 6, 6, 8, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2569', N'MK011', N'HS094', 6, 8, 9, 9, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2570', N'MK011', N'HS095', 5, 9, 10, 8, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2571', N'MK011', N'HS096', 7, 6, 5, 10, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2572', N'MK011', N'HS097', 7, 7, 7, 7, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2573', N'MK011', N'HS098', 5, 7, 10, 9, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2574', N'MK011', N'HS099', 7, 10, 7, 10, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2575', N'MK011', N'HS100', 10, 6, 9, 6, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2576', N'MK011', N'HS101', 7, 8, 10, 10, 10, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2577', N'MK011', N'HS102', 5, 6, 9, 10, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2578', N'MK011', N'HS103', 8, 10, 8, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2579', N'MK011', N'HS104', 8, 8, 5, 7, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2580', N'MK011', N'HS105', 10, 8, 7, 9, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2581', N'MK011', N'HS106', 8, 5, 9, 7, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2582', N'MK011', N'HS107', 5, 5, 5, 9, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2583', N'MK011', N'HS108', 10, 7, 10, 5, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2584', N'MK011', N'HS109', 9, 7, 9, 5, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2585', N'MK011', N'HS110', 9, 8, 8, 6, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2586', N'MK011', N'HS111', 6, 6, 7, 9, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2587', N'MK011', N'HS112', 5, 7, 5, 6, 5, 5.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2588', N'MK011', N'HS113', 7, 10, 8, 8, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2589', N'MK011', N'HS114', 8, 8, 8, 7, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2590', N'MK011', N'HS115', 6, 10, 5, 6, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2591', N'MK011', N'HS116', 6, 7, 6, 5, 7, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2592', N'MK011', N'HS117', 7, 5, 7, 8, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2593', N'MK011', N'HS118', 8, 7, 9, 8, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2594', N'MK011', N'HS119', 10, 9, 5, 9, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2595', N'MK011', N'HS120', 8, 10, 6, 7, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2596', N'MK011', N'HS121', 9, 10, 9, 6, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2597', N'MK011', N'HS122', 8, 7, 5, 9, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2598', N'MK011', N'HS123', 7, 9, 5, 9, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2599', N'MK011', N'HS124', 7, 10, 6, 8, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2600', N'MK011', N'HS125', 5, 7, 6, 8, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2601', N'MK011', N'HS126', 6, 7, 9, 6, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2602', N'MK011', N'HS127', 5, 5, 9, 7, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2603', N'MK011', N'HS128', 9, 5, 5, 10, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2604', N'MK011', N'HS129', 8, 7, 5, 7, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2605', N'MK011', N'HS130', 7, 10, 7, 5, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2606', N'MK011', N'HS131', 8, 7, 5, 6, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2607', N'MK011', N'HS132', 5, 9, 8, 10, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2608', N'MK011', N'HS133', 8, 6, 6, 9, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2609', N'MK011', N'HS134', 10, 10, 9, 10, 5, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2610', N'MK011', N'HS135', 7, 9, 9, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2611', N'MK011', N'HS136', 9, 5, 9, 9, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2612', N'MK011', N'HS137', 6, 6, 9, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2613', N'MK011', N'HS138', 6, 5, 8, 5, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2614', N'MK011', N'HS139', 7, 7, 10, 5, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2615', N'MK011', N'HS140', 10, 8, 8, 5, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2616', N'MK011', N'HS141', 9, 6, 5, 10, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2617', N'MK011', N'HS142', 10, 5, 7, 6, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2618', N'MK011', N'HS143', 7, 9, 10, 10, 8, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2619', N'MK011', N'HS144', 9, 10, 7, 8, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2620', N'MK011', N'HS145', 5, 8, 10, 9, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2621', N'MK011', N'HS146', 6, 6, 10, 5, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2622', N'MK011', N'HS147', 5, 6, 5, 6, 6, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2623', N'MK011', N'HS148', 6, 7, 8, 8, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2624', N'MK011', N'HS149', 6, 5, 8, 5, 9, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2625', N'MK011', N'HS150', 5, 8, 10, 7, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2626', N'MK011', N'HS151', 9, 9, 8, 6, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2627', N'MK011', N'HS152', 6, 6, 9, 10, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2628', N'MK011', N'HS153', 6, 8, 8, 5, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2629', N'MK011', N'HS154', 7, 8, 10, 7, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2630', N'MK011', N'HS155', 9, 5, 8, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2631', N'MK011', N'HS156', 8, 8, 6, 5, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2632', N'MK011', N'HS157', 6, 10, 6, 5, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2633', N'MK011', N'HS158', 8, 8, 9, 6, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2634', N'MK011', N'HS159', 5, 7, 9, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2635', N'MK011', N'HS160', 7, 10, 5, 6, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2636', N'MK011', N'HS161', 5, 9, 9, 5, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2637', N'MK011', N'HS162', 10, 7, 9, 8, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2638', N'MK011', N'HS163', 5, 7, 5, 6, 7, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2639', N'MK011', N'HS164', 8, 10, 7, 9, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2640', N'MK011', N'HS165', 8, 9, 5, 6, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2641', N'MK011', N'HS166', 5, 5, 10, 8, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2642', N'MK011', N'HS167', 10, 9, 5, 5, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2643', N'MK011', N'HS168', 10, 10, 5, 9, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2644', N'MK011', N'HS169', 9, 7, 10, 9, 5, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2645', N'MK011', N'HS170', 7, 8, 10, 8, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2646', N'MK011', N'HS171', 5, 5, 7, 6, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2647', N'MK011', N'HS172', 10, 9, 8, 9, 9, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2648', N'MK011', N'HS173', 6, 10, 10, 9, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2649', N'MK011', N'HS174', 6, 10, 5, 5, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2650', N'MK011', N'HS175', 8, 6, 9, 6, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2651', N'MK011', N'HS176', 7, 5, 10, 7, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2652', N'MK011', N'HS177', 6, 10, 5, 10, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2653', N'MK011', N'HS178', 10, 6, 9, 8, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2654', N'MK011', N'HS179', 7, 6, 10, 6, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2655', N'MK011', N'HS180', 5, 9, 6, 10, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2656', N'MK011', N'HS181', 10, 8, 6, 6, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2657', N'MK011', N'HS182', 7, 9, 10, 5, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2658', N'MK011', N'HS183', 9, 7, 9, 9, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2659', N'MK011', N'HS184', 8, 6, 5, 10, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2660', N'MK011', N'HS185', 10, 10, 5, 10, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2661', N'MK011', N'HS186', 8, 5, 10, 5, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2662', N'MK011', N'HS187', 6, 8, 6, 7, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2663', N'MK011', N'HS188', 7, 8, 7, 8, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2664', N'MK011', N'HS189', 10, 5, 7, 8, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2665', N'MK011', N'HS190', 6, 8, 6, 7, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2666', N'MK011', N'HS191', 5, 10, 9, 10, 9, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2667', N'MK011', N'HS192', 8, 10, 7, 9, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2668', N'MK011', N'HS193', 8, 7, 10, 10, 5, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2669', N'MK011', N'HS194', 9, 10, 10, 5, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2670', N'MK011', N'HS195', 6, 6, 5, 9, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2671', N'MK011', N'HS196', 7, 5, 7, 5, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2672', N'MK011', N'HS197', 5, 6, 6, 10, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2673', N'MK011', N'HS198', 5, 10, 6, 5, 5, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2674', N'MK011', N'HS199', 5, 8, 5, 8, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2675', N'MK011', N'HS200', 5, 7, 6, 8, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2676', N'MK011', N'HS201', 10, 5, 8, 6, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2677', N'MK011', N'HS202', 8, 7, 7, 9, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2678', N'MK011', N'HS203', 8, 7, 7, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2679', N'MK011', N'HS204', 7, 10, 9, 9, 9, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2680', N'MK011', N'HS205', 10, 7, 6, 7, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2681', N'MK011', N'HS206', 8, 7, 5, 9, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2682', N'MK011', N'HS207', 10, 7, 6, 5, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2683', N'MK011', N'HS208', 5, 6, 5, 7, 5, 5.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2684', N'MK011', N'HS209', 5, 6, 7, 9, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2685', N'MK011', N'HS210', 8, 9, 8, 6, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2686', N'MK011', N'HS211', 6, 6, 7, 10, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2687', N'MK011', N'HS212', 7, 7, 8, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2688', N'MK011', N'HS213', 8, 10, 6, 6, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2689', N'MK011', N'HS214', 8, 6, 8, 5, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2690', N'MK011', N'HS215', 7, 9, 8, 6, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2691', N'MK011', N'HS216', 7, 9, 6, 10, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2692', N'MK011', N'HS217', 8, 10, 7, 5, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2693', N'MK011', N'HS218', 8, 10, 5, 7, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2694', N'MK011', N'HS219', 5, 10, 8, 7, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2695', N'MK011', N'HS220', 9, 6, 10, 10, 5, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2696', N'MK011', N'HS221', 10, 9, 10, 10, 5, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2697', N'MK011', N'HS222', 5, 7, 9, 6, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2698', N'MK011', N'HS223', 6, 7, 9, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2699', N'MK011', N'HS224', 6, 7, 8, 5, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2700', N'MK011', N'HS225', 10, 6, 9, 8, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2701', N'MK012', N'HS001', 10, 10, 5, 8, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2702', N'MK012', N'HS002', 7, 5, 7, 8, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2703', N'MK012', N'HS003', 9, 8, 6, 8, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2704', N'MK012', N'HS004', 7, 7, 7, 5, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2705', N'MK012', N'HS005', 9, 7, 10, 9, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2706', N'MK012', N'HS006', 5, 10, 6, 9, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2707', N'MK012', N'HS007', 9, 6, 10, 8, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2708', N'MK012', N'HS008', 9, 10, 10, 7, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2709', N'MK012', N'HS009', 7, 8, 6, 8, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2710', N'MK012', N'HS010', 8, 7, 10, 5, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2711', N'MK012', N'HS011', 9, 9, 8, 5, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2712', N'MK012', N'HS012', 6, 10, 6, 10, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2713', N'MK012', N'HS013', 10, 8, 6, 6, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2714', N'MK012', N'HS014', 8, 6, 7, 8, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2715', N'MK012', N'HS015', 9, 6, 7, 6, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2716', N'MK012', N'HS016', 8, 10, 8, 9, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2717', N'MK012', N'HS017', 9, 7, 9, 5, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2718', N'MK012', N'HS018', 7, 8, 6, 9, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2719', N'MK012', N'HS019', 8, 5, 9, 10, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2720', N'MK012', N'HS020', 10, 5, 6, 9, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2721', N'MK012', N'HS021', 5, 9, 5, 5, 8, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2722', N'MK012', N'HS022', 6, 9, 10, 5, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2723', N'MK012', N'HS023', 7, 7, 10, 10, 6, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2724', N'MK012', N'HS024', 9, 5, 10, 8, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2725', N'MK012', N'HS025', 6, 6, 10, 7, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2726', N'MK012', N'HS026', 7, 5, 8, 7, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2727', N'MK012', N'HS027', 7, 9, 5, 5, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2728', N'MK012', N'HS028', 7, 10, 10, 7, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2729', N'MK012', N'HS029', 10, 10, 6, 8, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2730', N'MK012', N'HS030', 10, 5, 8, 6, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2731', N'MK012', N'HS031', 8, 8, 10, 7, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2732', N'MK012', N'HS032', 10, 6, 7, 7, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2733', N'MK012', N'HS033', 9, 5, 7, 9, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2734', N'MK012', N'HS034', 8, 8, 6, 9, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2735', N'MK012', N'HS035', 9, 7, 8, 9, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2736', N'MK012', N'HS036', 7, 9, 7, 9, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2737', N'MK012', N'HS037', 6, 9, 6, 9, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2738', N'MK012', N'HS038', 5, 9, 7, 7, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2739', N'MK012', N'HS039', 5, 5, 10, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2740', N'MK012', N'HS040', 6, 7, 8, 7, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2741', N'MK012', N'HS041', 6, 6, 10, 9, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2742', N'MK012', N'HS042', 6, 10, 7, 10, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2743', N'MK012', N'HS043', 7, 9, 9, 5, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2744', N'MK012', N'HS044', 5, 9, 10, 6, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2745', N'MK012', N'HS045', 5, 10, 7, 6, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2746', N'MK012', N'HS046', 6, 8, 8, 6, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2747', N'MK012', N'HS047', 8, 5, 8, 8, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2748', N'MK012', N'HS048', 9, 7, 8, 6, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2749', N'MK012', N'HS049', 9, 9, 10, 6, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2750', N'MK012', N'HS050', 7, 5, 6, 10, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2751', N'MK012', N'HS051', 9, 10, 10, 9, 9, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2752', N'MK012', N'HS052', 9, 5, 9, 8, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2753', N'MK012', N'HS053', 8, 9, 10, 10, 5, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2754', N'MK012', N'HS054', 6, 8, 10, 5, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2755', N'MK012', N'HS055', 5, 5, 8, 5, 6, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2756', N'MK012', N'HS056', 7, 8, 8, 5, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2757', N'MK012', N'HS057', 9, 5, 5, 10, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2758', N'MK012', N'HS058', 5, 6, 7, 6, 5, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2759', N'MK012', N'HS059', 10, 6, 5, 10, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2760', N'MK012', N'HS060', 6, 10, 10, 6, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2761', N'MK012', N'HS061', 6, 7, 5, 8, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2762', N'MK012', N'HS062', 5, 10, 5, 7, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2763', N'MK012', N'HS063', 9, 5, 10, 8, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2764', N'MK012', N'HS064', 5, 9, 7, 5, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2765', N'MK012', N'HS065', 6, 7, 10, 8, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2766', N'MK012', N'HS066', 8, 10, 9, 9, 7, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2767', N'MK012', N'HS067', 9, 9, 5, 7, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2768', N'MK012', N'HS068', 8, 5, 10, 5, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2769', N'MK012', N'HS069', 6, 10, 9, 10, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2770', N'MK012', N'HS070', 7, 6, 9, 8, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2771', N'MK012', N'HS071', 5, 10, 7, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2772', N'MK012', N'HS072', 5, 6, 5, 6, 6, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2773', N'MK012', N'HS073', 7, 6, 7, 9, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2774', N'MK012', N'HS074', 5, 8, 9, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2775', N'MK012', N'HS075', 9, 7, 9, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2776', N'MK012', N'HS076', 9, 6, 9, 6, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2777', N'MK012', N'HS077', 7, 7, 8, 5, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2778', N'MK012', N'HS078', 6, 6, 8, 5, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2779', N'MK012', N'HS079', 5, 9, 5, 10, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2780', N'MK012', N'HS080', 9, 8, 5, 5, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2781', N'MK012', N'HS081', 7, 10, 10, 5, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2782', N'MK012', N'HS082', 10, 6, 7, 7, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2783', N'MK012', N'HS083', 10, 7, 8, 6, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2784', N'MK012', N'HS084', 8, 6, 7, 5, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2785', N'MK012', N'HS085', 6, 8, 10, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2786', N'MK012', N'HS086', 8, 8, 6, 10, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2787', N'MK012', N'HS087', 10, 9, 7, 10, 9, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2788', N'MK012', N'HS088', 5, 10, 9, 10, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2789', N'MK012', N'HS089', 5, 9, 9, 6, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2790', N'MK012', N'HS090', 5, 10, 6, 9, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2791', N'MK012', N'HS091', 9, 6, 6, 6, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2792', N'MK012', N'HS092', 10, 9, 10, 6, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2793', N'MK012', N'HS093', 7, 5, 9, 9, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2794', N'MK012', N'HS094', 7, 10, 5, 6, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2795', N'MK012', N'HS095', 10, 5, 7, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2796', N'MK012', N'HS096', 9, 9, 10, 10, 9, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2797', N'MK012', N'HS097', 8, 7, 9, 5, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2798', N'MK012', N'HS098', 6, 8, 5, 7, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2799', N'MK012', N'HS099', 9, 5, 7, 9, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2800', N'MK012', N'HS100', 8, 8, 9, 8, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2801', N'MK012', N'HS101', 5, 6, 9, 5, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2802', N'MK012', N'HS102', 10, 10, 7, 5, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2803', N'MK012', N'HS103', 7, 6, 6, 5, 7, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2804', N'MK012', N'HS104', 7, 7, 7, 7, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2805', N'MK012', N'HS105', 7, 5, 6, 8, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2806', N'MK012', N'HS106', 8, 6, 5, 8, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2807', N'MK012', N'HS107', 6, 10, 9, 9, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2808', N'MK012', N'HS108', 10, 6, 10, 5, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2809', N'MK012', N'HS109', 8, 5, 7, 5, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2810', N'MK012', N'HS110', 10, 7, 10, 5, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2811', N'MK012', N'HS111', 10, 8, 8, 10, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2812', N'MK012', N'HS112', 7, 5, 6, 6, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2813', N'MK012', N'HS113', 5, 9, 7, 6, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2814', N'MK012', N'HS114', 9, 5, 5, 8, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2815', N'MK012', N'HS115', 10, 6, 5, 5, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2816', N'MK012', N'HS116', 7, 6, 9, 9, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2817', N'MK012', N'HS117', 5, 9, 9, 10, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2818', N'MK012', N'HS118', 6, 8, 10, 7, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2819', N'MK012', N'HS119', 9, 9, 10, 7, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2820', N'MK012', N'HS120', 9, 9, 8, 5, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2821', N'MK012', N'HS121', 6, 6, 6, 10, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2822', N'MK012', N'HS122', 9, 7, 8, 7, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2823', N'MK012', N'HS123', 5, 6, 10, 9, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2824', N'MK012', N'HS124', 6, 8, 7, 8, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2825', N'MK012', N'HS125', 6, 9, 10, 6, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2826', N'MK012', N'HS126', 6, 6, 5, 8, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2827', N'MK012', N'HS127', 8, 6, 10, 9, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2828', N'MK012', N'HS128', 10, 7, 8, 10, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2829', N'MK012', N'HS129', 5, 10, 6, 8, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2830', N'MK012', N'HS130', 7, 10, 10, 7, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2831', N'MK012', N'HS131', 9, 8, 9, 8, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2832', N'MK012', N'HS132', 8, 9, 9, 6, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2833', N'MK012', N'HS133', 10, 7, 5, 8, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2834', N'MK012', N'HS134', 8, 6, 8, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2835', N'MK012', N'HS135', 8, 9, 6, 9, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2836', N'MK012', N'HS136', 6, 7, 8, 6, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2837', N'MK012', N'HS137', 6, 6, 6, 10, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2838', N'MK012', N'HS138', 10, 9, 9, 9, 7, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2839', N'MK012', N'HS139', 5, 8, 9, 5, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2840', N'MK012', N'HS140', 6, 5, 8, 8, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2841', N'MK012', N'HS141', 6, 5, 5, 6, 10, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2842', N'MK012', N'HS142', 5, 8, 5, 6, 8, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2843', N'MK012', N'HS143', 5, 10, 10, 9, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2844', N'MK012', N'HS144', 8, 7, 9, 8, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2845', N'MK012', N'HS145', 10, 6, 8, 6, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2846', N'MK012', N'HS146', 10, 6, 6, 9, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2847', N'MK012', N'HS147', 8, 7, 7, 7, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2848', N'MK012', N'HS148', 10, 5, 9, 10, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2849', N'MK012', N'HS149', 10, 8, 8, 9, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2850', N'MK012', N'HS150', 8, 8, 8, 7, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2851', N'MK012', N'HS151', 7, 6, 7, 9, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2852', N'MK012', N'HS152', 9, 5, 5, 7, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2853', N'MK012', N'HS153', 8, 10, 8, 8, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2854', N'MK012', N'HS154', 10, 5, 7, 10, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2855', N'MK012', N'HS155', 9, 6, 9, 5, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2856', N'MK012', N'HS156', 8, 9, 6, 10, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2857', N'MK012', N'HS157', 9, 6, 7, 10, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2858', N'MK012', N'HS158', 8, 7, 10, 10, 6, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2859', N'MK012', N'HS159', 9, 9, 8, 7, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2860', N'MK012', N'HS160', 6, 5, 8, 6, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2861', N'MK012', N'HS161', 5, 7, 5, 7, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2862', N'MK012', N'HS162', 6, 7, 5, 9, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2863', N'MK012', N'HS163', 9, 6, 8, 8, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2864', N'MK012', N'HS164', 6, 7, 5, 8, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2865', N'MK012', N'HS165', 5, 9, 7, 5, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2866', N'MK012', N'HS166', 10, 8, 8, 7, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2867', N'MK012', N'HS167', 9, 6, 6, 6, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2868', N'MK012', N'HS168', 7, 9, 6, 10, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2869', N'MK012', N'HS169', 7, 8, 9, 10, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2870', N'MK012', N'HS170', 9, 10, 5, 10, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2871', N'MK012', N'HS171', 9, 5, 6, 7, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2872', N'MK012', N'HS172', 8, 7, 9, 10, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2873', N'MK012', N'HS173', 7, 5, 6, 9, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2874', N'MK012', N'HS174', 9, 5, 5, 9, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2875', N'MK012', N'HS175', 6, 5, 6, 6, 8, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2876', N'MK012', N'HS176', 9, 6, 6, 7, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2877', N'MK012', N'HS177', 10, 5, 5, 7, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2878', N'MK012', N'HS178', 9, 5, 9, 6, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2879', N'MK012', N'HS179', 6, 5, 6, 10, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2880', N'MK012', N'HS180', 10, 8, 9, 8, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2881', N'MK012', N'HS181', 7, 6, 8, 7, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2882', N'MK012', N'HS182', 10, 10, 9, 6, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2883', N'MK012', N'HS183', 6, 6, 8, 6, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2884', N'MK012', N'HS184', 6, 5, 9, 10, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2885', N'MK012', N'HS185', 7, 9, 8, 7, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2886', N'MK012', N'HS186', 10, 8, 8, 7, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2887', N'MK012', N'HS187', 10, 10, 5, 8, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2888', N'MK012', N'HS188', 5, 9, 5, 10, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2889', N'MK012', N'HS189', 6, 8, 5, 6, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2890', N'MK012', N'HS190', 10, 10, 9, 10, 8, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2891', N'MK012', N'HS191', 10, 5, 6, 8, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2892', N'MK012', N'HS192', 6, 9, 10, 10, 9, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2893', N'MK012', N'HS193', 5, 6, 10, 5, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2894', N'MK012', N'HS194', 10, 10, 10, 7, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2895', N'MK012', N'HS195', 6, 6, 8, 6, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2896', N'MK012', N'HS196', 9, 7, 10, 7, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2897', N'MK012', N'HS197', 8, 7, 10, 6, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2898', N'MK012', N'HS198', 7, 10, 6, 10, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2899', N'MK012', N'HS199', 5, 10, 7, 8, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2900', N'MK012', N'HS200', 9, 5, 9, 5, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2901', N'MK012', N'HS201', 9, 9, 10, 7, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2902', N'MK012', N'HS202', 6, 6, 7, 10, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2903', N'MK012', N'HS203', 10, 7, 8, 10, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2904', N'MK012', N'HS204', 7, 8, 5, 8, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2905', N'MK012', N'HS205', 7, 9, 9, 5, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2906', N'MK012', N'HS206', 9, 7, 7, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2907', N'MK012', N'HS207', 7, 8, 6, 8, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2908', N'MK012', N'HS208', 8, 9, 9, 6, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2909', N'MK012', N'HS209', 9, 7, 7, 9, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2910', N'MK012', N'HS210', 10, 5, 6, 8, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2911', N'MK012', N'HS211', 10, 6, 6, 9, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2912', N'MK012', N'HS212', 5, 7, 10, 7, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2913', N'MK012', N'HS213', 8, 8, 7, 6, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2914', N'MK012', N'HS214', 6, 7, 6, 5, 6, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2915', N'MK012', N'HS215', 5, 8, 6, 6, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2916', N'MK012', N'HS216', 7, 8, 5, 6, 9, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2917', N'MK012', N'HS217', 9, 10, 5, 5, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2918', N'MK012', N'HS218', 8, 10, 9, 5, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2919', N'MK012', N'HS219', 8, 5, 6, 7, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2920', N'MK012', N'HS220', 8, 9, 9, 5, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2921', N'MK012', N'HS221', 6, 7, 10, 9, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2922', N'MK012', N'HS222', 9, 8, 9, 10, 9, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2923', N'MK012', N'HS223', 8, 9, 5, 9, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2924', N'MK012', N'HS224', 5, 7, 10, 5, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2925', N'MK012', N'HS225', 6, 9, 6, 10, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2926', N'MK013', N'HS001', 8, 10, 8, 8, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2927', N'MK013', N'HS002', 10, 5, 6, 5, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2928', N'MK013', N'HS003', 9, 6, 5, 5, 7, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2929', N'MK013', N'HS004', 9, 9, 6, 10, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2930', N'MK013', N'HS005', 7, 9, 5, 6, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2931', N'MK013', N'HS006', 7, 7, 8, 5, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2932', N'MK013', N'HS007', 7, 6, 9, 5, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2933', N'MK013', N'HS008', 5, 8, 5, 10, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2934', N'MK013', N'HS009', 9, 9, 7, 6, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2935', N'MK013', N'HS010', 5, 6, 5, 5, 9, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2936', N'MK013', N'HS011', 5, 6, 6, 6, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2937', N'MK013', N'HS012', 10, 7, 5, 8, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2938', N'MK013', N'HS013', 10, 9, 10, 5, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2939', N'MK013', N'HS014', 10, 6, 5, 7, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2940', N'MK013', N'HS015', 6, 7, 7, 9, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2941', N'MK013', N'HS016', 8, 7, 8, 8, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2942', N'MK013', N'HS017', 6, 8, 10, 7, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2943', N'MK013', N'HS018', 7, 7, 5, 6, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2944', N'MK013', N'HS019', 9, 8, 8, 10, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2945', N'MK013', N'HS020', 10, 10, 7, 10, 6, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2946', N'MK013', N'HS021', 8, 7, 8, 10, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2947', N'MK013', N'HS022', 7, 9, 5, 7, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2948', N'MK013', N'HS023', 9, 10, 8, 7, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2949', N'MK013', N'HS024', 10, 10, 6, 10, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2950', N'MK013', N'HS025', 8, 9, 5, 7, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2951', N'MK013', N'HS026', 6, 9, 9, 7, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2952', N'MK013', N'HS027', 6, 9, 6, 7, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2953', N'MK013', N'HS028', 5, 6, 5, 6, 10, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2954', N'MK013', N'HS029', 10, 9, 8, 8, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2955', N'MK013', N'HS030', 6, 10, 7, 8, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2956', N'MK013', N'HS031', 8, 5, 9, 6, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2957', N'MK013', N'HS032', 10, 5, 7, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2958', N'MK013', N'HS033', 7, 9, 9, 5, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2959', N'MK013', N'HS034', 5, 5, 6, 7, 6, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2960', N'MK013', N'HS035', 8, 7, 10, 7, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2961', N'MK013', N'HS036', 8, 7, 7, 9, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2962', N'MK013', N'HS037', 10, 5, 9, 10, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2963', N'MK013', N'HS038', 9, 9, 5, 9, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2964', N'MK013', N'HS039', 9, 7, 9, 9, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2965', N'MK013', N'HS040', 6, 5, 10, 5, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2966', N'MK013', N'HS041', 9, 9, 6, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2967', N'MK013', N'HS042', 5, 9, 10, 8, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2968', N'MK013', N'HS043', 7, 10, 5, 9, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2969', N'MK013', N'HS044', 10, 8, 8, 9, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2970', N'MK013', N'HS045', 6, 6, 6, 8, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2971', N'MK013', N'HS046', 9, 10, 5, 7, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2972', N'MK013', N'HS047', 6, 5, 10, 8, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2973', N'MK013', N'HS048', 7, 7, 5, 9, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2974', N'MK013', N'HS049', 8, 10, 6, 7, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2975', N'MK013', N'HS050', 10, 5, 10, 8, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2976', N'MK013', N'HS051', 8, 8, 6, 10, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2977', N'MK013', N'HS052', 6, 5, 6, 9, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2978', N'MK013', N'HS053', 6, 6, 7, 10, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2979', N'MK013', N'HS054', 7, 8, 6, 10, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2980', N'MK013', N'HS055', 9, 10, 5, 10, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2981', N'MK013', N'HS056', 10, 8, 9, 6, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2982', N'MK013', N'HS057', 8, 9, 9, 6, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2983', N'MK013', N'HS058', 5, 5, 10, 6, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2984', N'MK013', N'HS059', 6, 9, 5, 10, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2985', N'MK013', N'HS060', 10, 7, 7, 8, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2986', N'MK013', N'HS061', 5, 6, 7, 8, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2987', N'MK013', N'HS062', 8, 7, 10, 9, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2988', N'MK013', N'HS063', 10, 7, 5, 9, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2989', N'MK013', N'HS064', 10, 7, 10, 8, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2990', N'MK013', N'HS065', 7, 8, 7, 6, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2991', N'MK013', N'HS066', 8, 6, 5, 5, 8, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2992', N'MK013', N'HS067', 7, 5, 7, 9, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2993', N'MK013', N'HS068', 7, 8, 10, 9, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2994', N'MK013', N'HS069', 9, 6, 5, 8, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2995', N'MK013', N'HS070', 5, 8, 8, 7, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2996', N'MK013', N'HS071', 9, 5, 6, 9, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2997', N'MK013', N'HS072', 9, 7, 5, 6, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2998', N'MK013', N'HS073', 5, 6, 10, 8, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2999', N'MK013', N'HS074', 10, 7, 7, 6, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3000', N'MK013', N'HS075', 8, 5, 10, 7, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3001', N'MK013', N'HS076', 6, 8, 9, 10, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3002', N'MK013', N'HS077', 8, 7, 5, 5, 5, 5.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3003', N'MK013', N'HS078', 10, 7, 7, 10, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3004', N'MK013', N'HS079', 6, 6, 10, 10, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3005', N'MK013', N'HS080', 6, 10, 9, 9, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3006', N'MK013', N'HS081', 9, 10, 10, 8, 8, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3007', N'MK013', N'HS082', 7, 7, 5, 9, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3008', N'MK013', N'HS083', 7, 8, 8, 10, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3009', N'MK013', N'HS084', 7, 9, 8, 10, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3010', N'MK013', N'HS085', 8, 8, 10, 7, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D998', N'MK005', N'HS098', 6, 6, 9, 10, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D999', N'MK005', N'HS099', 9, 9, 5, 6, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1000', N'MK005', N'HS100', 8, 6, 7, 9, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1001', N'MK005', N'HS101', 9, 10, 5, 8, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1002', N'MK005', N'HS102', 6, 7, 8, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1003', N'MK005', N'HS103', 7, 8, 10, 5, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1004', N'MK005', N'HS104', 7, 6, 8, 8, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1005', N'MK005', N'HS105', 7, 10, 8, 5, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1006', N'MK005', N'HS106', 8, 5, 10, 9, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1007', N'MK005', N'HS107', 6, 10, 10, 6, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1008', N'MK005', N'HS108', 5, 8, 5, 10, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1009', N'MK005', N'HS109', 8, 7, 7, 5, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1010', N'MK005', N'HS110', 7, 7, 6, 6, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1011', N'MK005', N'HS111', 5, 9, 10, 7, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1012', N'MK005', N'HS112', 10, 6, 7, 6, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1013', N'MK005', N'HS113', 8, 5, 10, 9, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1014', N'MK005', N'HS114', 9, 6, 7, 8, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1015', N'MK005', N'HS115', 7, 7, 5, 8, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1016', N'MK005', N'HS116', 10, 8, 5, 5, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1017', N'MK005', N'HS117', 6, 7, 8, 10, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1018', N'MK005', N'HS118', 7, 5, 7, 5, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1019', N'MK005', N'HS119', 9, 6, 8, 10, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1020', N'MK005', N'HS120', 8, 6, 7, 9, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1021', N'MK005', N'HS121', 9, 10, 8, 5, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1022', N'MK005', N'HS122', 6, 6, 8, 7, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1023', N'MK005', N'HS123', 7, 9, 7, 8, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1024', N'MK005', N'HS124', 10, 6, 5, 7, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1025', N'MK005', N'HS125', 10, 9, 9, 8, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1026', N'MK005', N'HS126', 9, 5, 6, 8, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1027', N'MK005', N'HS127', 7, 10, 9, 9, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1028', N'MK005', N'HS128', 10, 8, 5, 9, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1029', N'MK005', N'HS129', 8, 5, 9, 7, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1030', N'MK005', N'HS130', 7, 9, 8, 9, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1031', N'MK005', N'HS131', 10, 9, 9, 5, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1032', N'MK005', N'HS132', 10, 6, 8, 8, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1033', N'MK005', N'HS133', 5, 5, 6, 8, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1034', N'MK005', N'HS134', 10, 8, 7, 6, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1035', N'MK005', N'HS135', 10, 7, 10, 10, 9, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1036', N'MK005', N'HS136', 5, 8, 8, 8, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1037', N'MK005', N'HS137', 10, 10, 6, 8, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1038', N'MK005', N'HS138', 10, 10, 6, 8, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1039', N'MK005', N'HS139', 10, 6, 9, 10, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1040', N'MK005', N'HS140', 8, 7, 10, 8, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1041', N'MK005', N'HS141', 8, 10, 9, 5, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1042', N'MK005', N'HS142', 9, 6, 8, 8, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1043', N'MK005', N'HS143', 8, 5, 7, 5, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1044', N'MK005', N'HS144', 8, 6, 5, 8, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1045', N'MK005', N'HS145', 7, 8, 8, 9, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1046', N'MK005', N'HS146', 8, 9, 6, 7, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1047', N'MK005', N'HS147', 8, 10, 5, 6, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1048', N'MK005', N'HS148', 6, 7, 10, 9, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1049', N'MK005', N'HS149', 7, 10, 7, 7, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1050', N'MK005', N'HS150', 9, 7, 7, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1051', N'MK005', N'HS151', 8, 10, 6, 8, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1052', N'MK005', N'HS152', 9, 10, 5, 5, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1053', N'MK005', N'HS153', 8, 7, 9, 8, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1054', N'MK005', N'HS154', 7, 6, 9, 5, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1055', N'MK005', N'HS155', 9, 7, 10, 8, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1056', N'MK005', N'HS156', 7, 5, 8, 5, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1057', N'MK005', N'HS157', 8, 10, 8, 10, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1058', N'MK005', N'HS158', 7, 9, 10, 7, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1059', N'MK005', N'HS159', 9, 5, 9, 10, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1060', N'MK005', N'HS160', 5, 8, 6, 10, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1061', N'MK005', N'HS161', 9, 10, 5, 5, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1062', N'MK005', N'HS162', 8, 10, 9, 10, 5, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1063', N'MK005', N'HS163', 7, 9, 5, 5, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1064', N'MK005', N'HS164', 8, 7, 10, 6, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1065', N'MK005', N'HS165', 6, 6, 7, 8, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1066', N'MK005', N'HS166', 8, 5, 9, 7, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1067', N'MK005', N'HS167', 9, 8, 8, 7, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1068', N'MK005', N'HS168', 10, 10, 10, 7, 5, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1069', N'MK005', N'HS169', 9, 10, 7, 8, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1070', N'MK005', N'HS170', 8, 6, 5, 6, 6, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1071', N'MK005', N'HS171', 8, 9, 5, 6, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1072', N'MK005', N'HS172', 8, 10, 10, 8, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1073', N'MK005', N'HS173', 10, 5, 9, 8, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1074', N'MK005', N'HS174', 8, 8, 8, 8, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1075', N'MK005', N'HS175', 7, 10, 10, 8, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1076', N'MK005', N'HS176', 6, 8, 5, 8, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1077', N'MK005', N'HS177', 10, 5, 7, 8, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1078', N'MK005', N'HS178', 6, 6, 8, 9, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1080', N'MK005', N'HS180', 9, 9, 10, 8, 6, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1081', N'MK005', N'HS181', 8, 9, 6, 8, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1082', N'MK005', N'HS182', 8, 6, 5, 6, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1083', N'MK005', N'HS183', 5, 9, 10, 7, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1084', N'MK005', N'HS184', 9, 9, 9, 10, 5, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1085', N'MK005', N'HS185', 9, 6, 7, 8, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1086', N'MK005', N'HS186', 6, 8, 7, 5, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1087', N'MK005', N'HS187', 6, 6, 10, 5, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1088', N'MK005', N'HS188', 5, 7, 7, 7, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1089', N'MK005', N'HS189', 5, 9, 10, 7, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1090', N'MK005', N'HS190', 6, 9, 6, 8, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1091', N'MK005', N'HS191', 9, 10, 10, 6, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1092', N'MK005', N'HS192', 6, 9, 5, 7, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1093', N'MK005', N'HS193', 10, 8, 5, 5, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1094', N'MK005', N'HS194', 10, 6, 6, 10, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1095', N'MK005', N'HS195', 8, 6, 10, 6, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1096', N'MK005', N'HS196', 8, 8, 9, 10, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1097', N'MK005', N'HS197', 5, 6, 6, 7, 5, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1098', N'MK005', N'HS198', 10, 10, 10, 7, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1099', N'MK005', N'HS199', 7, 8, 8, 6, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1100', N'MK005', N'HS200', 10, 10, 9, 10, 10, 9.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1101', N'MK005', N'HS201', 10, 6, 6, 8, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1102', N'MK005', N'HS202', 9, 7, 10, 6, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1103', N'MK005', N'HS203', 6, 5, 10, 9, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1104', N'MK005', N'HS204', 9, 10, 10, 10, 10, 9.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1105', N'MK005', N'HS205', 7, 9, 6, 7, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1106', N'MK005', N'HS206', 10, 7, 8, 8, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1107', N'MK005', N'HS207', 7, 8, 10, 7, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1108', N'MK005', N'HS208', 5, 7, 10, 6, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1109', N'MK005', N'HS209', 5, 9, 6, 7, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1110', N'MK005', N'HS210', 8, 6, 6, 8, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1111', N'MK005', N'HS211', 6, 10, 6, 8, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1112', N'MK005', N'HS212', 6, 7, 9, 7, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1113', N'MK005', N'HS213', 9, 7, 5, 5, 6, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1114', N'MK005', N'HS214', 7, 9, 10, 7, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1115', N'MK005', N'HS215', 8, 10, 9, 10, 5, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1116', N'MK005', N'HS216', 6, 8, 7, 9, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1117', N'MK005', N'HS217', 5, 10, 7, 7, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1118', N'MK005', N'HS218', 7, 5, 5, 9, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1119', N'MK005', N'HS219', 9, 7, 9, 9, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1120', N'MK005', N'HS220', 6, 8, 5, 6, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1121', N'MK005', N'HS221', 7, 9, 5, 7, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1122', N'MK005', N'HS222', 7, 9, 8, 8, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1123', N'MK005', N'HS223', 9, 7, 9, 10, 7, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1124', N'MK005', N'HS224', 7, 8, 5, 9, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1125', N'MK005', N'HS225', 5, 5, 10, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1126', N'MK006', N'HS001', 6, 6, 7, 7, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1127', N'MK006', N'HS002', 5, 10, 10, 6, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1128', N'MK006', N'HS003', 7, 10, 7, 7, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1129', N'MK006', N'HS004', 10, 6, 5, 10, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1130', N'MK006', N'HS005', 10, 9, 8, 8, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1131', N'MK006', N'HS006', 7, 9, 9, 5, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1132', N'MK006', N'HS007', 7, 6, 6, 8, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1133', N'MK006', N'HS008', 6, 10, 8, 6, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1134', N'MK006', N'HS009', 6, 6, 5, 7, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1135', N'MK006', N'HS010', 7, 9, 6, 6, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1136', N'MK006', N'HS011', 5, 8, 9, 7, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1137', N'MK006', N'HS012', 6, 7, 6, 9, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1138', N'MK006', N'HS013', 10, 10, 8, 8, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1139', N'MK006', N'HS014', 7, 7, 10, 10, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1140', N'MK006', N'HS015', 7, 6, 10, 9, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1141', N'MK006', N'HS016', 8, 6, 7, 6, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1142', N'MK006', N'HS017', 8, 8, 9, 9, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1143', N'MK006', N'HS018', 10, 10, 8, 10, 5, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1144', N'MK006', N'HS019', 8, 7, 5, 7, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1145', N'MK006', N'HS020', 7, 9, 8, 8, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1146', N'MK006', N'HS021', 6, 6, 5, 5, 6, 5.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1147', N'MK006', N'HS022', 7, 5, 6, 5, 9, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1148', N'MK006', N'HS023', 9, 9, 7, 6, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1149', N'MK006', N'HS024', 8, 10, 5, 10, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1150', N'MK006', N'HS025', 9, 10, 9, 5, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1151', N'MK006', N'HS026', 7, 9, 10, 7, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1152', N'MK006', N'HS027', 8, 6, 5, 8, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1153', N'MK006', N'HS028', 7, 5, 8, 5, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1154', N'MK006', N'HS029', 6, 9, 10, 10, 6, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1155', N'MK006', N'HS030', 9, 10, 8, 7, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1156', N'MK006', N'HS031', 9, 8, 5, 8, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1157', N'MK006', N'HS032', 6, 5, 9, 10, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1158', N'MK006', N'HS033', 5, 9, 9, 8, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1159', N'MK006', N'HS034', 6, 10, 6, 7, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1160', N'MK006', N'HS035', 5, 8, 5, 7, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1162', N'MK006', N'HS037', 7, 6, 5, 5, 5, 5.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1163', N'MK006', N'HS038', 10, 7, 9, 5, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1164', N'MK006', N'HS039', 5, 10, 5, 6, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1165', N'MK006', N'HS040', 5, 8, 9, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1166', N'MK006', N'HS041', 7, 10, 9, 7, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1167', N'MK006', N'HS042', 9, 7, 7, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1168', N'MK006', N'HS043', 8, 10, 8, 5, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1169', N'MK006', N'HS044', 8, 8, 7, 7, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1170', N'MK006', N'HS045', 7, 6, 7, 6, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1171', N'MK006', N'HS046', 6, 7, 6, 8, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1172', N'MK006', N'HS047', 5, 8, 10, 6, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1173', N'MK006', N'HS048', 6, 8, 6, 5, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1174', N'MK006', N'HS049', 7, 7, 7, 6, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1175', N'MK006', N'HS050', 7, 9, 5, 7, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1176', N'MK006', N'HS051', 10, 9, 7, 9, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1177', N'MK006', N'HS052', 8, 8, 7, 10, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1178', N'MK006', N'HS053', 5, 7, 9, 8, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1179', N'MK006', N'HS054', 10, 7, 9, 5, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1180', N'MK006', N'HS055', 10, 10, 8, 9, 5, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1181', N'MK006', N'HS056', 5, 6, 8, 9, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1182', N'MK006', N'HS057', 5, 9, 6, 6, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1183', N'MK006', N'HS058', 9, 8, 5, 10, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1184', N'MK006', N'HS059', 7, 6, 10, 9, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1185', N'MK006', N'HS060', 8, 8, 6, 6, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1186', N'MK006', N'HS061', 9, 6, 8, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1187', N'MK006', N'HS062', 5, 10, 10, 7, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1188', N'MK006', N'HS063', 9, 10, 6, 8, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1189', N'MK006', N'HS064', 5, 9, 7, 5, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1190', N'MK006', N'HS065', 7, 8, 8, 7, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1191', N'MK006', N'HS066', 8, 7, 10, 7, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1192', N'MK006', N'HS067', 8, 7, 10, 9, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1193', N'MK006', N'HS068', 5, 5, 7, 9, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1194', N'MK006', N'HS069', 6, 7, 6, 6, 9, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1195', N'MK006', N'HS070', 9, 10, 7, 8, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1196', N'MK006', N'HS071', 5, 7, 10, 10, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1197', N'MK006', N'HS072', 10, 5, 5, 5, 9, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1198', N'MK006', N'HS073', 5, 9, 5, 9, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1199', N'MK006', N'HS074', 7, 6, 10, 6, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1200', N'MK006', N'HS075', 7, 10, 5, 7, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1201', N'MK006', N'HS076', 7, 7, 8, 8, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1202', N'MK006', N'HS077', 8, 6, 10, 5, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1203', N'MK006', N'HS078', 6, 5, 8, 7, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1204', N'MK006', N'HS079', 6, 9, 10, 10, 10, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1205', N'MK006', N'HS080', 10, 5, 6, 6, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1206', N'MK006', N'HS081', 5, 10, 10, 9, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1207', N'MK006', N'HS082', 7, 9, 9, 5, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1208', N'MK006', N'HS083', 10, 5, 6, 5, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1209', N'MK006', N'HS084', 8, 6, 6, 7, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1210', N'MK006', N'HS085', 10, 5, 7, 8, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1211', N'MK006', N'HS086', 5, 7, 5, 10, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1212', N'MK006', N'HS087', 7, 5, 6, 7, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1213', N'MK006', N'HS088', 5, 10, 7, 8, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1214', N'MK006', N'HS089', 9, 10, 6, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1215', N'MK006', N'HS090', 9, 9, 8, 5, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1216', N'MK006', N'HS091', 5, 10, 9, 7, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1217', N'MK006', N'HS092', 5, 5, 7, 8, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1218', N'MK006', N'HS093', 9, 5, 6, 9, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1219', N'MK006', N'HS094', 6, 9, 7, 6, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1220', N'MK006', N'HS095', 8, 8, 8, 10, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1221', N'MK006', N'HS096', 6, 7, 10, 7, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1222', N'MK006', N'HS097', 10, 7, 6, 7, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1223', N'MK006', N'HS098', 7, 8, 6, 10, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1224', N'MK006', N'HS099', 8, 8, 5, 9, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1225', N'MK006', N'HS100', 6, 9, 9, 10, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1226', N'MK006', N'HS101', 5, 5, 9, 5, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1227', N'MK006', N'HS102', 5, 8, 9, 7, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1228', N'MK006', N'HS103', 10, 7, 8, 8, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1229', N'MK006', N'HS104', 5, 5, 9, 8, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1230', N'MK006', N'HS105', 6, 7, 7, 8, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1231', N'MK006', N'HS106', 9, 9, 6, 8, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1232', N'MK006', N'HS107', 8, 5, 8, 5, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1233', N'MK006', N'HS108', 7, 5, 6, 10, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1234', N'MK006', N'HS109', 5, 9, 9, 9, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1235', N'MK006', N'HS110', 5, 6, 9, 9, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1236', N'MK006', N'HS111', 6, 10, 5, 5, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1237', N'MK006', N'HS112', 5, 6, 5, 8, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1238', N'MK006', N'HS113', 5, 9, 5, 7, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1239', N'MK006', N'HS114', 7, 8, 9, 6, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1240', N'MK006', N'HS115', 8, 6, 9, 9, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1241', N'MK006', N'HS116', 5, 9, 6, 6, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1242', N'MK006', N'HS117', 7, 5, 6, 8, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1244', N'MK006', N'HS119', 6, 8, 5, 10, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1245', N'MK006', N'HS120', 7, 10, 6, 10, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1246', N'MK006', N'HS121', 6, 10, 6, 6, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1247', N'MK006', N'HS122', 5, 7, 5, 6, 8, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1248', N'MK006', N'HS123', 7, 10, 6, 9, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1249', N'MK006', N'HS124', 10, 7, 7, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1250', N'MK006', N'HS125', 7, 7, 6, 8, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1251', N'MK006', N'HS126', 6, 6, 5, 9, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1252', N'MK006', N'HS127', 9, 7, 9, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1253', N'MK006', N'HS128', 6, 10, 6, 5, 10, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1254', N'MK006', N'HS129', 8, 9, 8, 9, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1255', N'MK006', N'HS130', 10, 10, 7, 6, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1256', N'MK006', N'HS131', 8, 5, 7, 8, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1257', N'MK006', N'HS132', 9, 7, 7, 5, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1258', N'MK006', N'HS133', 8, 8, 5, 9, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1259', N'MK006', N'HS134', 6, 10, 8, 10, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1260', N'MK006', N'HS135', 10, 6, 9, 7, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1261', N'MK006', N'HS136', 5, 7, 10, 6, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1262', N'MK006', N'HS137', 9, 6, 6, 8, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1263', N'MK006', N'HS138', 5, 7, 8, 5, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1264', N'MK006', N'HS139', 7, 9, 10, 9, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1265', N'MK006', N'HS140', 10, 6, 8, 9, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1266', N'MK006', N'HS141', 10, 8, 7, 9, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1267', N'MK006', N'HS142', 10, 5, 7, 6, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1268', N'MK006', N'HS143', 7, 9, 7, 7, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1269', N'MK006', N'HS144', 8, 7, 8, 5, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1270', N'MK006', N'HS145', 9, 9, 5, 8, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1271', N'MK006', N'HS146', 10, 9, 9, 5, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1272', N'MK006', N'HS147', 7, 9, 10, 5, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1273', N'MK006', N'HS148', 7, 8, 7, 9, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1274', N'MK006', N'HS149', 9, 7, 9, 5, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1275', N'MK006', N'HS150', 7, 8, 7, 9, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1276', N'MK006', N'HS151', 8, 8, 7, 5, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1277', N'MK006', N'HS152', 5, 8, 6, 10, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1278', N'MK006', N'HS153', 9, 7, 7, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1279', N'MK006', N'HS154', 10, 10, 7, 8, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1280', N'MK006', N'HS155', 7, 9, 5, 7, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1281', N'MK006', N'HS156', 9, 5, 8, 7, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1282', N'MK006', N'HS157', 10, 6, 5, 7, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1283', N'MK006', N'HS158', 9, 5, 10, 8, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1284', N'MK006', N'HS159', 9, 7, 6, 5, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1285', N'MK006', N'HS160', 8, 5, 7, 9, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1286', N'MK006', N'HS161', 5, 7, 8, 9, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1287', N'MK006', N'HS162', 5, 5, 6, 8, 10, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1288', N'MK006', N'HS163', 9, 8, 10, 5, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1289', N'MK006', N'HS164', 6, 7, 8, 10, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1290', N'MK006', N'HS165', 10, 9, 6, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1291', N'MK006', N'HS166', 6, 10, 5, 8, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1292', N'MK006', N'HS167', 6, 10, 10, 6, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1293', N'MK006', N'HS168', 6, 7, 10, 10, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1294', N'MK006', N'HS169', 9, 7, 5, 7, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1295', N'MK006', N'HS170', 6, 10, 6, 6, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1296', N'MK006', N'HS171', 10, 7, 5, 9, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1297', N'MK006', N'HS172', 6, 6, 5, 6, 9, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1298', N'MK006', N'HS173', 9, 6, 10, 5, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1299', N'MK006', N'HS174', 7, 8, 7, 7, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1300', N'MK006', N'HS175', 10, 6, 7, 9, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1301', N'MK006', N'HS176', 8, 10, 7, 10, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1302', N'MK006', N'HS177', 7, 5, 7, 6, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1303', N'MK006', N'HS178', 9, 8, 10, 6, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1304', N'MK006', N'HS179', 6, 5, 6, 7, 5, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1305', N'MK006', N'HS180', 9, 5, 7, 6, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1306', N'MK006', N'HS181', 7, 9, 7, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1307', N'MK006', N'HS182', 6, 10, 6, 10, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1308', N'MK006', N'HS183', 6, 5, 9, 7, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1309', N'MK006', N'HS184', 10, 7, 8, 9, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1310', N'MK006', N'HS185', 10, 10, 10, 6, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1311', N'MK006', N'HS186', 10, 6, 8, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1312', N'MK006', N'HS187', 7, 5, 5, 8, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1313', N'MK006', N'HS188', 10, 10, 5, 6, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1314', N'MK006', N'HS189', 6, 6, 6, 10, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1315', N'MK006', N'HS190', 8, 8, 10, 7, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1316', N'MK006', N'HS191', 6, 10, 6, 8, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1317', N'MK006', N'HS192', 7, 7, 9, 7, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1318', N'MK006', N'HS193', 5, 6, 10, 10, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1319', N'MK006', N'HS194', 8, 8, 5, 6, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1320', N'MK006', N'HS195', 10, 10, 5, 10, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1321', N'MK006', N'HS196', 6, 8, 7, 5, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1322', N'MK006', N'HS197', 7, 6, 5, 10, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1323', N'MK006', N'HS198', 6, 7, 5, 9, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1324', N'MK006', N'HS199', 8, 9, 5, 9, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1326', N'MK006', N'HS201', 9, 6, 7, 6, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1327', N'MK006', N'HS202', 5, 8, 6, 5, 8, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1328', N'MK006', N'HS203', 5, 7, 5, 7, 7, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1329', N'MK006', N'HS204', 8, 6, 5, 7, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1330', N'MK006', N'HS205', 5, 10, 5, 5, 8, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1331', N'MK006', N'HS206', 7, 8, 10, 9, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1332', N'MK006', N'HS207', 6, 5, 5, 5, 10, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1333', N'MK006', N'HS208', 10, 5, 7, 6, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1334', N'MK006', N'HS209', 8, 10, 6, 9, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1335', N'MK006', N'HS210', 7, 7, 5, 7, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1336', N'MK006', N'HS211', 7, 10, 8, 8, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1337', N'MK006', N'HS212', 10, 5, 9, 8, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1338', N'MK006', N'HS213', 5, 10, 9, 6, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1339', N'MK006', N'HS214', 10, 9, 8, 9, 9, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1340', N'MK006', N'HS215', 6, 10, 8, 5, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1341', N'MK006', N'HS216', 9, 7, 8, 8, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1342', N'MK006', N'HS217', 8, 9, 9, 8, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1343', N'MK006', N'HS218', 5, 10, 8, 9, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1344', N'MK006', N'HS219', 9, 5, 5, 5, 6, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1345', N'MK006', N'HS220', 8, 9, 6, 5, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1346', N'MK006', N'HS221', 6, 10, 5, 7, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1347', N'MK006', N'HS222', 10, 9, 7, 8, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1348', N'MK006', N'HS223', 8, 9, 10, 8, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1349', N'MK006', N'HS224', 5, 5, 7, 7, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1350', N'MK006', N'HS225', 8, 9, 6, 6, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1351', N'MK007', N'HS001', 8, 10, 5, 9, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1352', N'MK007', N'HS002', 8, 5, 10, 10, 9, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1353', N'MK007', N'HS003', 7, 8, 6, 7, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1354', N'MK007', N'HS004', 9, 5, 6, 9, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1355', N'MK007', N'HS005', 6, 9, 6, 5, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1356', N'MK007', N'HS006', 6, 7, 9, 7, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1357', N'MK007', N'HS007', 10, 9, 6, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1358', N'MK007', N'HS008', 7, 10, 6, 8, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1359', N'MK007', N'HS009', 10, 5, 8, 8, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1360', N'MK007', N'HS010', 6, 10, 7, 7, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1361', N'MK007', N'HS011', 8, 9, 6, 10, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1362', N'MK007', N'HS012', 6, 7, 5, 6, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1363', N'MK007', N'HS013', 9, 5, 9, 9, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1364', N'MK007', N'HS014', 9, 10, 9, 5, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1365', N'MK007', N'HS015', 9, 7, 8, 10, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1366', N'MK007', N'HS016', 6, 6, 5, 7, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1367', N'MK007', N'HS017', 9, 10, 9, 6, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1368', N'MK007', N'HS018', 10, 9, 5, 8, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1369', N'MK007', N'HS019', 7, 5, 10, 10, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1370', N'MK007', N'HS020', 9, 7, 5, 8, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1371', N'MK007', N'HS021', 7, 10, 9, 6, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1372', N'MK007', N'HS022', 6, 8, 10, 6, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1373', N'MK007', N'HS023', 6, 8, 8, 8, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1374', N'MK007', N'HS024', 7, 6, 7, 10, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1375', N'MK007', N'HS025', 8, 5, 9, 8, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1376', N'MK007', N'HS026', 6, 7, 8, 8, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1377', N'MK007', N'HS027', 6, 7, 6, 5, 8, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1378', N'MK007', N'HS028', 9, 5, 9, 10, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1379', N'MK007', N'HS029', 7, 7, 9, 8, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1380', N'MK007', N'HS030', 6, 8, 7, 6, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1381', N'MK007', N'HS031', 8, 9, 6, 10, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1382', N'MK007', N'HS032', 8, 8, 5, 7, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1383', N'MK007', N'HS033', 7, 6, 8, 7, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1384', N'MK007', N'HS034', 6, 9, 6, 9, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1385', N'MK007', N'HS035', 10, 9, 6, 9, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1386', N'MK007', N'HS036', 8, 6, 9, 10, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1387', N'MK007', N'HS037', 8, 9, 10, 10, 6, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1388', N'MK007', N'HS038', 7, 9, 7, 6, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1389', N'MK007', N'HS039', 9, 7, 8, 9, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1390', N'MK007', N'HS040', 10, 5, 9, 5, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1391', N'MK007', N'HS041', 6, 6, 6, 7, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1392', N'MK007', N'HS042', 10, 10, 5, 7, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1393', N'MK007', N'HS043', 6, 8, 9, 7, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1394', N'MK007', N'HS044', 5, 8, 8, 8, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1395', N'MK007', N'HS045', 10, 10, 9, 10, 10, 9.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1396', N'MK007', N'HS046', 7, 6, 10, 7, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1397', N'MK007', N'HS047', 6, 5, 8, 10, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1398', N'MK007', N'HS048', 10, 10, 6, 6, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1399', N'MK007', N'HS049', 8, 10, 6, 10, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1400', N'MK007', N'HS050', 8, 7, 10, 5, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1401', N'MK007', N'HS051', 7, 6, 5, 7, 5, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1402', N'MK007', N'HS052', 6, 6, 10, 5, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1403', N'MK007', N'HS053', 9, 7, 8, 8, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1404', N'MK007', N'HS054', 10, 6, 6, 5, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1405', N'MK007', N'HS055', 6, 7, 5, 8, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1406', N'MK007', N'HS056', 8, 6, 9, 9, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1408', N'MK007', N'HS058', 9, 5, 5, 6, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1409', N'MK007', N'HS059', 6, 10, 6, 5, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1410', N'MK007', N'HS060', 5, 7, 7, 6, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1411', N'MK007', N'HS061', 8, 6, 9, 7, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1412', N'MK007', N'HS062', 9, 9, 9, 6, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1413', N'MK007', N'HS063', 7, 9, 7, 8, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1414', N'MK007', N'HS064', 6, 6, 6, 5, 7, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1415', N'MK007', N'HS065', 6, 5, 6, 6, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1416', N'MK007', N'HS066', 6, 6, 5, 9, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1417', N'MK007', N'HS067', 8, 8, 5, 9, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1418', N'MK007', N'HS068', 5, 7, 6, 9, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1419', N'MK007', N'HS069', 8, 8, 10, 8, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1420', N'MK007', N'HS070', 9, 8, 8, 9, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1421', N'MK007', N'HS071', 5, 5, 8, 5, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1422', N'MK007', N'HS072', 5, 10, 8, 9, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1423', N'MK007', N'HS073', 10, 9, 8, 9, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1424', N'MK007', N'HS074', 10, 5, 8, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1425', N'MK007', N'HS075', 10, 8, 5, 7, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1426', N'MK007', N'HS076', 9, 5, 8, 9, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1427', N'MK007', N'HS077', 10, 9, 8, 9, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1428', N'MK007', N'HS078', 7, 7, 8, 10, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1429', N'MK007', N'HS079', 6, 7, 10, 7, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1430', N'MK007', N'HS080', 7, 6, 8, 8, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1431', N'MK007', N'HS081', 6, 7, 7, 10, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1432', N'MK007', N'HS082', 5, 5, 10, 8, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1433', N'MK007', N'HS083', 5, 8, 9, 7, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1434', N'MK007', N'HS084', 7, 10, 9, 7, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1435', N'MK007', N'HS085', 7, 9, 10, 9, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1436', N'MK007', N'HS086', 7, 6, 8, 9, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1437', N'MK007', N'HS087', 7, 9, 8, 10, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1438', N'MK007', N'HS088', 6, 7, 10, 8, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1439', N'MK007', N'HS089', 10, 7, 8, 6, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1440', N'MK007', N'HS090', 6, 7, 8, 7, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1441', N'MK007', N'HS091', 6, 6, 5, 9, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1442', N'MK007', N'HS092', 8, 9, 10, 8, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1443', N'MK007', N'HS093', 10, 10, 10, 10, 9, 9.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1444', N'MK007', N'HS094', 9, 8, 9, 7, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1445', N'MK007', N'HS095', 7, 7, 10, 10, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1446', N'MK007', N'HS096', 9, 8, 5, 9, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1447', N'MK007', N'HS097', 8, 7, 9, 6, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1448', N'MK007', N'HS098', 7, 6, 9, 10, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1449', N'MK007', N'HS099', 5, 10, 8, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1450', N'MK007', N'HS100', 9, 8, 10, 8, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1451', N'MK007', N'HS101', 8, 9, 5, 9, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1452', N'MK007', N'HS102', 8, 6, 9, 5, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1453', N'MK007', N'HS103', 8, 6, 7, 6, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1454', N'MK007', N'HS104', 5, 7, 8, 6, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1455', N'MK007', N'HS105', 7, 5, 9, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1456', N'MK007', N'HS106', 9, 5, 9, 6, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1457', N'MK007', N'HS107', 5, 5, 6, 10, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1458', N'MK007', N'HS108', 6, 10, 6, 5, 10, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1459', N'MK007', N'HS109', 7, 7, 8, 9, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1460', N'MK007', N'HS110', 9, 7, 10, 9, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1461', N'MK007', N'HS111', 8, 5, 7, 5, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1462', N'MK007', N'HS112', 8, 5, 5, 10, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1463', N'MK007', N'HS113', 9, 8, 6, 7, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1464', N'MK007', N'HS114', 9, 6, 9, 10, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1465', N'MK007', N'HS115', 7, 8, 8, 7, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1466', N'MK007', N'HS116', 7, 10, 6, 9, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1467', N'MK007', N'HS117', 9, 9, 10, 7, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1468', N'MK007', N'HS118', 9, 10, 6, 10, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1469', N'MK007', N'HS119', 5, 9, 10, 8, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1470', N'MK007', N'HS120', 5, 9, 6, 8, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1471', N'MK007', N'HS121', 5, 7, 6, 5, 10, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1472', N'MK007', N'HS122', 8, 8, 8, 6, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1473', N'MK007', N'HS123', 7, 9, 6, 8, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1474', N'MK007', N'HS124', 7, 6, 7, 7, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1475', N'MK007', N'HS125', 9, 8, 7, 6, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1476', N'MK007', N'HS126', 8, 10, 10, 8, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1477', N'MK007', N'HS127', 9, 6, 9, 9, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1478', N'MK007', N'HS128', 8, 5, 6, 9, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1479', N'MK007', N'HS129', 5, 10, 9, 9, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1480', N'MK007', N'HS130', 10, 9, 10, 9, 8, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1481', N'MK007', N'HS131', 8, 10, 10, 9, 7, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1482', N'MK007', N'HS132', 7, 9, 6, 6, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1483', N'MK007', N'HS133', 10, 8, 7, 5, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1484', N'MK007', N'HS134', 6, 5, 7, 10, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1485', N'MK007', N'HS135', 7, 9, 5, 9, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1486', N'MK007', N'HS136', 10, 9, 8, 10, 8, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1487', N'MK007', N'HS137', 10, 9, 8, 6, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1488', N'MK007', N'HS138', 7, 9, 9, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1490', N'MK007', N'HS140', 9, 6, 7, 8, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1491', N'MK007', N'HS141', 8, 9, 10, 9, 9, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1492', N'MK007', N'HS142', 7, 5, 10, 5, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1493', N'MK007', N'HS143', 10, 6, 7, 5, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1494', N'MK007', N'HS144', 10, 10, 7, 7, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1495', N'MK007', N'HS145', 5, 8, 10, 8, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1496', N'MK007', N'HS146', 5, 5, 6, 10, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1497', N'MK007', N'HS147', 5, 10, 8, 7, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1498', N'MK007', N'HS148', 8, 10, 9, 5, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1499', N'MK007', N'HS149', 7, 5, 8, 6, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1500', N'MK007', N'HS150', 5, 8, 10, 9, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1501', N'MK007', N'HS151', 6, 7, 5, 7, 9, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1502', N'MK007', N'HS152', 9, 7, 7, 6, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1503', N'MK007', N'HS153', 6, 5, 6, 5, 6, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1504', N'MK007', N'HS154', 9, 9, 9, 7, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1505', N'MK007', N'HS155', 6, 9, 5, 6, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1506', N'MK007', N'HS156', 9, 7, 5, 8, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1507', N'MK007', N'HS157', 8, 9, 10, 10, 8, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1508', N'MK007', N'HS158', 5, 9, 8, 9, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1509', N'MK007', N'HS159', 10, 6, 5, 7, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1510', N'MK007', N'HS160', 8, 9, 6, 10, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1511', N'MK007', N'HS161', 8, 7, 10, 8, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1512', N'MK007', N'HS162', 7, 5, 8, 8, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1513', N'MK007', N'HS163', 7, 8, 6, 7, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1514', N'MK007', N'HS164', 8, 9, 9, 5, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1515', N'MK007', N'HS165', 5, 6, 6, 9, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1516', N'MK007', N'HS166', 5, 6, 5, 7, 9, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1517', N'MK007', N'HS167', 5, 5, 9, 5, 10, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1518', N'MK007', N'HS168', 7, 5, 6, 8, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1519', N'MK007', N'HS169', 8, 5, 5, 10, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1520', N'MK007', N'HS170', 5, 9, 8, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1521', N'MK007', N'HS171', 9, 10, 5, 9, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1522', N'MK007', N'HS172', 9, 5, 7, 9, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1523', N'MK007', N'HS173', 6, 10, 10, 6, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1524', N'MK007', N'HS174', 6, 10, 6, 10, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1525', N'MK007', N'HS175', 6, 9, 7, 8, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1526', N'MK007', N'HS176', 7, 5, 10, 6, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1527', N'MK007', N'HS177', 10, 10, 10, 9, 9, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1528', N'MK007', N'HS178', 9, 5, 9, 7, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1529', N'MK007', N'HS179', 8, 6, 7, 9, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1530', N'MK007', N'HS180', 6, 6, 10, 8, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1531', N'MK007', N'HS181', 10, 9, 7, 10, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1532', N'MK007', N'HS182', 5, 10, 8, 7, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1533', N'MK007', N'HS183', 7, 5, 5, 9, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1534', N'MK007', N'HS184', 6, 10, 5, 10, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1535', N'MK007', N'HS185', 9, 9, 10, 9, 7, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1536', N'MK007', N'HS186', 5, 8, 5, 8, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1537', N'MK007', N'HS187', 10, 5, 10, 9, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1538', N'MK007', N'HS188', 6, 7, 9, 10, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1539', N'MK007', N'HS189', 10, 6, 8, 9, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1540', N'MK007', N'HS190', 8, 10, 5, 7, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1541', N'MK007', N'HS191', 6, 6, 9, 8, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1542', N'MK007', N'HS192', 6, 5, 8, 8, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1543', N'MK007', N'HS193', 5, 8, 10, 9, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1544', N'MK007', N'HS194', 5, 7, 6, 6, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1545', N'MK007', N'HS195', 7, 5, 9, 8, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1546', N'MK007', N'HS196', 5, 7, 9, 10, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1547', N'MK007', N'HS197', 9, 9, 9, 8, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1548', N'MK007', N'HS198', 10, 8, 8, 10, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1549', N'MK007', N'HS199', 10, 6, 7, 9, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1550', N'MK007', N'HS200', 8, 9, 7, 9, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1551', N'MK007', N'HS201', 7, 10, 8, 8, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1552', N'MK007', N'HS202', 10, 10, 5, 6, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1553', N'MK007', N'HS203', 7, 10, 7, 7, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1554', N'MK007', N'HS204', 8, 8, 5, 5, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1555', N'MK007', N'HS205', 7, 7, 10, 7, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1556', N'MK007', N'HS206', 8, 10, 5, 8, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1557', N'MK007', N'HS207', 8, 8, 9, 7, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1558', N'MK007', N'HS208', 9, 5, 6, 8, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1559', N'MK007', N'HS209', 9, 5, 5, 7, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1560', N'MK007', N'HS210', 10, 9, 7, 9, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1561', N'MK007', N'HS211', 9, 6, 10, 5, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1562', N'MK007', N'HS212', 9, 6, 9, 10, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1563', N'MK007', N'HS213', 8, 8, 8, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1564', N'MK007', N'HS214', 10, 9, 7, 9, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1565', N'MK007', N'HS215', 8, 10, 6, 5, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1566', N'MK007', N'HS216', 7, 8, 10, 6, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1567', N'MK007', N'HS217', 10, 7, 8, 5, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1568', N'MK007', N'HS218', 10, 6, 7, 10, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1569', N'MK007', N'HS219', 10, 6, 7, 9, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1570', N'MK007', N'HS220', 5, 7, 5, 6, 8, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1572', N'MK007', N'HS222', 8, 8, 9, 10, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1573', N'MK007', N'HS223', 6, 7, 10, 10, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1574', N'MK007', N'HS224', 7, 7, 6, 8, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1575', N'MK007', N'HS225', 10, 7, 8, 9, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1576', N'MK008', N'HS001', 6, 9, 8, 7, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1577', N'MK008', N'HS002', 7, 9, 6, 10, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1578', N'MK008', N'HS003', 5, 7, 7, 5, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1579', N'MK008', N'HS004', 8, 6, 9, 5, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1580', N'MK008', N'HS005', 6, 6, 9, 8, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1581', N'MK008', N'HS006', 9, 6, 7, 9, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1582', N'MK008', N'HS007', 6, 7, 9, 7, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1583', N'MK008', N'HS008', 5, 9, 6, 10, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1584', N'MK008', N'HS009', 10, 8, 8, 5, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1585', N'MK008', N'HS010', 7, 7, 8, 9, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1586', N'MK008', N'HS011', 10, 6, 6, 9, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1587', N'MK008', N'HS012', 10, 7, 9, 8, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1588', N'MK008', N'HS013', 10, 10, 6, 8, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1589', N'MK008', N'HS014', 7, 6, 7, 5, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1590', N'MK008', N'HS015', 5, 7, 9, 8, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1591', N'MK008', N'HS016', 7, 7, 10, 5, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1592', N'MK008', N'HS017', 5, 5, 8, 5, 6, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1593', N'MK008', N'HS018', 8, 5, 10, 9, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1594', N'MK008', N'HS019', 5, 6, 8, 10, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1595', N'MK008', N'HS020', 7, 5, 5, 10, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1596', N'MK008', N'HS021', 8, 8, 9, 9, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1597', N'MK008', N'HS022', 7, 7, 6, 7, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1598', N'MK008', N'HS023', 9, 6, 9, 8, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1599', N'MK008', N'HS024', 9, 5, 8, 10, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1600', N'MK008', N'HS025', 5, 7, 9, 5, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1601', N'MK008', N'HS026', 9, 10, 5, 10, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1602', N'MK008', N'HS027', 8, 8, 5, 7, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1603', N'MK008', N'HS028', 8, 9, 10, 6, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1604', N'MK008', N'HS029', 9, 8, 8, 7, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1605', N'MK008', N'HS030', 5, 6, 10, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1606', N'MK008', N'HS031', 10, 6, 5, 9, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1607', N'MK008', N'HS032', 9, 9, 5, 5, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1608', N'MK008', N'HS033', 7, 8, 7, 9, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1609', N'MK008', N'HS034', 8, 7, 5, 7, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1610', N'MK008', N'HS035', 8, 5, 7, 9, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1611', N'MK008', N'HS036', 5, 8, 10, 10, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1612', N'MK008', N'HS037', 10, 5, 6, 6, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1613', N'MK008', N'HS038', 6, 9, 5, 6, 5, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1614', N'MK008', N'HS039', 6, 8, 8, 9, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1615', N'MK008', N'HS040', 5, 7, 9, 10, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1616', N'MK008', N'HS041', 9, 5, 10, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1617', N'MK008', N'HS042', 7, 9, 8, 9, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1618', N'MK008', N'HS043', 10, 8, 8, 9, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1619', N'MK008', N'HS044', 7, 6, 6, 8, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1620', N'MK008', N'HS045', 6, 6, 5, 9, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1621', N'MK008', N'HS046', 10, 5, 8, 5, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1622', N'MK008', N'HS047', 10, 9, 5, 10, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1623', N'MK008', N'HS048', 7, 6, 6, 5, 7, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1624', N'MK008', N'HS049', 10, 8, 8, 10, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1625', N'MK008', N'HS050', 5, 10, 6, 8, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1626', N'MK008', N'HS051', 10, 6, 8, 6, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1627', N'MK008', N'HS052', 7, 6, 6, 8, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1628', N'MK008', N'HS053', 10, 5, 7, 6, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1629', N'MK008', N'HS054', 5, 10, 8, 9, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1630', N'MK008', N'HS055', 8, 7, 7, 6, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1631', N'MK008', N'HS056', 10, 7, 5, 7, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1632', N'MK008', N'HS057', 9, 6, 8, 10, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1633', N'MK008', N'HS058', 6, 8, 6, 6, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1634', N'MK008', N'HS059', 9, 8, 5, 5, 9, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1635', N'MK008', N'HS060', 5, 5, 7, 10, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1636', N'MK008', N'HS061', 9, 10, 6, 5, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1637', N'MK008', N'HS062', 9, 6, 8, 9, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1638', N'MK008', N'HS063', 6, 9, 10, 6, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1639', N'MK008', N'HS064', 6, 9, 6, 6, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1640', N'MK008', N'HS065', 10, 8, 9, 5, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1641', N'MK008', N'HS066', 8, 7, 5, 8, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1642', N'MK008', N'HS067', 9, 10, 7, 7, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1643', N'MK008', N'HS068', 5, 10, 5, 8, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1644', N'MK008', N'HS069', 5, 10, 9, 5, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1645', N'MK008', N'HS070', 10, 7, 6, 8, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1646', N'MK008', N'HS071', 6, 7, 8, 8, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1647', N'MK008', N'HS072', 8, 9, 8, 6, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1648', N'MK008', N'HS073', 7, 9, 6, 7, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1649', N'MK008', N'HS074', 5, 5, 8, 10, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1650', N'MK008', N'HS075', 8, 10, 6, 7, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1651', N'MK008', N'HS076', 5, 9, 5, 5, 7, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1652', N'MK008', N'HS077', 7, 9, 9, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1654', N'MK008', N'HS079', 7, 6, 10, 10, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1655', N'MK008', N'HS080', 10, 7, 7, 8, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1656', N'MK008', N'HS081', 9, 10, 10, 5, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1657', N'MK008', N'HS082', 5, 6, 7, 6, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1658', N'MK008', N'HS083', 7, 10, 9, 10, 5, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1659', N'MK008', N'HS084', 7, 6, 7, 9, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1660', N'MK008', N'HS085', 8, 9, 6, 8, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1661', N'MK008', N'HS086', 7, 6, 8, 9, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1662', N'MK008', N'HS087', 6, 6, 7, 5, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1663', N'MK008', N'HS088', 6, 8, 8, 6, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1664', N'MK008', N'HS089', 10, 8, 7, 6, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1665', N'MK008', N'HS090', 9, 8, 7, 5, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1666', N'MK008', N'HS091', 6, 6, 6, 9, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1667', N'MK008', N'HS092', 6, 7, 9, 8, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1668', N'MK008', N'HS093', 7, 8, 10, 8, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1669', N'MK008', N'HS094', 6, 10, 10, 6, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1670', N'MK008', N'HS095', 10, 10, 6, 10, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1671', N'MK008', N'HS096', 5, 5, 10, 9, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1672', N'MK008', N'HS097', 5, 6, 5, 7, 6, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1673', N'MK008', N'HS098', 7, 7, 7, 10, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1674', N'MK008', N'HS099', 8, 5, 9, 5, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1675', N'MK008', N'HS100', 6, 8, 10, 6, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1676', N'MK008', N'HS101', 7, 7, 10, 8, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1677', N'MK008', N'HS102', 7, 5, 8, 7, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1678', N'MK008', N'HS103', 10, 6, 10, 10, 7, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1679', N'MK008', N'HS104', 5, 7, 8, 9, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1680', N'MK008', N'HS105', 10, 5, 5, 7, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1681', N'MK008', N'HS106', 8, 5, 8, 7, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1682', N'MK008', N'HS107', 9, 6, 6, 5, 5, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1683', N'MK008', N'HS108', 5, 10, 7, 9, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1684', N'MK008', N'HS109', 9, 5, 7, 8, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1685', N'MK008', N'HS110', 5, 5, 7, 9, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1686', N'MK008', N'HS111', 6, 10, 6, 7, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1687', N'MK008', N'HS112', 9, 6, 5, 9, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1688', N'MK008', N'HS113', 8, 5, 7, 9, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1689', N'MK008', N'HS114', 9, 5, 7, 10, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1690', N'MK008', N'HS115', 5, 8, 6, 6, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1691', N'MK008', N'HS116', 9, 6, 5, 8, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1692', N'MK008', N'HS117', 7, 5, 5, 6, 7, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1693', N'MK008', N'HS118', 6, 7, 6, 7, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1694', N'MK008', N'HS119', 9, 5, 7, 7, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1695', N'MK008', N'HS120', 5, 10, 9, 10, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1696', N'MK008', N'HS121', 7, 10, 10, 10, 8, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1697', N'MK008', N'HS122', 8, 5, 7, 10, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1698', N'MK008', N'HS123', 10, 7, 10, 6, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1699', N'MK008', N'HS124', 5, 8, 9, 9, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1700', N'MK008', N'HS125', 9, 6, 10, 10, 8, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1701', N'MK008', N'HS126', 6, 8, 7, 7, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1702', N'MK008', N'HS127', 7, 10, 5, 8, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1703', N'MK008', N'HS128', 10, 7, 9, 5, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1704', N'MK008', N'HS129', 8, 8, 10, 6, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1705', N'MK008', N'HS130', 9, 5, 10, 9, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1706', N'MK008', N'HS131', 9, 8, 6, 6, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1707', N'MK008', N'HS132', 8, 10, 6, 9, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1708', N'MK008', N'HS133', 10, 5, 8, 7, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1709', N'MK008', N'HS134', 7, 8, 10, 10, 6, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1710', N'MK008', N'HS135', 10, 7, 5, 6, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1711', N'MK008', N'HS136', 8, 9, 8, 5, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1712', N'MK008', N'HS137', 10, 9, 9, 5, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1713', N'MK008', N'HS138', 6, 6, 8, 7, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1714', N'MK008', N'HS139', 8, 8, 7, 6, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1715', N'MK008', N'HS140', 8, 8, 8, 8, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1716', N'MK008', N'HS141', 6, 8, 8, 6, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1717', N'MK008', N'HS142', 7, 9, 8, 10, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1718', N'MK008', N'HS143', 7, 5, 7, 7, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1719', N'MK008', N'HS144', 10, 6, 8, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1720', N'MK008', N'HS145', 8, 5, 5, 9, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1721', N'MK008', N'HS146', 8, 6, 7, 6, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1722', N'MK008', N'HS147', 8, 9, 7, 6, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1723', N'MK008', N'HS148', 8, 8, 5, 8, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1724', N'MK008', N'HS149', 8, 7, 6, 5, 5, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1725', N'MK008', N'HS150', 10, 5, 7, 5, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1726', N'MK008', N'HS151', 6, 5, 9, 5, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1727', N'MK008', N'HS152', 9, 6, 6, 9, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1728', N'MK008', N'HS153', 7, 5, 10, 10, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1729', N'MK008', N'HS154', 10, 8, 10, 7, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1730', N'MK008', N'HS155', 7, 10, 9, 9, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1731', N'MK008', N'HS156', 5, 7, 9, 10, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1732', N'MK008', N'HS157', 5, 5, 8, 7, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1733', N'MK008', N'HS158', 8, 7, 6, 7, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1734', N'MK008', N'HS159', 5, 7, 6, 6, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1736', N'MK008', N'HS161', 6, 6, 5, 7, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1737', N'MK008', N'HS162', 8, 8, 5, 8, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1738', N'MK008', N'HS163', 6, 10, 5, 8, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1739', N'MK008', N'HS164', 9, 10, 6, 10, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1740', N'MK008', N'HS165', 8, 8, 5, 9, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1741', N'MK008', N'HS166', 9, 5, 7, 6, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1742', N'MK008', N'HS167', 7, 9, 6, 8, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1743', N'MK008', N'HS168', 8, 7, 7, 6, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1744', N'MK008', N'HS169', 6, 7, 5, 8, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1745', N'MK008', N'HS170', 7, 9, 5, 6, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1746', N'MK008', N'HS171', 6, 8, 5, 10, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1747', N'MK008', N'HS172', 10, 9, 6, 10, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1748', N'MK008', N'HS173', 7, 5, 6, 9, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1749', N'MK008', N'HS174', 5, 7, 6, 9, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1750', N'MK008', N'HS175', 7, 9, 8, 5, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1751', N'MK008', N'HS176', 5, 9, 8, 5, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1752', N'MK008', N'HS177', 9, 8, 6, 6, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1753', N'MK008', N'HS178', 7, 7, 5, 8, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1754', N'MK008', N'HS179', 10, 5, 7, 9, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1755', N'MK008', N'HS180', 7, 10, 10, 5, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1756', N'MK008', N'HS181', 10, 6, 8, 6, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1757', N'MK008', N'HS182', 9, 9, 9, 8, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1758', N'MK008', N'HS183', 8, 7, 9, 9, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1759', N'MK008', N'HS184', 9, 6, 9, 10, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1760', N'MK008', N'HS185', 7, 7, 7, 7, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1761', N'MK008', N'HS186', 9, 6, 5, 9, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1762', N'MK008', N'HS187', 9, 9, 10, 6, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1763', N'MK008', N'HS188', 9, 10, 9, 9, 7, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1764', N'MK008', N'HS189', 10, 9, 6, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1765', N'MK008', N'HS190', 5, 10, 8, 6, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1766', N'MK008', N'HS191', 5, 9, 8, 6, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1767', N'MK008', N'HS192', 9, 8, 9, 9, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1768', N'MK008', N'HS193', 9, 10, 5, 9, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1769', N'MK008', N'HS194', 10, 6, 9, 10, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1770', N'MK008', N'HS195', 8, 9, 6, 7, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1771', N'MK008', N'HS196', 9, 7, 8, 6, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1772', N'MK008', N'HS197', 9, 8, 5, 6, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1773', N'MK008', N'HS198', 8, 8, 10, 10, 8, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1774', N'MK008', N'HS199', 5, 7, 6, 6, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1775', N'MK008', N'HS200', 6, 5, 6, 10, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1776', N'MK008', N'HS201', 7, 5, 5, 5, 8, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1777', N'MK008', N'HS202', 9, 6, 6, 9, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1778', N'MK008', N'HS203', 5, 5, 5, 9, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1779', N'MK008', N'HS204', 7, 6, 5, 7, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1780', N'MK008', N'HS205', 6, 6, 10, 6, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1781', N'MK008', N'HS206', 9, 6, 10, 5, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1782', N'MK008', N'HS207', 10, 8, 10, 6, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1783', N'MK008', N'HS208', 9, 10, 6, 10, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1784', N'MK008', N'HS209', 9, 8, 9, 5, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1785', N'MK008', N'HS210', 9, 8, 6, 10, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1786', N'MK008', N'HS211', 6, 6, 9, 8, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1787', N'MK008', N'HS212', 5, 5, 8, 6, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1788', N'MK008', N'HS213', 6, 5, 7, 7, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1789', N'MK008', N'HS214', 8, 10, 10, 7, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1790', N'MK008', N'HS215', 6, 6, 7, 7, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1791', N'MK008', N'HS216', 6, 5, 7, 8, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1792', N'MK008', N'HS217', 5, 5, 10, 6, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1793', N'MK008', N'HS218', 9, 7, 10, 8, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1794', N'MK008', N'HS219', 8, 6, 9, 9, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1795', N'MK008', N'HS220', 6, 7, 10, 7, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1796', N'MK008', N'HS221', 8, 5, 7, 8, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1797', N'MK008', N'HS222', 6, 8, 6, 8, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1798', N'MK008', N'HS223', 6, 7, 9, 7, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1799', N'MK008', N'HS224', 9, 9, 6, 5, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1800', N'MK008', N'HS225', 7, 9, 7, 6, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1801', N'MK009', N'HS001', 10, 9, 10, 7, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1802', N'MK009', N'HS002', 6, 6, 9, 6, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1803', N'MK009', N'HS003', 5, 9, 10, 9, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1804', N'MK009', N'HS004', 7, 9, 5, 8, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1805', N'MK009', N'HS005', 10, 5, 7, 5, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1806', N'MK009', N'HS006', 6, 5, 9, 8, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1807', N'MK009', N'HS007', 9, 5, 9, 5, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1808', N'MK009', N'HS008', 5, 9, 10, 6, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1809', N'MK009', N'HS009', 8, 6, 9, 8, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1810', N'MK009', N'HS010', 8, 9, 7, 8, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1811', N'MK009', N'HS011', 7, 8, 5, 6, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1812', N'MK009', N'HS012', 8, 7, 6, 7, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1813', N'MK009', N'HS013', 7, 5, 6, 7, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1814', N'MK009', N'HS014', 7, 7, 8, 8, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1815', N'MK009', N'HS015', 10, 8, 9, 9, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1816', N'MK009', N'HS016', 10, 6, 6, 6, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1818', N'MK009', N'HS018', 5, 5, 8, 5, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1819', N'MK009', N'HS019', 10, 6, 6, 10, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1820', N'MK009', N'HS020', 7, 6, 10, 6, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1821', N'MK009', N'HS021', 7, 9, 7, 8, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1822', N'MK009', N'HS022', 9, 6, 8, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1823', N'MK009', N'HS023', 9, 9, 8, 10, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1824', N'MK009', N'HS024', 6, 5, 7, 9, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1825', N'MK009', N'HS025', 8, 5, 5, 6, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1826', N'MK009', N'HS026', 7, 8, 6, 7, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1827', N'MK009', N'HS027', 8, 8, 10, 7, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1828', N'MK009', N'HS028', 6, 9, 9, 9, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1829', N'MK009', N'HS029', 10, 10, 8, 10, 6, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1830', N'MK009', N'HS030', 9, 8, 8, 8, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1831', N'MK009', N'HS031', 5, 5, 7, 8, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1832', N'MK009', N'HS032', 8, 6, 5, 5, 6, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1833', N'MK009', N'HS033', 6, 5, 9, 10, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1834', N'MK009', N'HS034', 8, 5, 6, 10, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1835', N'MK009', N'HS035', 8, 10, 10, 6, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1836', N'MK009', N'HS036', 5, 5, 10, 7, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1837', N'MK009', N'HS037', 7, 5, 10, 6, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1838', N'MK009', N'HS038', 7, 7, 10, 8, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1839', N'MK009', N'HS039', 5, 5, 8, 7, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1840', N'MK009', N'HS040', 9, 7, 9, 7, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1841', N'MK009', N'HS041', 9, 10, 9, 8, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1842', N'MK009', N'HS042', 6, 7, 10, 6, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1843', N'MK009', N'HS043', 9, 10, 10, 5, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1844', N'MK009', N'HS044', 7, 5, 10, 5, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1845', N'MK009', N'HS045', 6, 7, 10, 6, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1846', N'MK009', N'HS046', 9, 8, 10, 5, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1847', N'MK009', N'HS047', 10, 8, 5, 8, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1848', N'MK009', N'HS048', 8, 7, 7, 6, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1849', N'MK009', N'HS049', 5, 8, 8, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1850', N'MK009', N'HS050', 5, 7, 7, 7, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1851', N'MK009', N'HS051', 7, 9, 10, 7, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1852', N'MK009', N'HS052', 10, 5, 8, 8, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1853', N'MK009', N'HS053', 7, 6, 8, 10, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1854', N'MK009', N'HS054', 9, 7, 7, 10, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1855', N'MK009', N'HS055', 6, 10, 8, 7, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1856', N'MK009', N'HS056', 7, 8, 6, 5, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1857', N'MK009', N'HS057', 8, 5, 8, 5, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1858', N'MK009', N'HS058', 7, 6, 5, 9, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1859', N'MK009', N'HS059', 7, 9, 10, 7, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1860', N'MK009', N'HS060', 7, 6, 10, 5, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1861', N'MK009', N'HS061', 6, 8, 5, 9, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1862', N'MK009', N'HS062', 7, 8, 8, 9, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1863', N'MK009', N'HS063', 7, 7, 8, 7, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1864', N'MK009', N'HS064', 7, 9, 10, 8, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1865', N'MK009', N'HS065', 10, 6, 10, 8, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1866', N'MK009', N'HS066', 6, 10, 10, 5, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1867', N'MK009', N'HS067', 7, 7, 7, 6, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1868', N'MK009', N'HS068', 10, 8, 7, 6, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1869', N'MK009', N'HS069', 5, 9, 7, 8, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1870', N'MK009', N'HS070', 6, 5, 10, 9, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1871', N'MK009', N'HS071', 7, 10, 10, 10, 6, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1872', N'MK009', N'HS072', 10, 6, 9, 7, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1873', N'MK009', N'HS073', 6, 9, 8, 7, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1874', N'MK009', N'HS074', 9, 6, 6, 10, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1875', N'MK009', N'HS075', 10, 9, 6, 5, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1876', N'MK009', N'HS076', 6, 5, 6, 8, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1877', N'MK009', N'HS077', 10, 6, 8, 6, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1878', N'MK009', N'HS078', 6, 5, 7, 5, 7, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1879', N'MK009', N'HS079', 6, 9, 10, 7, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1880', N'MK009', N'HS080', 7, 6, 8, 7, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1881', N'MK009', N'HS081', 9, 9, 10, 6, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1882', N'MK009', N'HS082', 6, 5, 8, 5, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1883', N'MK009', N'HS083', 7, 6, 8, 6, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1884', N'MK009', N'HS084', 7, 9, 6, 6, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1885', N'MK009', N'HS085', 5, 6, 5, 7, 5, 5.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1886', N'MK009', N'HS086', 5, 10, 6, 10, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1887', N'MK009', N'HS087', 9, 5, 5, 7, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1888', N'MK009', N'HS088', 10, 8, 6, 7, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1889', N'MK009', N'HS089', 7, 7, 5, 9, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1890', N'MK009', N'HS090', 8, 9, 9, 10, 9, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1891', N'MK009', N'HS091', 9, 9, 8, 6, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1892', N'MK009', N'HS092', 5, 9, 7, 8, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1893', N'MK009', N'HS093', 8, 8, 5, 5, 7, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1894', N'MK009', N'HS094', 7, 5, 5, 7, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1895', N'MK009', N'HS095', 8, 8, 10, 10, 5, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1896', N'MK009', N'HS096', 10, 7, 9, 7, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1897', N'MK009', N'HS097', 8, 8, 8, 5, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1898', N'MK009', N'HS098', 9, 6, 5, 7, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1900', N'MK009', N'HS100', 6, 6, 8, 9, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1901', N'MK009', N'HS101', 6, 7, 7, 6, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1902', N'MK009', N'HS102', 7, 8, 8, 6, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1903', N'MK009', N'HS103', 10, 6, 6, 10, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1904', N'MK009', N'HS104', 7, 5, 9, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1905', N'MK009', N'HS105', 6, 8, 8, 5, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1906', N'MK009', N'HS106', 9, 8, 7, 9, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1907', N'MK009', N'HS107', 9, 10, 10, 8, 6, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1908', N'MK009', N'HS108', 6, 8, 8, 7, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1909', N'MK009', N'HS109', 7, 5, 10, 8, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1910', N'MK009', N'HS110', 7, 9, 8, 5, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1911', N'MK009', N'HS111', 9, 9, 9, 5, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1912', N'MK009', N'HS112', 7, 10, 6, 9, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1913', N'MK009', N'HS113', 9, 7, 7, 8, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1914', N'MK009', N'HS114', 5, 7, 9, 7, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1915', N'MK009', N'HS115', 7, 5, 10, 6, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1916', N'MK009', N'HS116', 6, 5, 6, 10, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1917', N'MK009', N'HS117', 10, 10, 10, 9, 6, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1918', N'MK009', N'HS118', 5, 6, 10, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1919', N'MK009', N'HS119', 5, 5, 6, 5, 8, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1920', N'MK009', N'HS120', 5, 6, 9, 7, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1921', N'MK009', N'HS121', 9, 7, 7, 9, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1922', N'MK009', N'HS122', 9, 6, 9, 6, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1923', N'MK009', N'HS123', 9, 7, 7, 5, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1924', N'MK009', N'HS124', 5, 9, 5, 8, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1925', N'MK009', N'HS125', 6, 6, 7, 7, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1926', N'MK009', N'HS126', 8, 5, 5, 5, 8, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1927', N'MK009', N'HS127', 10, 9, 6, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1928', N'MK009', N'HS128', 8, 7, 7, 8, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1929', N'MK009', N'HS129', 7, 10, 9, 10, 10, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1930', N'MK009', N'HS130', 8, 5, 6, 9, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1931', N'MK009', N'HS131', 5, 7, 5, 9, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1932', N'MK009', N'HS132', 9, 5, 7, 9, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1933', N'MK009', N'HS133', 6, 5, 10, 5, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1934', N'MK009', N'HS134', 6, 6, 9, 8, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1935', N'MK009', N'HS135', 9, 8, 7, 6, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1936', N'MK009', N'HS136', 6, 5, 6, 10, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1937', N'MK009', N'HS137', 7, 5, 9, 6, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1938', N'MK009', N'HS138', 5, 7, 10, 5, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1939', N'MK009', N'HS139', 6, 8, 9, 6, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1940', N'MK009', N'HS140', 10, 7, 7, 6, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1941', N'MK009', N'HS141', 7, 9, 7, 7, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1942', N'MK009', N'HS142', 7, 5, 5, 8, 10, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1943', N'MK009', N'HS143', 8, 6, 5, 10, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1944', N'MK009', N'HS144', 7, 7, 5, 9, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1945', N'MK009', N'HS145', 10, 5, 8, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1946', N'MK009', N'HS146', 5, 9, 10, 7, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1947', N'MK009', N'HS147', 6, 5, 6, 10, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1948', N'MK009', N'HS148', 5, 5, 9, 5, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1949', N'MK009', N'HS149', 5, 7, 6, 5, 8, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1950', N'MK009', N'HS150', 7, 8, 10, 10, 5, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1951', N'MK009', N'HS151', 6, 7, 6, 6, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1952', N'MK009', N'HS152', 9, 7, 8, 7, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1953', N'MK009', N'HS153', 8, 7, 10, 7, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1954', N'MK009', N'HS154', 9, 9, 8, 10, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1955', N'MK009', N'HS155', 10, 10, 8, 9, 6, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1956', N'MK009', N'HS156', 8, 9, 5, 8, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1957', N'MK009', N'HS157', 7, 10, 7, 8, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1958', N'MK009', N'HS158', 9, 10, 7, 6, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1959', N'MK009', N'HS159', 9, 5, 5, 10, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1960', N'MK009', N'HS160', 6, 7, 7, 10, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1961', N'MK009', N'HS161', 6, 8, 6, 8, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1962', N'MK009', N'HS162', 6, 8, 8, 6, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1963', N'MK009', N'HS163', 6, 8, 5, 5, 9, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1964', N'MK009', N'HS164', 8, 7, 5, 8, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1965', N'MK009', N'HS165', 7, 10, 9, 9, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1966', N'MK009', N'HS166', 9, 5, 5, 5, 9, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1967', N'MK009', N'HS167', 6, 5, 8, 9, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1968', N'MK009', N'HS168', 8, 10, 6, 7, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1969', N'MK009', N'HS169', 9, 8, 6, 5, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1970', N'MK009', N'HS170', 9, 8, 10, 10, 10, 9.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1971', N'MK009', N'HS171', 7, 9, 9, 7, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1972', N'MK009', N'HS172', 8, 9, 6, 9, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1973', N'MK009', N'HS173', 10, 8, 7, 6, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1974', N'MK009', N'HS174', 7, 8, 6, 6, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1975', N'MK009', N'HS175', 5, 9, 5, 8, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1976', N'MK009', N'HS176', 6, 8, 9, 10, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1977', N'MK009', N'HS177', 9, 6, 5, 7, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1978', N'MK009', N'HS178', 9, 7, 10, 7, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1979', N'MK009', N'HS179', 10, 8, 7, 6, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1980', N'MK009', N'HS180', 6, 7, 8, 6, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1982', N'MK009', N'HS182', 9, 5, 5, 9, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1983', N'MK009', N'HS183', 10, 9, 6, 5, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1984', N'MK009', N'HS184', 6, 5, 9, 8, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1985', N'MK009', N'HS185', 6, 10, 6, 9, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1986', N'MK009', N'HS186', 6, 8, 7, 5, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1987', N'MK009', N'HS187', 8, 7, 8, 7, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1988', N'MK009', N'HS188', 5, 10, 10, 9, 9, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1989', N'MK009', N'HS189', 7, 7, 5, 9, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1990', N'MK009', N'HS190', 5, 7, 7, 10, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1991', N'MK009', N'HS191', 8, 6, 8, 7, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1992', N'MK009', N'HS192', 9, 5, 6, 9, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1993', N'MK009', N'HS193', 7, 7, 9, 6, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1994', N'MK009', N'HS194', 9, 7, 10, 9, 7, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1995', N'MK009', N'HS195', 5, 6, 9, 6, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1996', N'MK009', N'HS196', 6, 10, 7, 7, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1997', N'MK009', N'HS197', 7, 7, 5, 6, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1998', N'MK009', N'HS198', 8, 10, 6, 5, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D1999', N'MK009', N'HS199', 6, 6, 5, 5, 5, 5.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2000', N'MK009', N'HS200', 5, 8, 5, 9, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2001', N'MK009', N'HS201', 7, 10, 8, 9, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2002', N'MK009', N'HS202', 6, 7, 10, 8, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2003', N'MK009', N'HS203', 7, 8, 9, 8, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2004', N'MK009', N'HS204', 5, 6, 8, 7, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2005', N'MK009', N'HS205', 7, 8, 9, 8, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2006', N'MK009', N'HS206', 7, 5, 10, 7, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2007', N'MK009', N'HS207', 8, 7, 7, 5, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2008', N'MK009', N'HS208', 8, 6, 7, 10, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2009', N'MK009', N'HS209', 8, 10, 7, 10, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2010', N'MK009', N'HS210', 10, 9, 5, 9, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2011', N'MK009', N'HS211', 10, 6, 5, 8, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2012', N'MK009', N'HS212', 10, 10, 9, 6, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2013', N'MK009', N'HS213', 7, 7, 8, 6, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2014', N'MK009', N'HS214', 6, 10, 9, 8, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2015', N'MK009', N'HS215', 8, 5, 10, 8, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2016', N'MK009', N'HS216', 5, 10, 5, 5, 5, 5.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2017', N'MK009', N'HS217', 7, 7, 10, 7, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2018', N'MK009', N'HS218', 5, 5, 5, 5, 6, 5.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2019', N'MK009', N'HS219', 6, 5, 8, 8, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2020', N'MK009', N'HS220', 5, 9, 7, 5, 10, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2021', N'MK009', N'HS221', 8, 9, 7, 8, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2022', N'MK009', N'HS222', 5, 7, 8, 7, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2023', N'MK009', N'HS223', 10, 5, 5, 10, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2024', N'MK009', N'HS224', 8, 6, 10, 8, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2025', N'MK009', N'HS225', 6, 10, 7, 10, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2026', N'MK010', N'HS001', 6, 7, 9, 7, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2027', N'MK010', N'HS002', 7, 9, 7, 7, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2028', N'MK010', N'HS003', 6, 9, 9, 9, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2029', N'MK010', N'HS004', 8, 5, 9, 8, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2030', N'MK010', N'HS005', 6, 5, 10, 10, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2031', N'MK010', N'HS006', 7, 7, 8, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2032', N'MK010', N'HS007', 9, 8, 6, 6, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2033', N'MK010', N'HS008', 8, 7, 6, 8, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2034', N'MK010', N'HS009', 6, 8, 9, 6, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2035', N'MK010', N'HS010', 8, 6, 6, 10, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2036', N'MK010', N'HS011', 9, 8, 7, 10, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2037', N'MK010', N'HS012', 5, 10, 6, 10, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2038', N'MK010', N'HS013', 9, 8, 9, 5, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2039', N'MK010', N'HS014', 6, 9, 7, 5, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2040', N'MK010', N'HS015', 5, 7, 5, 7, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2041', N'MK010', N'HS016', 6, 8, 5, 7, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2042', N'MK010', N'HS017', 7, 8, 7, 8, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2043', N'MK010', N'HS018', 7, 9, 5, 10, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2044', N'MK010', N'HS019', 6, 7, 10, 5, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2045', N'MK010', N'HS020', 5, 8, 5, 5, 8, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2046', N'MK010', N'HS021', 8, 9, 8, 8, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2047', N'MK010', N'HS022', 9, 9, 8, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2048', N'MK010', N'HS023', 8, 7, 5, 9, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2049', N'MK010', N'HS024', 6, 9, 8, 9, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2050', N'MK010', N'HS025', 7, 5, 10, 6, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2051', N'MK010', N'HS026', 10, 8, 7, 5, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2052', N'MK010', N'HS027', 5, 7, 9, 9, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2053', N'MK010', N'HS028', 6, 5, 5, 7, 7, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2054', N'MK010', N'HS029', 9, 8, 10, 5, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2055', N'MK010', N'HS030', 8, 6, 6, 10, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2056', N'MK010', N'HS031', 9, 10, 8, 8, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2057', N'MK010', N'HS032', 7, 8, 5, 7, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2058', N'MK010', N'HS033', 8, 7, 5, 10, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2059', N'MK010', N'HS034', 8, 9, 8, 10, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2060', N'MK010', N'HS035', 6, 7, 7, 5, 9, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2061', N'MK010', N'HS036', 8, 6, 9, 7, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2062', N'MK010', N'HS037', 10, 8, 10, 6, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2064', N'MK010', N'HS039', 8, 7, 9, 6, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2065', N'MK010', N'HS040', 5, 6, 5, 9, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2066', N'MK010', N'HS041', 8, 7, 8, 8, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2067', N'MK010', N'HS042', 5, 6, 6, 10, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2068', N'MK010', N'HS043', 7, 6, 6, 5, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2069', N'MK010', N'HS044', 5, 5, 6, 6, 6, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2070', N'MK010', N'HS045', 10, 8, 7, 6, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2071', N'MK010', N'HS046', 6, 6, 7, 8, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2072', N'MK010', N'HS047', 6, 9, 7, 5, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2073', N'MK010', N'HS048', 8, 9, 6, 6, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2074', N'MK010', N'HS049', 7, 6, 5, 8, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2075', N'MK010', N'HS050', 10, 6, 9, 10, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2076', N'MK010', N'HS051', 6, 10, 6, 8, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2077', N'MK010', N'HS052', 5, 10, 7, 7, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2078', N'MK010', N'HS053', 8, 10, 9, 6, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2079', N'MK010', N'HS054', 10, 7, 9, 10, 7, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2080', N'MK010', N'HS055', 8, 9, 8, 8, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2081', N'MK010', N'HS056', 7, 5, 8, 10, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2082', N'MK010', N'HS057', 8, 7, 10, 7, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2083', N'MK010', N'HS058', 10, 5, 5, 10, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2084', N'MK010', N'HS059', 7, 8, 7, 10, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2085', N'MK010', N'HS060', 6, 7, 7, 7, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2086', N'MK010', N'HS061', 5, 9, 6, 9, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2087', N'MK010', N'HS062', 8, 8, 5, 5, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2088', N'MK010', N'HS063', 7, 5, 8, 8, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2089', N'MK010', N'HS064', 8, 6, 5, 5, 5, 5.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2090', N'MK010', N'HS065', 9, 9, 7, 7, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2091', N'MK010', N'HS066', 9, 9, 5, 8, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2092', N'MK010', N'HS067', 5, 8, 6, 9, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2093', N'MK010', N'HS068', 7, 9, 6, 9, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2094', N'MK010', N'HS069', 9, 10, 6, 5, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2095', N'MK010', N'HS070', 7, 10, 6, 5, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2096', N'MK010', N'HS071', 10, 5, 7, 5, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2097', N'MK010', N'HS072', 9, 9, 10, 8, 6, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2098', N'MK010', N'HS073', 6, 8, 6, 10, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2099', N'MK010', N'HS074', 9, 7, 10, 5, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2100', N'MK010', N'HS075', 7, 5, 7, 10, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2101', N'MK010', N'HS076', 9, 5, 7, 6, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2102', N'MK010', N'HS077', 6, 5, 5, 10, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2103', N'MK010', N'HS078', 5, 5, 9, 9, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2104', N'MK010', N'HS079', 6, 9, 5, 10, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2105', N'MK010', N'HS080', 9, 9, 5, 5, 10, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2106', N'MK010', N'HS081', 5, 8, 6, 8, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2107', N'MK010', N'HS082', 9, 8, 8, 5, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2108', N'MK010', N'HS083', 6, 8, 6, 6, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2109', N'MK010', N'HS084', 7, 5, 8, 8, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2110', N'MK010', N'HS085', 9, 6, 8, 10, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2111', N'MK010', N'HS086', 9, 9, 8, 6, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2112', N'MK010', N'HS087', 5, 6, 8, 10, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2113', N'MK010', N'HS088', 6, 6, 10, 6, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2114', N'MK010', N'HS089', 8, 5, 8, 7, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2115', N'MK010', N'HS090', 8, 5, 9, 9, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2116', N'MK010', N'HS091', 10, 8, 7, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2117', N'MK010', N'HS092', 7, 9, 9, 10, 7, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2118', N'MK010', N'HS093', 7, 6, 9, 10, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2119', N'MK010', N'HS094', 8, 10, 10, 7, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2120', N'MK010', N'HS095', 8, 5, 7, 9, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2121', N'MK010', N'HS096', 7, 5, 6, 8, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2122', N'MK010', N'HS097', 8, 8, 8, 8, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2123', N'MK010', N'HS098', 6, 7, 8, 8, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2124', N'MK010', N'HS099', 10, 5, 10, 9, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2125', N'MK010', N'HS100', 10, 5, 6, 5, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2126', N'MK010', N'HS101', 6, 6, 8, 9, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2127', N'MK010', N'HS102', 8, 7, 9, 10, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2128', N'MK010', N'HS103', 5, 9, 6, 8, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2129', N'MK010', N'HS104', 10, 9, 10, 7, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2130', N'MK010', N'HS105', 10, 5, 6, 6, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2131', N'MK010', N'HS106', 10, 6, 5, 7, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2132', N'MK010', N'HS107', 9, 6, 10, 7, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2133', N'MK010', N'HS108', 10, 6, 8, 6, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2134', N'MK010', N'HS109', 10, 6, 6, 8, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2135', N'MK010', N'HS110', 10, 8, 6, 10, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2136', N'MK010', N'HS111', 5, 5, 6, 6, 7, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2137', N'MK010', N'HS112', 6, 6, 5, 8, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2138', N'MK010', N'HS113', 10, 9, 10, 6, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2139', N'MK010', N'HS114', 5, 8, 10, 7, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2140', N'MK010', N'HS115', 10, 8, 10, 10, 10, 9.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2141', N'MK010', N'HS116', 8, 6, 7, 6, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2142', N'MK010', N'HS117', 5, 9, 10, 6, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2143', N'MK010', N'HS118', 5, 8, 5, 10, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2144', N'MK010', N'HS119', 10, 5, 9, 5, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2146', N'MK010', N'HS121', 7, 9, 10, 8, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2147', N'MK010', N'HS122', 5, 5, 6, 10, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2148', N'MK010', N'HS123', 8, 9, 10, 7, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2149', N'MK010', N'HS124', 8, 7, 9, 10, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2150', N'MK010', N'HS125', 6, 7, 5, 8, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2151', N'MK010', N'HS126', 9, 5, 5, 8, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2152', N'MK010', N'HS127', 7, 10, 9, 8, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2153', N'MK010', N'HS128', 6, 10, 8, 7, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2154', N'MK010', N'HS129', 9, 10, 8, 9, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2155', N'MK010', N'HS130', 7, 8, 5, 8, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2156', N'MK010', N'HS131', 9, 7, 8, 5, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2157', N'MK010', N'HS132', 9, 6, 9, 5, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2158', N'MK010', N'HS133', 8, 6, 6, 10, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2159', N'MK010', N'HS134', 9, 9, 5, 7, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2160', N'MK010', N'HS135', 6, 5, 6, 6, 8, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2161', N'MK010', N'HS136', 5, 5, 8, 8, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2162', N'MK010', N'HS137', 7, 8, 6, 6, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2163', N'MK010', N'HS138', 9, 9, 8, 6, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2164', N'MK010', N'HS139', 5, 6, 6, 10, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2165', N'MK010', N'HS140', 10, 5, 5, 5, 6, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2166', N'MK010', N'HS141', 5, 8, 9, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2167', N'MK010', N'HS142', 10, 6, 9, 6, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2168', N'MK010', N'HS143', 10, 8, 9, 5, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2169', N'MK010', N'HS144', 10, 5, 5, 8, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2170', N'MK010', N'HS145', 9, 6, 9, 6, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2171', N'MK010', N'HS146', 10, 8, 5, 9, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2172', N'MK010', N'HS147', 5, 6, 9, 6, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2173', N'MK010', N'HS148', 6, 7, 7, 7, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2174', N'MK010', N'HS149', 7, 8, 8, 8, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2175', N'MK010', N'HS150', 5, 9, 10, 9, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2176', N'MK010', N'HS151', 5, 9, 6, 6, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2177', N'MK010', N'HS152', 5, 6, 7, 8, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2178', N'MK010', N'HS153', 9, 5, 9, 5, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2179', N'MK010', N'HS154', 7, 8, 7, 7, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2180', N'MK010', N'HS155', 7, 9, 9, 10, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2181', N'MK010', N'HS156', 10, 6, 7, 9, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2182', N'MK010', N'HS157', 7, 6, 8, 7, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2183', N'MK010', N'HS158', 7, 6, 8, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2184', N'MK010', N'HS159', 8, 9, 10, 9, 9, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2185', N'MK010', N'HS160', 9, 6, 10, 5, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2186', N'MK010', N'HS161', 8, 6, 8, 8, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2187', N'MK010', N'HS162', 10, 10, 10, 10, 6, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2188', N'MK010', N'HS163', 6, 6, 6, 6, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2189', N'MK010', N'HS164', 9, 9, 7, 8, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2190', N'MK010', N'HS165', 6, 6, 9, 6, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2191', N'MK010', N'HS166', 10, 5, 8, 7, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2192', N'MK010', N'HS167', 8, 5, 5, 10, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2193', N'MK010', N'HS168', 9, 6, 9, 8, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2194', N'MK010', N'HS169', 7, 6, 10, 9, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2195', N'MK010', N'HS170', 8, 7, 8, 6, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2196', N'MK010', N'HS171', 9, 10, 10, 5, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2197', N'MK010', N'HS172', 6, 9, 9, 5, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2198', N'MK010', N'HS173', 5, 6, 7, 10, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2199', N'MK010', N'HS174', 7, 6, 5, 9, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2200', N'MK010', N'HS175', 7, 7, 10, 9, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2201', N'MK010', N'HS176', 5, 6, 5, 8, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2202', N'MK010', N'HS177', 6, 10, 6, 9, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2203', N'MK010', N'HS178', 9, 7, 9, 10, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2204', N'MK010', N'HS179', 5, 8, 6, 8, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2205', N'MK010', N'HS180', 7, 6, 7, 7, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2206', N'MK010', N'HS181', 5, 5, 10, 10, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2207', N'MK010', N'HS182', 7, 9, 10, 8, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2208', N'MK010', N'HS183', 8, 10, 6, 10, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2209', N'MK010', N'HS184', 5, 10, 9, 7, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2210', N'MK010', N'HS185', 6, 10, 9, 7, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2211', N'MK010', N'HS186', 9, 10, 6, 9, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2212', N'MK010', N'HS187', 6, 9, 5, 9, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2213', N'MK010', N'HS188', 10, 7, 6, 8, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2214', N'MK010', N'HS189', 10, 6, 8, 5, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2215', N'MK010', N'HS190', 7, 5, 7, 5, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2216', N'MK010', N'HS191', 9, 8, 9, 9, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2217', N'MK010', N'HS192', 9, 9, 10, 5, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2218', N'MK010', N'HS193', 7, 10, 6, 5, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2219', N'MK010', N'HS194', 9, 6, 7, 6, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2220', N'MK010', N'HS195', 9, 10, 6, 9, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2221', N'MK010', N'HS196', 8, 5, 7, 5, 9, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2222', N'MK010', N'HS197', 8, 5, 6, 6, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2223', N'MK010', N'HS198', 7, 9, 10, 8, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2224', N'MK010', N'HS199', 6, 7, 7, 5, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2225', N'MK010', N'HS200', 9, 10, 8, 7, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2226', N'MK010', N'HS201', 5, 8, 9, 9, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D002', N'MK001', N'HS002', 10, 6, 9, 6, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D003', N'MK001', N'HS003', 7, 7, 5, 9, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D004', N'MK001', N'HS004', 10, 9, 10, 9, 8, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D005', N'MK001', N'HS005', 5, 8, 9, 8, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D006', N'MK001', N'HS006', 9, 6, 8, 9, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D007', N'MK001', N'HS007', 8, 9, 10, 6, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D008', N'MK001', N'HS008', 8, 9, 9, 7, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D009', N'MK001', N'HS009', 5, 5, 8, 8, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D010', N'MK001', N'HS010', 9, 9, 9, 10, 9, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D011', N'MK001', N'HS011', 8, 9, 6, 5, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D012', N'MK001', N'HS012', 5, 5, 7, 8, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D013', N'MK001', N'HS013', 5, 9, 5, 7, 10, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D014', N'MK001', N'HS014', 10, 9, 8, 10, 6, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D015', N'MK001', N'HS015', 8, 9, 10, 5, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D016', N'MK001', N'HS016', 7, 5, 6, 8, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D017', N'MK001', N'HS017', 8, 8, 8, 10, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D018', N'MK001', N'HS018', 5, 7, 5, 7, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D019', N'MK001', N'HS019', 8, 8, 5, 7, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D020', N'MK001', N'HS020', 7, 10, 5, 6, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D021', N'MK001', N'HS021', 9, 7, 7, 5, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D022', N'MK001', N'HS022', 7, 8, 5, 6, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D023', N'MK001', N'HS023', 10, 10, 6, 10, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D024', N'MK001', N'HS024', 10, 9, 6, 7, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D025', N'MK001', N'HS025', 9, 9, 8, 8, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D026', N'MK001', N'HS026', 8, 6, 6, 10, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D027', N'MK001', N'HS027', 10, 5, 9, 5, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D028', N'MK001', N'HS028', 5, 5, 6, 9, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D029', N'MK001', N'HS029', 9, 8, 10, 8, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D030', N'MK001', N'HS030', 9, 6, 5, 5, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D031', N'MK001', N'HS031', 7, 8, 5, 7, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D032', N'MK001', N'HS032', 6, 7, 5, 5, 5, 5.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D033', N'MK001', N'HS033', 5, 10, 10, 6, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D034', N'MK001', N'HS034', 10, 7, 5, 9, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D035', N'MK001', N'HS035', 10, 6, 9, 9, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D036', N'MK001', N'HS036', 6, 9, 10, 10, 7, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D037', N'MK001', N'HS037', 8, 6, 9, 10, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D038', N'MK001', N'HS038', 9, 5, 7, 5, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D039', N'MK001', N'HS039', 7, 8, 9, 5, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D040', N'MK001', N'HS040', 9, 6, 10, 10, 8, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D041', N'MK001', N'HS041', 6, 7, 5, 5, 10, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D042', N'MK001', N'HS042', 6, 7, 10, 7, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D043', N'MK001', N'HS043', 6, 9, 6, 8, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D044', N'MK001', N'HS044', 8, 9, 9, 8, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D045', N'MK001', N'HS045', 8, 8, 10, 8, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D046', N'MK001', N'HS046', 9, 6, 8, 10, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D047', N'MK001', N'HS047', 9, 10, 8, 5, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D048', N'MK001', N'HS048', 8, 9, 7, 8, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D049', N'MK001', N'HS049', 6, 6, 7, 5, 6, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D050', N'MK001', N'HS050', 7, 6, 9, 5, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D051', N'MK001', N'HS051', 9, 6, 6, 5, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D052', N'MK001', N'HS052', 8, 9, 5, 7, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D053', N'MK001', N'HS053', 5, 7, 5, 10, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D054', N'MK001', N'HS054', 10, 5, 8, 5, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D055', N'MK001', N'HS055', 5, 10, 9, 9, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D056', N'MK001', N'HS056', 6, 6, 6, 5, 6, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D057', N'MK001', N'HS057', 9, 8, 5, 9, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D058', N'MK001', N'HS058', 9, 7, 8, 5, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D059', N'MK001', N'HS059', 5, 7, 7, 6, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D060', N'MK001', N'HS060', 9, 8, 5, 6, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D061', N'MK001', N'HS061', 6, 8, 6, 5, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D062', N'MK001', N'HS062', 10, 5, 10, 6, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D063', N'MK001', N'HS063', 5, 9, 8, 5, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D064', N'MK001', N'HS064', 5, 5, 6, 7, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D065', N'MK001', N'HS065', 7, 9, 5, 9, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D066', N'MK001', N'HS066', 5, 8, 7, 10, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D067', N'MK001', N'HS067', 7, 9, 10, 9, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D068', N'MK001', N'HS068', 8, 9, 5, 5, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D069', N'MK001', N'HS069', 5, 10, 10, 5, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D070', N'MK001', N'HS070', 6, 6, 10, 7, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D071', N'MK001', N'HS071', 10, 5, 7, 10, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D072', N'MK001', N'HS072', 8, 5, 9, 10, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D073', N'MK001', N'HS073', 5, 7, 6, 5, 8, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D074', N'MK001', N'HS074', 6, 9, 9, 10, 9, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D075', N'MK001', N'HS075', 9, 8, 6, 7, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D076', N'MK001', N'HS076', 9, 7, 6, 5, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D077', N'MK001', N'HS077', 5, 8, 9, 6, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D078', N'MK001', N'HS078', 9, 10, 10, 5, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D079', N'MK001', N'HS079', 8, 5, 8, 5, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D080', N'MK001', N'HS080', 8, 5, 9, 10, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D081', N'MK001', N'HS081', 5, 10, 8, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D082', N'MK001', N'HS082', 10, 7, 9, 7, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D083', N'MK001', N'HS083', 9, 8, 10, 7, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2228', N'MK010', N'HS203', 8, 9, 7, 10, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2229', N'MK010', N'HS204', 9, 5, 10, 9, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2230', N'MK010', N'HS205', 10, 6, 8, 10, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2231', N'MK010', N'HS206', 7, 6, 9, 10, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2232', N'MK010', N'HS207', 6, 5, 6, 7, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2233', N'MK010', N'HS208', 10, 8, 9, 6, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2234', N'MK010', N'HS209', 6, 8, 6, 6, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2235', N'MK010', N'HS210', 9, 8, 10, 8, 9, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2236', N'MK010', N'HS211', 10, 6, 8, 8, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2237', N'MK010', N'HS212', 8, 7, 6, 8, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2238', N'MK010', N'HS213', 8, 10, 6, 6, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2239', N'MK010', N'HS214', 10, 9, 7, 8, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2240', N'MK010', N'HS215', 10, 9, 10, 5, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2241', N'MK010', N'HS216', 7, 7, 10, 7, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2242', N'MK010', N'HS217', 10, 10, 8, 10, 6, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2243', N'MK010', N'HS218', 6, 6, 6, 10, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2244', N'MK010', N'HS219', 7, 8, 7, 9, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2245', N'MK010', N'HS220', 10, 7, 5, 9, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2246', N'MK010', N'HS221', 8, 10, 9, 7, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2247', N'MK010', N'HS222', 5, 9, 6, 8, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2248', N'MK010', N'HS223', 7, 5, 8, 7, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2249', N'MK010', N'HS224', 5, 10, 8, 7, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2250', N'MK010', N'HS225', 5, 10, 6, 8, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2251', N'MK014', N'HS001', 7, 5, 5, 6, 8, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2252', N'MK014', N'HS002', 5, 5, 10, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2253', N'MK014', N'HS003', 9, 6, 9, 8, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2254', N'MK014', N'HS004', 10, 9, 8, 8, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2255', N'MK014', N'HS005', 8, 7, 7, 6, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2256', N'MK014', N'HS006', 7, 9, 8, 9, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2257', N'MK014', N'HS007', 8, 9, 5, 5, 5, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2258', N'MK014', N'HS008', 10, 7, 7, 5, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2259', N'MK014', N'HS009', 5, 7, 10, 10, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2260', N'MK014', N'HS010', 8, 9, 9, 7, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2261', N'MK014', N'HS011', 8, 7, 6, 5, 5, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2262', N'MK014', N'HS012', 9, 7, 6, 5, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2263', N'MK014', N'HS013', 8, 6, 6, 10, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2264', N'MK014', N'HS014', 10, 9, 8, 9, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2265', N'MK014', N'HS015', 9, 5, 6, 7, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2266', N'MK014', N'HS016', 6, 10, 8, 9, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2267', N'MK014', N'HS017', 10, 10, 7, 10, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2268', N'MK014', N'HS018', 7, 9, 6, 9, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2269', N'MK014', N'HS019', 5, 6, 8, 8, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2270', N'MK014', N'HS020', 5, 6, 7, 7, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2271', N'MK014', N'HS021', 7, 8, 8, 5, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2272', N'MK014', N'HS022', 8, 8, 10, 7, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2273', N'MK014', N'HS023', 8, 8, 6, 7, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2274', N'MK014', N'HS024', 8, 5, 5, 5, 10, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2275', N'MK014', N'HS025', 5, 9, 8, 5, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2276', N'MK014', N'HS026', 8, 5, 8, 9, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2277', N'MK014', N'HS027', 5, 7, 8, 8, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2278', N'MK014', N'HS028', 8, 6, 6, 8, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2279', N'MK014', N'HS029', 7, 8, 8, 7, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2280', N'MK014', N'HS030', 9, 10, 6, 5, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2281', N'MK014', N'HS031', 5, 8, 9, 6, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2282', N'MK014', N'HS032', 6, 9, 5, 5, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2283', N'MK014', N'HS033', 5, 8, 8, 9, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2284', N'MK014', N'HS034', 6, 7, 10, 10, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2285', N'MK014', N'HS035', 6, 8, 7, 6, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2286', N'MK014', N'HS036', 5, 5, 5, 10, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2287', N'MK014', N'HS037', 5, 7, 5, 8, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2288', N'MK014', N'HS038', 7, 7, 10, 10, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2289', N'MK014', N'HS039', 10, 5, 9, 6, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2290', N'MK014', N'HS040', 7, 6, 10, 6, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2291', N'MK014', N'HS041', 5, 7, 8, 9, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2292', N'MK014', N'HS042', 10, 10, 7, 6, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2293', N'MK014', N'HS043', 9, 9, 6, 5, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2294', N'MK014', N'HS044', 9, 5, 5, 9, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2295', N'MK014', N'HS045', 9, 9, 6, 7, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2296', N'MK014', N'HS046', 8, 9, 9, 10, 5, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2297', N'MK014', N'HS047', 5, 9, 9, 5, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2298', N'MK014', N'HS048', 10, 8, 7, 9, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2299', N'MK014', N'HS049', 6, 5, 10, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2300', N'MK014', N'HS050', 5, 10, 7, 8, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2301', N'MK014', N'HS051', 6, 9, 10, 6, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2302', N'MK014', N'HS052', 9, 9, 6, 5, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2303', N'MK014', N'HS053', 10, 6, 9, 6, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2304', N'MK014', N'HS054', 5, 6, 10, 7, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2305', N'MK014', N'HS055', 5, 8, 7, 6, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2306', N'MK014', N'HS056', 10, 10, 7, 10, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2307', N'MK014', N'HS057', 6, 8, 8, 10, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D2308', N'MK014', N'HS058', 7, 8, 5, 8, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D085', N'MK001', N'HS085', 6, 7, 8, 5, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D086', N'MK001', N'HS086', 7, 8, 7, 8, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D087', N'MK001', N'HS087', 8, 7, 5, 7, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D088', N'MK001', N'HS088', 10, 6, 8, 10, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D089', N'MK001', N'HS089', 5, 10, 6, 8, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D090', N'MK001', N'HS090', 7, 10, 9, 7, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D091', N'MK001', N'HS091', 7, 8, 8, 6, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D092', N'MK001', N'HS092', 5, 10, 5, 6, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D093', N'MK001', N'HS093', 10, 7, 8, 9, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D094', N'MK001', N'HS094', 7, 5, 7, 5, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D095', N'MK001', N'HS095', 8, 8, 8, 8, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D096', N'MK001', N'HS096', 7, 10, 10, 8, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D097', N'MK001', N'HS097', 10, 8, 10, 6, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D098', N'MK001', N'HS098', 6, 9, 5, 5, 7, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D099', N'MK001', N'HS099', 9, 5, 10, 10, 7, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D100', N'MK001', N'HS100', 5, 10, 8, 10, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D101', N'MK001', N'HS101', 9, 7, 9, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D102', N'MK001', N'HS102', 6, 5, 9, 10, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D103', N'MK001', N'HS103', 8, 5, 7, 8, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D104', N'MK001', N'HS104', 9, 8, 9, 5, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D105', N'MK001', N'HS105', 6, 8, 9, 7, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D106', N'MK001', N'HS106', 9, 7, 7, 10, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D107', N'MK001', N'HS107', 7, 10, 5, 10, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D108', N'MK001', N'HS108', 8, 7, 8, 8, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D109', N'MK001', N'HS109', 5, 8, 6, 5, 7, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D110', N'MK001', N'HS110', 9, 10, 10, 10, 8, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D111', N'MK001', N'HS111', 8, 6, 5, 6, 6, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D112', N'MK001', N'HS112', 5, 6, 8, 6, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D113', N'MK001', N'HS113', 9, 7, 10, 5, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D114', N'MK001', N'HS114', 8, 9, 9, 5, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D115', N'MK001', N'HS115', 10, 8, 8, 5, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D116', N'MK001', N'HS116', 10, 9, 7, 6, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D117', N'MK001', N'HS117', 9, 5, 8, 7, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D118', N'MK001', N'HS118', 9, 8, 6, 5, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D119', N'MK001', N'HS119', 7, 5, 6, 8, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D120', N'MK001', N'HS120', 5, 7, 10, 10, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D121', N'MK001', N'HS121', 9, 8, 7, 7, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D122', N'MK001', N'HS122', 10, 10, 6, 7, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D123', N'MK001', N'HS123', 7, 7, 10, 10, 7, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D124', N'MK001', N'HS124', 10, 6, 6, 8, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D125', N'MK001', N'HS125', 8, 10, 9, 6, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D126', N'MK001', N'HS126', 7, 5, 5, 9, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D127', N'MK001', N'HS127', 9, 6, 9, 5, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D128', N'MK001', N'HS128', 10, 9, 5, 9, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D129', N'MK001', N'HS129', 5, 5, 7, 8, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D130', N'MK001', N'HS130', 7, 7, 10, 5, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D131', N'MK001', N'HS131', 8, 9, 8, 10, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D132', N'MK001', N'HS132', 7, 5, 6, 9, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D133', N'MK001', N'HS133', 9, 5, 8, 7, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D134', N'MK001', N'HS134', 5, 6, 8, 8, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D135', N'MK001', N'HS135', 8, 5, 7, 10, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D136', N'MK001', N'HS136', 10, 6, 8, 9, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D137', N'MK001', N'HS137', 6, 5, 9, 6, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D138', N'MK001', N'HS138', 9, 8, 6, 7, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D139', N'MK001', N'HS139', 6, 10, 8, 8, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D140', N'MK001', N'HS140', 10, 8, 7, 10, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D141', N'MK001', N'HS141', 8, 6, 8, 9, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D142', N'MK001', N'HS142', 6, 9, 8, 6, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D143', N'MK001', N'HS143', 8, 10, 6, 9, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D144', N'MK001', N'HS144', 9, 6, 8, 7, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D145', N'MK001', N'HS145', 6, 7, 7, 6, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D146', N'MK001', N'HS146', 10, 9, 10, 10, 9, 9.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D147', N'MK001', N'HS147', 5, 5, 5, 6, 10, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D148', N'MK001', N'HS148', 10, 10, 6, 5, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D149', N'MK001', N'HS149', 5, 6, 8, 8, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D150', N'MK001', N'HS150', 6, 5, 10, 6, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D151', N'MK001', N'HS151', 8, 9, 6, 6, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D152', N'MK001', N'HS152', 10, 10, 10, 10, 9, 9.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D153', N'MK001', N'HS153', 5, 5, 8, 5, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D154', N'MK001', N'HS154', 5, 10, 8, 8, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D155', N'MK001', N'HS155', 6, 9, 7, 6, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D156', N'MK001', N'HS156', 6, 7, 9, 10, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D157', N'MK001', N'HS157', 7, 9, 7, 9, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D158', N'MK001', N'HS158', 9, 5, 9, 9, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D159', N'MK001', N'HS159', 8, 7, 5, 5, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D160', N'MK001', N'HS160', 7, 10, 8, 5, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D161', N'MK001', N'HS161', 6, 9, 8, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D162', N'MK001', N'HS162', 9, 10, 6, 10, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D163', N'MK001', N'HS163', 9, 6, 5, 10, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D164', N'MK001', N'HS164', 7, 9, 5, 6, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D165', N'MK001', N'HS165', 5, 5, 10, 8, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D166', N'MK001', N'HS166', 8, 9, 7, 6, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D168', N'MK001', N'HS168', 10, 7, 6, 8, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D169', N'MK001', N'HS169', 6, 8, 9, 9, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D170', N'MK001', N'HS170', 9, 5, 5, 10, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D171', N'MK001', N'HS171', 10, 9, 7, 5, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D172', N'MK001', N'HS172', 9, 8, 8, 8, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D173', N'MK001', N'HS173', 7, 9, 5, 8, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D174', N'MK001', N'HS174', 8, 8, 9, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D175', N'MK001', N'HS175', 8, 7, 7, 5, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D176', N'MK001', N'HS176', 9, 6, 10, 8, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D177', N'MK001', N'HS177', 9, 9, 10, 9, 7, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D178', N'MK001', N'HS178', 7, 8, 6, 10, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D179', N'MK001', N'HS179', 7, 8, 7, 6, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D180', N'MK001', N'HS180', 10, 7, 9, 9, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D181', N'MK001', N'HS181', 5, 8, 5, 10, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D182', N'MK001', N'HS182', 8, 5, 7, 9, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D183', N'MK001', N'HS183', 6, 6, 7, 7, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D184', N'MK001', N'HS184', 6, 7, 7, 7, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D185', N'MK001', N'HS185', 5, 6, 5, 6, 8, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D186', N'MK001', N'HS186', 7, 7, 9, 6, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D187', N'MK001', N'HS187', 9, 6, 8, 6, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D188', N'MK001', N'HS188', 10, 9, 5, 5, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D189', N'MK001', N'HS189', 6, 5, 9, 7, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D190', N'MK001', N'HS190', 10, 7, 5, 5, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D191', N'MK001', N'HS191', 6, 9, 7, 9, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D192', N'MK001', N'HS192', 10, 7, 7, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D193', N'MK001', N'HS193', 10, 6, 9, 5, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D194', N'MK001', N'HS194', 9, 9, 10, 8, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D195', N'MK001', N'HS195', 7, 7, 8, 10, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D196', N'MK001', N'HS196', 6, 10, 6, 10, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D197', N'MK001', N'HS197', 9, 5, 10, 9, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D198', N'MK001', N'HS198', 5, 9, 9, 8, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D199', N'MK001', N'HS199', 10, 9, 6, 7, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D200', N'MK001', N'HS200', 8, 6, 7, 9, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D201', N'MK001', N'HS201', 9, 7, 7, 5, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D202', N'MK001', N'HS202', 5, 10, 8, 5, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D203', N'MK001', N'HS203', 5, 8, 8, 5, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D204', N'MK001', N'HS204', 7, 10, 7, 6, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D205', N'MK001', N'HS205', 8, 10, 9, 6, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D206', N'MK001', N'HS206', 8, 7, 8, 10, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D207', N'MK001', N'HS207', 7, 8, 10, 6, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D208', N'MK001', N'HS208', 9, 5, 7, 10, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D209', N'MK001', N'HS209', 7, 6, 10, 10, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D210', N'MK001', N'HS210', 6, 8, 8, 6, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D211', N'MK001', N'HS211', 10, 6, 6, 10, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D212', N'MK001', N'HS212', 8, 7, 8, 8, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D213', N'MK001', N'HS213', 7, 9, 7, 6, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D214', N'MK001', N'HS214', 8, 9, 10, 9, 8, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D215', N'MK001', N'HS215', 5, 6, 9, 5, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D216', N'MK001', N'HS216', 10, 10, 6, 8, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D217', N'MK001', N'HS217', 8, 7, 9, 5, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D218', N'MK001', N'HS218', 7, 5, 5, 7, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D219', N'MK001', N'HS219', 9, 9, 10, 8, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D220', N'MK001', N'HS220', 7, 6, 5, 10, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D221', N'MK001', N'HS221', 9, 8, 7, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D222', N'MK001', N'HS222', 7, 7, 10, 9, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D223', N'MK001', N'HS223', 7, 8, 8, 10, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D224', N'MK001', N'HS224', 8, 10, 5, 5, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D225', N'MK001', N'HS225', 7, 7, 10, 9, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D226', N'MK002', N'HS001', 10, 10, 6, 10, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D227', N'MK002', N'HS002', 10, 8, 7, 7, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D228', N'MK002', N'HS003', 9, 8, 6, 9, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D229', N'MK002', N'HS004', 7, 5, 8, 9, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D230', N'MK002', N'HS005', 7, 5, 10, 8, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D231', N'MK002', N'HS006', 9, 8, 10, 8, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D232', N'MK002', N'HS007', 5, 8, 5, 5, 8, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D233', N'MK002', N'HS008', 9, 5, 10, 9, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D234', N'MK002', N'HS009', 9, 6, 5, 7, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D235', N'MK002', N'HS010', 8, 10, 6, 7, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D236', N'MK002', N'HS011', 10, 8, 10, 10, 7, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D237', N'MK002', N'HS012', 7, 5, 5, 9, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D238', N'MK002', N'HS013', 6, 7, 6, 6, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D239', N'MK002', N'HS014', 9, 8, 10, 10, 9, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D240', N'MK002', N'HS015', 10, 5, 10, 6, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D241', N'MK002', N'HS016', 5, 7, 10, 7, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D242', N'MK002', N'HS017', 9, 7, 10, 8, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D243', N'MK002', N'HS018', 8, 5, 8, 9, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D244', N'MK002', N'HS019', 10, 10, 6, 5, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D245', N'MK002', N'HS020', 5, 6, 8, 6, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D246', N'MK002', N'HS021', 7, 5, 9, 6, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D247', N'MK002', N'HS022', 9, 9, 8, 9, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D248', N'MK002', N'HS023', 7, 6, 7, 7, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D249', N'MK002', N'HS024', 10, 9, 10, 10, 5, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D251', N'MK002', N'HS026', 8, 8, 10, 9, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D252', N'MK002', N'HS027', 6, 10, 10, 6, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D253', N'MK002', N'HS028', 7, 9, 5, 6, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D254', N'MK002', N'HS029', 10, 5, 10, 10, 6, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D255', N'MK002', N'HS030', 5, 7, 10, 10, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D256', N'MK002', N'HS031', 6, 7, 10, 7, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D257', N'MK002', N'HS032', 10, 5, 6, 8, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D258', N'MK002', N'HS033', 5, 5, 7, 7, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D259', N'MK002', N'HS034', 7, 9, 5, 8, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D260', N'MK002', N'HS035', 10, 10, 10, 6, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D261', N'MK002', N'HS036', 7, 7, 8, 9, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D262', N'MK002', N'HS037', 7, 8, 10, 8, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D263', N'MK002', N'HS038', 5, 7, 9, 10, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D264', N'MK002', N'HS039', 9, 5, 7, 10, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D265', N'MK002', N'HS040', 10, 9, 6, 7, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D266', N'MK002', N'HS041', 6, 5, 10, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D267', N'MK002', N'HS042', 8, 6, 5, 8, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D268', N'MK002', N'HS043', 5, 10, 10, 10, 5, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D269', N'MK002', N'HS044', 10, 8, 5, 10, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D270', N'MK002', N'HS045', 10, 6, 8, 9, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D271', N'MK002', N'HS046', 6, 6, 9, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D272', N'MK002', N'HS047', 8, 7, 6, 5, 5, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D273', N'MK002', N'HS048', 10, 8, 10, 7, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D274', N'MK002', N'HS049', 7, 7, 6, 5, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D275', N'MK002', N'HS050', 8, 5, 8, 10, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D276', N'MK002', N'HS051', 6, 8, 5, 10, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D277', N'MK002', N'HS052', 6, 6, 10, 10, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D278', N'MK002', N'HS053', 7, 7, 9, 10, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D279', N'MK002', N'HS054', 9, 9, 8, 8, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D280', N'MK002', N'HS055', 10, 10, 5, 7, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D281', N'MK002', N'HS056', 7, 7, 7, 10, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D282', N'MK002', N'HS057', 6, 5, 9, 8, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D283', N'MK002', N'HS058', 8, 9, 7, 7, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D284', N'MK002', N'HS059', 7, 9, 7, 5, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D285', N'MK002', N'HS060', 5, 5, 5, 7, 7, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D286', N'MK002', N'HS061', 8, 7, 8, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D287', N'MK002', N'HS062', 7, 10, 6, 7, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D288', N'MK002', N'HS063', 9, 6, 6, 7, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D289', N'MK002', N'HS064', 7, 6, 5, 9, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D290', N'MK002', N'HS065', 9, 5, 6, 9, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D291', N'MK002', N'HS066', 9, 7, 5, 10, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D292', N'MK002', N'HS067', 5, 6, 7, 9, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D293', N'MK002', N'HS068', 7, 9, 5, 5, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D294', N'MK002', N'HS069', 5, 7, 7, 9, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D295', N'MK002', N'HS070', 9, 5, 8, 10, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D296', N'MK002', N'HS071', 5, 9, 10, 8, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D297', N'MK002', N'HS072', 7, 7, 8, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D298', N'MK002', N'HS073', 7, 6, 9, 6, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D299', N'MK002', N'HS074', 7, 6, 7, 7, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D300', N'MK002', N'HS075', 9, 9, 10, 6, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D301', N'MK002', N'HS076', 9, 10, 10, 8, 5, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D302', N'MK002', N'HS077', 7, 6, 8, 8, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D303', N'MK002', N'HS078', 10, 10, 6, 5, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D304', N'MK002', N'HS079', 5, 8, 5, 8, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D305', N'MK002', N'HS080', 5, 5, 7, 5, 8, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D306', N'MK002', N'HS081', 8, 10, 6, 8, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D307', N'MK002', N'HS082', 6, 8, 5, 6, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D308', N'MK002', N'HS083', 9, 8, 6, 6, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D309', N'MK002', N'HS084', 6, 9, 8, 10, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D310', N'MK002', N'HS085', 5, 5, 9, 9, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D311', N'MK002', N'HS086', 7, 7, 8, 9, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D312', N'MK002', N'HS087', 7, 10, 8, 7, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D313', N'MK002', N'HS088', 8, 8, 9, 9, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D314', N'MK002', N'HS089', 6, 10, 5, 9, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D315', N'MK002', N'HS090', 10, 10, 6, 9, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D316', N'MK002', N'HS091', 10, 8, 9, 9, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D317', N'MK002', N'HS092', 6, 8, 9, 8, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D318', N'MK002', N'HS093', 10, 5, 8, 10, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D319', N'MK002', N'HS094', 10, 8, 8, 5, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D320', N'MK002', N'HS095', 8, 10, 9, 5, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D321', N'MK002', N'HS096', 10, 8, 10, 8, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D322', N'MK002', N'HS097', 8, 5, 5, 9, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D323', N'MK002', N'HS098', 5, 10, 6, 9, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D324', N'MK002', N'HS099', 10, 6, 7, 8, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D325', N'MK002', N'HS100', 7, 6, 9, 8, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D326', N'MK002', N'HS101', 9, 6, 9, 5, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D327', N'MK002', N'HS102', 7, 8, 6, 7, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D328', N'MK002', N'HS103', 6, 7, 10, 9, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D329', N'MK002', N'HS104', 7, 7, 10, 5, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D330', N'MK002', N'HS105', 7, 7, 8, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D331', N'MK002', N'HS106', 8, 10, 8, 7, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D332', N'MK002', N'HS107', 8, 5, 8, 7, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D334', N'MK002', N'HS109', 9, 8, 7, 6, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D335', N'MK002', N'HS110', 6, 6, 8, 9, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D336', N'MK002', N'HS111', 7, 6, 7, 6, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D337', N'MK002', N'HS112', 5, 9, 10, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D338', N'MK002', N'HS113', 5, 9, 5, 6, 7, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D339', N'MK002', N'HS114', 5, 6, 5, 6, 10, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D340', N'MK002', N'HS115', 7, 7, 9, 6, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D341', N'MK002', N'HS116', 10, 5, 9, 9, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D342', N'MK002', N'HS117', 7, 6, 6, 5, 5, 5.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D343', N'MK002', N'HS118', 5, 5, 6, 9, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D344', N'MK002', N'HS119', 6, 6, 6, 8, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D345', N'MK002', N'HS120', 10, 9, 8, 9, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D346', N'MK002', N'HS121', 9, 5, 8, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D347', N'MK002', N'HS122', 8, 8, 5, 5, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D348', N'MK002', N'HS123', 7, 5, 5, 8, 10, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D349', N'MK002', N'HS124', 9, 7, 5, 10, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D350', N'MK002', N'HS125', 6, 7, 10, 9, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D351', N'MK002', N'HS126', 5, 7, 6, 5, 10, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D352', N'MK002', N'HS127', 5, 7, 10, 10, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D353', N'MK002', N'HS128', 7, 9, 7, 10, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D354', N'MK002', N'HS129', 6, 6, 9, 10, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D355', N'MK002', N'HS130', 7, 8, 7, 8, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D356', N'MK002', N'HS131', 6, 9, 10, 6, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D357', N'MK002', N'HS132', 8, 5, 7, 6, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D358', N'MK002', N'HS133', 8, 8, 6, 8, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D359', N'MK002', N'HS134', 7, 7, 10, 7, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D360', N'MK002', N'HS135', 7, 6, 6, 6, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D361', N'MK002', N'HS136', 6, 6, 9, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D362', N'MK002', N'HS137', 8, 5, 9, 7, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D363', N'MK002', N'HS138', 6, 5, 8, 6, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D364', N'MK002', N'HS139', 8, 5, 10, 7, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D365', N'MK002', N'HS140', 8, 5, 5, 6, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D366', N'MK002', N'HS141', 6, 10, 9, 9, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D367', N'MK002', N'HS142', 10, 8, 9, 7, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D368', N'MK002', N'HS143', 10, 9, 8, 8, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D369', N'MK002', N'HS144', 10, 8, 10, 9, 7, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D370', N'MK002', N'HS145', 8, 6, 9, 10, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D371', N'MK002', N'HS146', 8, 7, 7, 7, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D372', N'MK002', N'HS147', 9, 9, 9, 8, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D373', N'MK002', N'HS148', 10, 7, 9, 6, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D374', N'MK002', N'HS149', 5, 9, 5, 9, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D375', N'MK002', N'HS150', 5, 10, 8, 8, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D376', N'MK002', N'HS151', 6, 8, 8, 10, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D377', N'MK002', N'HS152', 10, 5, 5, 5, 9, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D378', N'MK002', N'HS153', 8, 6, 7, 6, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D379', N'MK002', N'HS154', 7, 6, 5, 6, 5, 5.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D380', N'MK002', N'HS155', 5, 9, 5, 5, 5, 5.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D381', N'MK002', N'HS156', 8, 6, 9, 9, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D382', N'MK002', N'HS157', 6, 10, 9, 10, 6, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D383', N'MK002', N'HS158', 7, 8, 9, 9, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D384', N'MK002', N'HS159', 6, 5, 7, 10, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D385', N'MK002', N'HS160', 8, 10, 5, 9, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D386', N'MK002', N'HS161', 10, 7, 6, 7, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D387', N'MK002', N'HS162', 8, 6, 9, 5, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D388', N'MK002', N'HS163', 10, 9, 9, 10, 8, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D389', N'MK002', N'HS164', 8, 5, 8, 9, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D390', N'MK002', N'HS165', 7, 6, 8, 7, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D391', N'MK002', N'HS166', 8, 10, 6, 6, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D392', N'MK002', N'HS167', 7, 9, 8, 6, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D393', N'MK002', N'HS168', 9, 7, 10, 9, 6, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D394', N'MK002', N'HS169', 10, 9, 10, 7, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D395', N'MK002', N'HS170', 7, 5, 6, 6, 7, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D396', N'MK002', N'HS171', 5, 6, 6, 6, 7, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D397', N'MK002', N'HS172', 8, 10, 5, 7, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D398', N'MK002', N'HS173', 8, 9, 10, 7, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D399', N'MK002', N'HS174', 5, 6, 5, 5, 6, 5.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D400', N'MK002', N'HS175', 7, 7, 9, 9, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D401', N'MK002', N'HS176', 7, 10, 6, 7, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D402', N'MK002', N'HS177', 5, 5, 7, 10, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D403', N'MK002', N'HS178', 5, 7, 10, 8, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D404', N'MK002', N'HS179', 10, 5, 9, 5, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D405', N'MK002', N'HS180', 9, 9, 9, 5, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D406', N'MK002', N'HS181', 8, 7, 6, 8, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D407', N'MK002', N'HS182', 6, 6, 5, 8, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D408', N'MK002', N'HS183', 6, 7, 5, 7, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D409', N'MK002', N'HS184', 8, 7, 9, 6, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D410', N'MK002', N'HS185', 8, 6, 9, 7, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D411', N'MK002', N'HS186', 5, 8, 5, 9, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D412', N'MK002', N'HS187', 6, 7, 5, 6, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D413', N'MK002', N'HS188', 6, 9, 5, 10, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D414', N'MK002', N'HS189', 9, 9, 10, 6, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D415', N'MK002', N'HS190', 8, 9, 6, 5, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D417', N'MK002', N'HS192', 6, 8, 6, 10, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D418', N'MK002', N'HS193', 10, 9, 7, 9, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D419', N'MK002', N'HS194', 5, 7, 6, 7, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D420', N'MK002', N'HS195', 10, 6, 5, 8, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D421', N'MK002', N'HS196', 9, 5, 9, 7, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D422', N'MK002', N'HS197', 8, 7, 8, 5, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D423', N'MK002', N'HS198', 10, 6, 5, 5, 7, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D424', N'MK002', N'HS199', 10, 5, 8, 8, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D425', N'MK002', N'HS200', 5, 8, 6, 6, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D426', N'MK002', N'HS201', 7, 10, 9, 5, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D427', N'MK002', N'HS202', 8, 9, 5, 7, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D428', N'MK002', N'HS203', 5, 5, 6, 9, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D429', N'MK002', N'HS204', 10, 9, 10, 10, 9, 9.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D430', N'MK002', N'HS205', 9, 7, 6, 6, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D431', N'MK002', N'HS206', 6, 5, 9, 5, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D432', N'MK002', N'HS207', 10, 6, 9, 6, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D433', N'MK002', N'HS208', 7, 6, 6, 6, 9, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D434', N'MK002', N'HS209', 7, 7, 9, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D435', N'MK002', N'HS210', 7, 6, 10, 7, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D436', N'MK002', N'HS211', 8, 9, 6, 10, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D437', N'MK002', N'HS212', 8, 9, 8, 6, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D438', N'MK002', N'HS213', 10, 6, 9, 5, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D439', N'MK002', N'HS214', 8, 8, 8, 7, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D440', N'MK002', N'HS215', 8, 8, 7, 9, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D441', N'MK002', N'HS216', 7, 8, 5, 7, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D442', N'MK002', N'HS217', 9, 6, 7, 5, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D443', N'MK002', N'HS218', 10, 9, 8, 5, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D444', N'MK002', N'HS219', 6, 8, 8, 9, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D445', N'MK002', N'HS220', 9, 10, 9, 7, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D446', N'MK002', N'HS221', 5, 10, 5, 7, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D447', N'MK002', N'HS222', 6, 7, 5, 6, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D448', N'MK002', N'HS223', 9, 10, 8, 6, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D449', N'MK002', N'HS224', 6, 9, 8, 5, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D450', N'MK002', N'HS225', 8, 6, 6, 5, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D451', N'MK003', N'HS001', 5, 8, 9, 10, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D452', N'MK003', N'HS002', 6, 10, 6, 10, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D453', N'MK003', N'HS003', 9, 8, 9, 9, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D454', N'MK003', N'HS004', 9, 8, 7, 10, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D455', N'MK003', N'HS005', 9, 9, 5, 10, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D456', N'MK003', N'HS006', 6, 7, 10, 10, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D457', N'MK003', N'HS007', 10, 6, 5, 10, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D458', N'MK003', N'HS008', 10, 8, 6, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D459', N'MK003', N'HS009', 8, 8, 8, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D460', N'MK003', N'HS010', 5, 7, 7, 8, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D461', N'MK003', N'HS011', 8, 10, 7, 10, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D462', N'MK003', N'HS012', 5, 10, 8, 5, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D463', N'MK003', N'HS013', 8, 9, 8, 9, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D464', N'MK003', N'HS014', 8, 5, 6, 9, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D465', N'MK003', N'HS015', 10, 10, 10, 5, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D466', N'MK003', N'HS016', 10, 5, 10, 10, 9, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D467', N'MK003', N'HS017', 8, 7, 5, 6, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D468', N'MK003', N'HS018', 6, 9, 6, 10, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D469', N'MK003', N'HS019', 9, 6, 10, 10, 7, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D470', N'MK003', N'HS020', 7, 9, 7, 9, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D471', N'MK003', N'HS021', 9, 9, 9, 9, 7, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D472', N'MK003', N'HS022', 6, 10, 7, 10, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D473', N'MK003', N'HS023', 5, 10, 9, 7, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D474', N'MK003', N'HS024', 6, 5, 7, 5, 5, 5.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D475', N'MK003', N'HS025', 6, 9, 10, 10, 7, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D476', N'MK003', N'HS026', 9, 7, 8, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D477', N'MK003', N'HS027', 8, 7, 6, 8, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D478', N'MK003', N'HS028', 7, 8, 5, 10, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D479', N'MK003', N'HS029', 7, 6, 5, 9, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D480', N'MK003', N'HS030', 5, 8, 8, 5, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D481', N'MK003', N'HS031', 10, 7, 10, 9, 6, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D482', N'MK003', N'HS032', 8, 7, 7, 9, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D483', N'MK003', N'HS033', 10, 10, 6, 6, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D484', N'MK003', N'HS034', 9, 5, 5, 10, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D485', N'MK003', N'HS035', 8, 9, 6, 10, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D486', N'MK003', N'HS036', 10, 10, 8, 10, 8, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D487', N'MK003', N'HS037', 10, 8, 8, 10, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D488', N'MK003', N'HS038', 6, 6, 5, 7, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D489', N'MK003', N'HS039', 7, 9, 9, 8, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D490', N'MK003', N'HS040', 6, 8, 7, 8, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D491', N'MK003', N'HS041', 9, 6, 6, 7, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D492', N'MK003', N'HS042', 6, 6, 6, 5, 7, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D493', N'MK003', N'HS043', 8, 5, 9, 5, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D494', N'MK003', N'HS044', 6, 6, 8, 10, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D495', N'MK003', N'HS045', 7, 8, 6, 7, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D496', N'MK003', N'HS046', 10, 7, 10, 5, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D497', N'MK003', N'HS047', 6, 9, 9, 8, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D498', N'MK003', N'HS048', 6, 9, 9, 8, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D500', N'MK003', N'HS050', 7, 5, 10, 10, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D501', N'MK003', N'HS051', 8, 9, 7, 9, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D502', N'MK003', N'HS052', 10, 6, 9, 10, 7, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D503', N'MK003', N'HS053', 6, 10, 9, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D504', N'MK003', N'HS054', 5, 6, 8, 5, 9, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D505', N'MK003', N'HS055', 5, 7, 10, 6, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D506', N'MK003', N'HS056', 5, 9, 9, 7, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D507', N'MK003', N'HS057', 8, 6, 7, 7, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D508', N'MK003', N'HS058', 6, 8, 8, 5, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D509', N'MK003', N'HS059', 10, 8, 5, 7, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D510', N'MK003', N'HS060', 9, 9, 7, 7, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D511', N'MK003', N'HS061', 10, 10, 5, 5, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D512', N'MK003', N'HS062', 10, 8, 9, 6, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D513', N'MK003', N'HS063', 6, 9, 5, 9, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D514', N'MK003', N'HS064', 9, 6, 9, 10, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D515', N'MK003', N'HS065', 6, 7, 9, 5, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D516', N'MK003', N'HS066', 9, 5, 9, 6, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D517', N'MK003', N'HS067', 9, 8, 10, 5, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D518', N'MK003', N'HS068', 7, 9, 6, 8, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D519', N'MK003', N'HS069', 10, 10, 9, 6, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D520', N'MK003', N'HS070', 7, 9, 10, 10, 9, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D521', N'MK003', N'HS071', 5, 10, 5, 9, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D522', N'MK003', N'HS072', 8, 5, 5, 9, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D523', N'MK003', N'HS073', 7, 8, 5, 9, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D524', N'MK003', N'HS074', 8, 6, 8, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D525', N'MK003', N'HS075', 5, 9, 6, 8, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D526', N'MK003', N'HS076', 5, 10, 9, 10, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D527', N'MK003', N'HS077', 10, 7, 7, 8, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D528', N'MK003', N'HS078', 5, 6, 10, 7, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D529', N'MK003', N'HS079', 7, 7, 6, 6, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D530', N'MK003', N'HS080', 5, 8, 8, 10, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D531', N'MK003', N'HS081', 9, 8, 8, 7, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D532', N'MK003', N'HS082', 6, 7, 5, 7, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D533', N'MK003', N'HS083', 8, 5, 8, 10, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D534', N'MK003', N'HS084', 9, 5, 7, 10, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D535', N'MK003', N'HS085', 8, 9, 5, 8, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D536', N'MK003', N'HS086', 6, 5, 5, 10, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D537', N'MK003', N'HS087', 7, 7, 10, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D538', N'MK003', N'HS088', 10, 7, 7, 8, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D539', N'MK003', N'HS089', 7, 6, 6, 10, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D540', N'MK003', N'HS090', 7, 7, 8, 9, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D541', N'MK003', N'HS091', 5, 5, 9, 7, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D542', N'MK003', N'HS092', 6, 10, 7, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D543', N'MK003', N'HS093', 6, 6, 5, 6, 8, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D544', N'MK003', N'HS094', 10, 9, 5, 7, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D545', N'MK003', N'HS095', 9, 8, 5, 7, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D546', N'MK003', N'HS096', 8, 6, 5, 7, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D547', N'MK003', N'HS097', 7, 8, 10, 6, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D548', N'MK003', N'HS098', 5, 5, 9, 8, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D549', N'MK003', N'HS099', 5, 6, 6, 9, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D550', N'MK003', N'HS100', 6, 8, 6, 8, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D551', N'MK003', N'HS101', 7, 8, 10, 8, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D552', N'MK003', N'HS102', 7, 10, 9, 8, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D553', N'MK003', N'HS103', 7, 8, 5, 5, 8, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D554', N'MK003', N'HS104', 8, 9, 5, 7, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D555', N'MK003', N'HS105', 10, 8, 8, 7, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D556', N'MK003', N'HS106', 7, 9, 6, 5, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D557', N'MK003', N'HS107', 8, 6, 5, 5, 5, 5.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D558', N'MK003', N'HS108', 5, 8, 8, 6, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D559', N'MK003', N'HS109', 8, 8, 10, 7, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D560', N'MK003', N'HS110', 6, 6, 6, 5, 8, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D561', N'MK003', N'HS111', 8, 8, 9, 8, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D562', N'MK003', N'HS112', 9, 6, 8, 5, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D563', N'MK003', N'HS113', 5, 6, 5, 9, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D564', N'MK003', N'HS114', 7, 5, 10, 6, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D565', N'MK003', N'HS115', 6, 6, 8, 10, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D566', N'MK003', N'HS116', 10, 9, 8, 10, 9, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D567', N'MK003', N'HS117', 7, 5, 5, 8, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D568', N'MK003', N'HS118', 5, 6, 5, 5, 6, 5.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D569', N'MK003', N'HS119', 7, 8, 5, 10, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D570', N'MK003', N'HS120', 5, 8, 10, 10, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D571', N'MK003', N'HS121', 8, 10, 7, 10, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D572', N'MK003', N'HS122', 7, 5, 8, 6, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D573', N'MK003', N'HS123', 8, 9, 7, 5, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D574', N'MK003', N'HS124', 5, 5, 10, 6, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D575', N'MK003', N'HS125', 9, 7, 6, 10, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D576', N'MK003', N'HS126', 10, 7, 6, 5, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D577', N'MK003', N'HS127', 6, 8, 5, 10, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D578', N'MK003', N'HS128', 9, 9, 6, 10, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D579', N'MK003', N'HS129', 7, 10, 5, 5, 9, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D580', N'MK003', N'HS130', 7, 6, 6, 7, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D581', N'MK003', N'HS131', 9, 9, 9, 6, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D583', N'MK003', N'HS133', 5, 10, 7, 5, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D584', N'MK003', N'HS134', 9, 6, 6, 5, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D585', N'MK003', N'HS135', 9, 7, 6, 6, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D586', N'MK003', N'HS136', 6, 5, 9, 9, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D587', N'MK003', N'HS137', 9, 10, 10, 5, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D588', N'MK003', N'HS138', 6, 5, 9, 6, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D589', N'MK003', N'HS139', 9, 5, 10, 9, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D590', N'MK003', N'HS140', 8, 8, 8, 5, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D591', N'MK003', N'HS141', 9, 6, 10, 7, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D592', N'MK003', N'HS142', 8, 8, 9, 10, 7, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D593', N'MK003', N'HS143', 7, 10, 7, 6, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D594', N'MK003', N'HS144', 9, 9, 7, 9, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D595', N'MK003', N'HS145', 6, 8, 8, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D596', N'MK003', N'HS146', 7, 5, 9, 9, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D597', N'MK003', N'HS147', 7, 8, 8, 6, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D598', N'MK003', N'HS148', 5, 10, 9, 10, 9, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D599', N'MK003', N'HS149', 7, 8, 6, 9, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D600', N'MK003', N'HS150', 8, 7, 6, 6, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D601', N'MK003', N'HS151', 7, 9, 7, 8, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D602', N'MK003', N'HS152', 8, 8, 10, 10, 10, 9.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D603', N'MK003', N'HS153', 8, 8, 7, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D604', N'MK003', N'HS154', 10, 7, 10, 8, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D605', N'MK003', N'HS155', 5, 8, 10, 8, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D606', N'MK003', N'HS156', 10, 8, 9, 7, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D607', N'MK003', N'HS157', 6, 6, 10, 9, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D608', N'MK003', N'HS158', 6, 7, 5, 7, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D609', N'MK003', N'HS159', 9, 5, 5, 8, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D610', N'MK003', N'HS160', 10, 5, 5, 5, 7, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D611', N'MK003', N'HS161', 8, 9, 10, 9, 9, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D612', N'MK003', N'HS162', 5, 8, 6, 10, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D613', N'MK003', N'HS163', 8, 10, 6, 5, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D614', N'MK003', N'HS164', 7, 5, 8, 9, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D615', N'MK003', N'HS165', 8, 5, 6, 9, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D616', N'MK003', N'HS166', 6, 10, 8, 5, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D617', N'MK003', N'HS167', 6, 5, 6, 8, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D618', N'MK003', N'HS168', 9, 6, 7, 10, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D619', N'MK003', N'HS169', 9, 10, 5, 8, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D620', N'MK003', N'HS170', 10, 6, 8, 10, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D621', N'MK003', N'HS171', 5, 8, 9, 7, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D622', N'MK003', N'HS172', 9, 10, 10, 10, 5, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D623', N'MK003', N'HS173', 5, 9, 10, 6, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D624', N'MK003', N'HS174', 7, 8, 7, 8, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D625', N'MK003', N'HS175', 9, 9, 6, 8, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D626', N'MK003', N'HS176', 7, 8, 7, 5, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D627', N'MK003', N'HS177', 8, 8, 9, 5, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D628', N'MK003', N'HS178', 7, 5, 6, 10, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D629', N'MK003', N'HS179', 10, 6, 9, 8, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D630', N'MK003', N'HS180', 5, 9, 6, 8, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D631', N'MK003', N'HS181', 9, 5, 9, 9, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D632', N'MK003', N'HS182', 9, 10, 8, 5, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D633', N'MK003', N'HS183', 6, 9, 10, 10, 7, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D634', N'MK003', N'HS184', 9, 6, 8, 8, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D635', N'MK003', N'HS185', 8, 5, 10, 7, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D636', N'MK003', N'HS186', 10, 8, 6, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D637', N'MK003', N'HS187', 10, 9, 8, 9, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D638', N'MK003', N'HS188', 8, 8, 7, 10, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D639', N'MK003', N'HS189', 9, 5, 9, 7, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D640', N'MK003', N'HS190', 8, 9, 5, 6, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D641', N'MK003', N'HS191', 9, 5, 7, 9, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D642', N'MK003', N'HS192', 5, 5, 5, 10, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D643', N'MK003', N'HS193', 6, 7, 7, 5, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D644', N'MK003', N'HS194', 10, 5, 6, 6, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D645', N'MK003', N'HS195', 8, 8, 7, 9, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D646', N'MK003', N'HS196', 9, 5, 6, 8, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D647', N'MK003', N'HS197', 10, 5, 5, 9, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D648', N'MK003', N'HS198', 8, 6, 10, 5, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D649', N'MK003', N'HS199', 5, 7, 5, 7, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D650', N'MK003', N'HS200', 8, 6, 7, 9, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D651', N'MK003', N'HS201', 10, 8, 6, 5, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D652', N'MK003', N'HS202', 10, 9, 7, 7, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D653', N'MK003', N'HS203', 10, 7, 7, 9, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D654', N'MK003', N'HS204', 9, 5, 7, 9, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D655', N'MK003', N'HS205', 6, 8, 10, 10, 7, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D656', N'MK003', N'HS206', 10, 9, 9, 9, 10, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D657', N'MK003', N'HS207', 6, 5, 10, 5, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D658', N'MK003', N'HS208', 8, 6, 7, 7, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D659', N'MK003', N'HS209', 7, 9, 6, 8, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D660', N'MK003', N'HS210', 5, 6, 9, 9, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D661', N'MK003', N'HS211', 8, 10, 7, 5, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D662', N'MK003', N'HS212', 7, 10, 9, 10, 10, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D663', N'MK003', N'HS213', 8, 8, 5, 9, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D664', N'MK003', N'HS214', 5, 10, 6, 8, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D666', N'MK003', N'HS216', 6, 5, 6, 6, 5, 5.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D667', N'MK003', N'HS217', 9, 7, 8, 6, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D668', N'MK003', N'HS218', 5, 5, 6, 5, 10, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D669', N'MK003', N'HS219', 8, 6, 8, 10, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D670', N'MK003', N'HS220', 5, 8, 5, 5, 8, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D671', N'MK003', N'HS221', 6, 5, 10, 10, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D672', N'MK003', N'HS222', 5, 9, 7, 7, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D673', N'MK003', N'HS223', 9, 9, 6, 10, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D674', N'MK003', N'HS224', 7, 10, 7, 7, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D675', N'MK003', N'HS225', 9, 10, 7, 5, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D676', N'MK004', N'HS001', 7, 10, 10, 6, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D677', N'MK004', N'HS002', 9, 10, 10, 6, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D678', N'MK004', N'HS003', 8, 5, 5, 6, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D679', N'MK004', N'HS004', 5, 7, 6, 8, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D680', N'MK004', N'HS005', 9, 5, 8, 6, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D681', N'MK004', N'HS006', 10, 7, 10, 7, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D682', N'MK004', N'HS007', 6, 7, 8, 7, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D683', N'MK004', N'HS008', 5, 9, 7, 10, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D684', N'MK004', N'HS009', 6, 10, 9, 9, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D685', N'MK004', N'HS010', 8, 5, 5, 8, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D686', N'MK004', N'HS011', 9, 5, 5, 7, 10, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D687', N'MK004', N'HS012', 8, 9, 10, 7, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D688', N'MK004', N'HS013', 9, 7, 7, 10, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D689', N'MK004', N'HS014', 10, 5, 7, 10, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D690', N'MK004', N'HS015', 10, 6, 8, 10, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D691', N'MK004', N'HS016', 5, 8, 8, 9, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D692', N'MK004', N'HS017', 9, 9, 7, 7, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D693', N'MK004', N'HS018', 9, 7, 7, 5, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D694', N'MK004', N'HS019', 5, 9, 5, 9, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D695', N'MK004', N'HS020', 10, 8, 8, 5, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D696', N'MK004', N'HS021', 7, 9, 6, 6, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D697', N'MK004', N'HS022', 6, 10, 10, 8, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D698', N'MK004', N'HS023', 9, 6, 8, 9, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D699', N'MK004', N'HS024', 10, 9, 9, 10, 10, 9.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D700', N'MK004', N'HS025', 10, 7, 8, 7, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D701', N'MK004', N'HS026', 5, 10, 9, 10, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D702', N'MK004', N'HS027', 8, 5, 9, 9, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D703', N'MK004', N'HS028', 10, 8, 8, 8, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D704', N'MK004', N'HS029', 10, 6, 8, 7, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D705', N'MK004', N'HS030', 8, 10, 10, 10, 7, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D706', N'MK004', N'HS031', 6, 6, 7, 6, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D707', N'MK004', N'HS032', 7, 8, 9, 5, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D708', N'MK004', N'HS033', 5, 7, 10, 9, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D709', N'MK004', N'HS034', 5, 9, 9, 10, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D710', N'MK004', N'HS035', 9, 10, 5, 10, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D711', N'MK004', N'HS036', 5, 10, 9, 5, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D712', N'MK004', N'HS037', 8, 8, 9, 6, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D713', N'MK004', N'HS038', 7, 8, 9, 5, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D714', N'MK004', N'HS039', 5, 5, 8, 8, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D715', N'MK004', N'HS040', 5, 8, 8, 7, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D716', N'MK004', N'HS041', 6, 8, 6, 8, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D717', N'MK004', N'HS042', 5, 7, 7, 8, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D718', N'MK004', N'HS043', 7, 6, 7, 6, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D719', N'MK004', N'HS044', 10, 9, 6, 5, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D720', N'MK004', N'HS045', 7, 8, 10, 9, 9, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D721', N'MK004', N'HS046', 8, 9, 7, 7, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D722', N'MK004', N'HS047', 6, 7, 5, 8, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D723', N'MK004', N'HS048', 9, 5, 6, 10, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D724', N'MK004', N'HS049', 10, 9, 6, 10, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D725', N'MK004', N'HS050', 9, 6, 9, 10, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D726', N'MK004', N'HS051', 5, 9, 8, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D727', N'MK004', N'HS052', 8, 8, 8, 6, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D728', N'MK004', N'HS053', 8, 10, 8, 6, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D729', N'MK004', N'HS054', 8, 5, 5, 9, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D730', N'MK004', N'HS055', 8, 8, 6, 8, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D731', N'MK004', N'HS056', 6, 6, 9, 8, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D732', N'MK004', N'HS057', 5, 7, 7, 5, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D733', N'MK004', N'HS058', 8, 7, 7, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D734', N'MK004', N'HS059', 10, 9, 6, 10, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D735', N'MK004', N'HS060', 6, 9, 5, 9, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D736', N'MK004', N'HS061', 10, 5, 7, 10, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D737', N'MK004', N'HS062', 10, 6, 10, 5, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D738', N'MK004', N'HS063', 9, 5, 7, 6, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D739', N'MK004', N'HS064', 9, 7, 6, 7, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D740', N'MK004', N'HS065', 5, 9, 7, 6, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D741', N'MK004', N'HS066', 6, 9, 5, 7, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D742', N'MK004', N'HS067', 6, 6, 10, 10, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D743', N'MK004', N'HS068', 5, 6, 5, 6, 5, 5.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D744', N'MK004', N'HS069', 8, 8, 10, 10, 9, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D745', N'MK004', N'HS070', 10, 6, 6, 7, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D746', N'MK004', N'HS071', 10, 10, 6, 8, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D747', N'MK004', N'HS072', 10, 5, 5, 8, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D749', N'MK004', N'HS074', 8, 5, 9, 9, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D750', N'MK004', N'HS075', 10, 6, 5, 6, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D751', N'MK004', N'HS076', 5, 5, 10, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D752', N'MK004', N'HS077', 6, 8, 5, 5, 5, 5.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D753', N'MK004', N'HS078', 10, 5, 7, 6, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D754', N'MK004', N'HS079', 7, 6, 7, 8, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D755', N'MK004', N'HS080', 8, 10, 8, 5, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D756', N'MK004', N'HS081', 6, 8, 7, 5, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D757', N'MK004', N'HS082', 6, 6, 8, 10, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D758', N'MK004', N'HS083', 8, 9, 10, 8, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D759', N'MK004', N'HS084', 8, 9, 8, 5, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D760', N'MK004', N'HS085', 8, 9, 6, 10, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D761', N'MK004', N'HS086', 5, 7, 7, 9, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D762', N'MK004', N'HS087', 9, 8, 6, 9, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D763', N'MK004', N'HS088', 5, 9, 6, 9, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D764', N'MK004', N'HS089', 7, 5, 6, 5, 9, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D765', N'MK004', N'HS090', 5, 6, 5, 5, 6, 5.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D766', N'MK004', N'HS091', 9, 8, 5, 10, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D767', N'MK004', N'HS092', 9, 10, 6, 10, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D768', N'MK004', N'HS093', 5, 7, 8, 8, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D769', N'MK004', N'HS094', 6, 6, 9, 9, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D770', N'MK004', N'HS095', 6, 8, 5, 7, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D771', N'MK004', N'HS096', 9, 8, 7, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D772', N'MK004', N'HS097', 5, 9, 9, 10, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D773', N'MK004', N'HS098', 7, 7, 5, 6, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D774', N'MK004', N'HS099', 7, 6, 10, 9, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D775', N'MK004', N'HS100', 8, 6, 9, 10, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D776', N'MK004', N'HS101', 9, 6, 7, 6, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D777', N'MK004', N'HS102', 8, 7, 5, 6, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D778', N'MK004', N'HS103', 9, 8, 7, 5, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D779', N'MK004', N'HS104', 9, 7, 6, 7, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D780', N'MK004', N'HS105', 7, 6, 8, 5, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D781', N'MK004', N'HS106', 9, 6, 5, 9, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D782', N'MK004', N'HS107', 10, 7, 8, 10, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D783', N'MK004', N'HS108', 9, 9, 6, 7, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D784', N'MK004', N'HS109', 8, 9, 7, 5, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D785', N'MK004', N'HS110', 7, 10, 8, 6, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D786', N'MK004', N'HS111', 10, 6, 6, 10, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D787', N'MK004', N'HS112', 5, 6, 9, 5, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D788', N'MK004', N'HS113', 8, 7, 9, 7, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D789', N'MK004', N'HS114', 9, 7, 10, 7, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D790', N'MK004', N'HS115', 6, 8, 5, 10, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D791', N'MK004', N'HS116', 7, 7, 8, 6, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D792', N'MK004', N'HS117', 9, 9, 7, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D793', N'MK004', N'HS118', 7, 9, 7, 6, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D794', N'MK004', N'HS119', 6, 7, 9, 9, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D795', N'MK004', N'HS120', 7, 8, 8, 7, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D796', N'MK004', N'HS121', 8, 5, 10, 10, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D797', N'MK004', N'HS122', 6, 5, 6, 5, 8, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D798', N'MK004', N'HS123', 8, 9, 10, 7, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D799', N'MK004', N'HS124', 8, 5, 8, 5, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D800', N'MK004', N'HS125', 5, 10, 9, 9, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D801', N'MK004', N'HS126', 7, 6, 8, 5, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D802', N'MK004', N'HS127', 7, 9, 5, 6, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D803', N'MK004', N'HS128', 9, 8, 7, 5, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D804', N'MK004', N'HS129', 6, 10, 6, 8, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D805', N'MK004', N'HS130', 9, 9, 6, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D806', N'MK004', N'HS131', 8, 9, 10, 6, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D807', N'MK004', N'HS132', 5, 10, 6, 7, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D808', N'MK004', N'HS133', 9, 8, 7, 6, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D809', N'MK004', N'HS134', 6, 9, 7, 8, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D810', N'MK004', N'HS135', 8, 8, 10, 9, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D811', N'MK004', N'HS136', 9, 5, 7, 6, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D812', N'MK004', N'HS137', 9, 9, 5, 10, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D813', N'MK004', N'HS138', 7, 5, 8, 7, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D814', N'MK004', N'HS139', 5, 5, 10, 7, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D815', N'MK004', N'HS140', 6, 8, 8, 8, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D816', N'MK004', N'HS141', 7, 8, 10, 9, 6, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D817', N'MK004', N'HS142', 5, 8, 8, 7, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D818', N'MK004', N'HS143', 5, 8, 7, 6, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D819', N'MK004', N'HS144', 5, 5, 8, 5, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D820', N'MK004', N'HS145', 10, 9, 9, 7, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D821', N'MK004', N'HS146', 10, 7, 5, 6, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D822', N'MK004', N'HS147', 5, 7, 5, 7, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D823', N'MK004', N'HS148', 10, 5, 8, 7, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D824', N'MK004', N'HS149', 8, 9, 6, 10, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D825', N'MK004', N'HS150', 6, 8, 7, 8, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D826', N'MK004', N'HS151', 5, 5, 7, 6, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D827', N'MK004', N'HS152', 10, 5, 10, 7, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D828', N'MK004', N'HS153', 5, 6, 5, 9, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D829', N'MK004', N'HS154', 6, 6, 10, 9, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D830', N'MK004', N'HS155', 6, 6, 10, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D832', N'MK004', N'HS157', 9, 8, 6, 5, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D833', N'MK004', N'HS158', 9, 8, 8, 9, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D834', N'MK004', N'HS159', 8, 10, 8, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D835', N'MK004', N'HS160', 8, 9, 9, 6, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D836', N'MK004', N'HS161', 10, 6, 5, 8, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D837', N'MK004', N'HS162', 8, 9, 9, 10, 10, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D838', N'MK004', N'HS163', 6, 9, 6, 9, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D839', N'MK004', N'HS164', 7, 7, 6, 10, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D840', N'MK004', N'HS165', 10, 8, 8, 10, 5, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D841', N'MK004', N'HS166', 8, 5, 7, 6, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D842', N'MK004', N'HS167', 8, 7, 5, 7, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D843', N'MK004', N'HS168', 8, 10, 8, 10, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D844', N'MK004', N'HS169', 5, 5, 9, 9, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D845', N'MK004', N'HS170', 6, 8, 5, 9, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D846', N'MK004', N'HS171', 7, 5, 9, 5, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D847', N'MK004', N'HS172', 7, 9, 6, 7, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D848', N'MK004', N'HS173', 6, 8, 9, 9, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D849', N'MK004', N'HS174', 10, 10, 7, 8, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D850', N'MK004', N'HS175', 6, 9, 5, 9, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D851', N'MK004', N'HS176', 10, 10, 8, 7, 6, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D852', N'MK004', N'HS177', 8, 9, 6, 8, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D853', N'MK004', N'HS178', 8, 9, 5, 6, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D854', N'MK004', N'HS179', 7, 5, 5, 9, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D855', N'MK004', N'HS180', 6, 9, 5, 10, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D856', N'MK004', N'HS181', 6, 9, 10, 10, 7, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D857', N'MK004', N'HS182', 9, 6, 9, 10, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D858', N'MK004', N'HS183', 5, 9, 5, 6, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D859', N'MK004', N'HS184', 5, 5, 6, 6, 6, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D860', N'MK004', N'HS185', 9, 7, 6, 7, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D861', N'MK004', N'HS186', 5, 7, 9, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D862', N'MK004', N'HS187', 6, 8, 8, 10, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D863', N'MK004', N'HS188', 6, 6, 7, 7, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D864', N'MK004', N'HS189', 6, 8, 10, 7, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D865', N'MK004', N'HS190', 5, 9, 7, 8, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D866', N'MK004', N'HS191', 6, 5, 7, 5, 7, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D867', N'MK004', N'HS192', 9, 8, 10, 7, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D868', N'MK004', N'HS193', 10, 5, 5, 7, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D869', N'MK004', N'HS194', 10, 10, 5, 9, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D870', N'MK004', N'HS195', 6, 8, 8, 10, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D871', N'MK004', N'HS196', 7, 5, 7, 10, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D872', N'MK004', N'HS197', 9, 9, 5, 7, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D873', N'MK004', N'HS198', 8, 9, 8, 5, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D874', N'MK004', N'HS199', 9, 6, 8, 10, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D875', N'MK004', N'HS200', 6, 10, 5, 5, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D876', N'MK004', N'HS201', 9, 8, 7, 5, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D877', N'MK004', N'HS202', 5, 7, 5, 7, 6, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D878', N'MK004', N'HS203', 7, 5, 6, 8, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D879', N'MK004', N'HS204', 5, 10, 10, 9, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D880', N'MK004', N'HS205', 9, 7, 9, 7, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D881', N'MK004', N'HS206', 9, 6, 9, 5, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D882', N'MK004', N'HS207', 6, 8, 8, 5, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D883', N'MK004', N'HS208', 7, 6, 10, 6, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D884', N'MK004', N'HS209', 5, 6, 10, 5, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D885', N'MK004', N'HS210', 8, 8, 10, 6, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D886', N'MK004', N'HS211', 10, 7, 8, 5, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D887', N'MK004', N'HS212', 9, 8, 9, 7, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D888', N'MK004', N'HS213', 5, 7, 7, 8, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D889', N'MK004', N'HS214', 5, 8, 6, 10, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D890', N'MK004', N'HS215', 5, 5, 10, 6, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D891', N'MK004', N'HS216', 8, 6, 7, 8, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D892', N'MK004', N'HS217', 10, 7, 7, 9, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D893', N'MK004', N'HS218', 10, 10, 6, 6, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D894', N'MK004', N'HS219', 9, 6, 6, 7, 10, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D895', N'MK004', N'HS220', 10, 7, 7, 6, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D896', N'MK004', N'HS221', 5, 6, 7, 7, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D897', N'MK004', N'HS222', 8, 6, 7, 8, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D898', N'MK004', N'HS223', 10, 8, 8, 5, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D899', N'MK004', N'HS224', 9, 10, 10, 8, 5, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D900', N'MK004', N'HS225', 5, 5, 9, 6, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D901', N'MK005', N'HS001', 9, 8, 7, 6, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D902', N'MK005', N'HS002', 6, 5, 10, 7, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D903', N'MK005', N'HS003', 7, 7, 6, 5, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D904', N'MK005', N'HS004', 9, 8, 6, 6, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D905', N'MK005', N'HS005', 8, 7, 5, 5, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D906', N'MK005', N'HS006', 6, 8, 7, 8, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D907', N'MK005', N'HS007', 6, 9, 7, 9, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D908', N'MK005', N'HS008', 8, 5, 6, 8, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D909', N'MK005', N'HS009', 6, 6, 6, 5, 5, 5.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D910', N'MK005', N'HS010', 10, 10, 5, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D911', N'MK005', N'HS011', 9, 5, 7, 6, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D912', N'MK005', N'HS012', 7, 8, 6, 6, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D913', N'MK005', N'HS013', 5, 9, 9, 10, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D915', N'MK005', N'HS015', 10, 7, 6, 6, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D916', N'MK005', N'HS016', 7, 6, 6, 9, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D917', N'MK005', N'HS017', 10, 7, 6, 10, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D918', N'MK005', N'HS018', 6, 6, 7, 5, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D919', N'MK005', N'HS019', 8, 8, 5, 5, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D920', N'MK005', N'HS020', 9, 10, 7, 5, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D921', N'MK005', N'HS021', 10, 6, 6, 5, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D922', N'MK005', N'HS022', 6, 5, 6, 9, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D923', N'MK005', N'HS023', 9, 7, 10, 5, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D924', N'MK005', N'HS024', 10, 8, 7, 7, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D925', N'MK005', N'HS025', 10, 6, 7, 5, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D926', N'MK005', N'HS026', 6, 8, 6, 8, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D927', N'MK005', N'HS027', 9, 6, 9, 8, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D928', N'MK005', N'HS028', 10, 8, 8, 6, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D929', N'MK005', N'HS029', 7, 6, 7, 7, 8, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D930', N'MK005', N'HS030', 6, 6, 5, 9, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D931', N'MK005', N'HS031', 8, 6, 9, 10, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D932', N'MK005', N'HS032', 8, 9, 9, 7, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D933', N'MK005', N'HS033', 9, 5, 6, 5, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D934', N'MK005', N'HS034', 8, 9, 8, 8, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D935', N'MK005', N'HS035', 7, 7, 9, 8, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D936', N'MK005', N'HS036', 10, 5, 6, 9, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D937', N'MK005', N'HS037', 9, 10, 6, 5, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D938', N'MK005', N'HS038', 7, 7, 10, 6, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D939', N'MK005', N'HS039', 10, 8, 6, 10, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D940', N'MK005', N'HS040', 5, 5, 8, 9, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D941', N'MK005', N'HS041', 7, 9, 6, 8, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D942', N'MK005', N'HS042', 7, 7, 10, 6, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D943', N'MK005', N'HS043', 10, 9, 10, 10, 10, 9.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D944', N'MK005', N'HS044', 5, 8, 8, 9, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D945', N'MK005', N'HS045', 6, 7, 6, 10, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D946', N'MK005', N'HS046', 8, 8, 9, 8, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D947', N'MK005', N'HS047', 6, 6, 9, 5, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D948', N'MK005', N'HS048', 5, 6, 10, 8, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D949', N'MK005', N'HS049', 6, 6, 9, 8, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D950', N'MK005', N'HS050', 10, 9, 9, 5, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D951', N'MK005', N'HS051', 8, 5, 8, 10, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D952', N'MK005', N'HS052', 9, 9, 8, 9, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D953', N'MK005', N'HS053', 10, 7, 8, 5, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D954', N'MK005', N'HS054', 10, 5, 9, 8, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D955', N'MK005', N'HS055', 7, 8, 5, 9, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D956', N'MK005', N'HS056', 8, 7, 10, 8, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D957', N'MK005', N'HS057', 8, 6, 6, 7, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D958', N'MK005', N'HS058', 10, 5, 6, 9, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D959', N'MK005', N'HS059', 9, 6, 7, 9, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D960', N'MK005', N'HS060', 9, 9, 5, 9, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D961', N'MK005', N'HS061', 7, 10, 8, 10, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D962', N'MK005', N'HS062', 7, 9, 5, 8, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D963', N'MK005', N'HS063', 5, 7, 6, 7, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D964', N'MK005', N'HS064', 8, 10, 8, 9, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D965', N'MK005', N'HS065', 6, 7, 9, 9, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D966', N'MK005', N'HS066', 7, 8, 7, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D967', N'MK005', N'HS067', 5, 7, 10, 6, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D968', N'MK005', N'HS068', 10, 8, 6, 10, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D969', N'MK005', N'HS069', 9, 8, 10, 7, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D970', N'MK005', N'HS070', 8, 10, 10, 9, 5, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D971', N'MK005', N'HS071', 5, 10, 9, 8, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D972', N'MK005', N'HS072', 9, 9, 5, 9, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D973', N'MK005', N'HS073', 7, 9, 10, 5, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D974', N'MK005', N'HS074', 9, 10, 8, 6, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D975', N'MK005', N'HS075', 9, 6, 7, 6, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D976', N'MK005', N'HS076', 7, 8, 8, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D977', N'MK005', N'HS077', 5, 9, 5, 10, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D978', N'MK005', N'HS078', 9, 6, 5, 5, 9, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D979', N'MK005', N'HS079', 6, 8, 6, 6, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D980', N'MK005', N'HS080', 6, 5, 9, 6, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D981', N'MK005', N'HS081', 8, 5, 10, 6, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D982', N'MK005', N'HS082', 5, 6, 6, 5, 9, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D983', N'MK005', N'HS083', 6, 6, 9, 5, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D984', N'MK005', N'HS084', 10, 5, 5, 6, 6, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D985', N'MK005', N'HS085', 10, 5, 9, 6, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D986', N'MK005', N'HS086', 8, 9, 5, 10, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D987', N'MK005', N'HS087', 10, 6, 6, 9, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D988', N'MK005', N'HS088', 6, 10, 6, 10, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D989', N'MK005', N'HS089', 8, 10, 5, 7, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D990', N'MK005', N'HS090', 8, 10, 9, 6, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D991', N'MK005', N'HS091', 5, 6, 8, 7, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D992', N'MK005', N'HS092', 7, 9, 10, 5, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D993', N'MK005', N'HS093', 10, 5, 8, 10, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D994', N'MK005', N'HS094', 5, 8, 8, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D995', N'MK005', N'HS095', 9, 6, 9, 9, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D996', N'MK005', N'HS096', 7, 8, 9, 6, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3011', N'MK013', N'HS086', 9, 8, 8, 5, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3012', N'MK013', N'HS087', 10, 8, 10, 7, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3013', N'MK013', N'HS088', 5, 5, 7, 6, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3014', N'MK013', N'HS089', 8, 9, 9, 10, 9, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3015', N'MK013', N'HS090', 6, 7, 7, 9, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3016', N'MK013', N'HS091', 10, 8, 5, 7, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3017', N'MK013', N'HS092', 5, 6, 10, 8, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3018', N'MK013', N'HS093', 7, 9, 9, 5, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3019', N'MK013', N'HS094', 6, 5, 10, 9, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3020', N'MK013', N'HS095', 9, 9, 5, 7, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3021', N'MK013', N'HS096', 6, 6, 6, 7, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3022', N'MK013', N'HS097', 7, 10, 10, 8, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3023', N'MK013', N'HS098', 10, 6, 8, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3024', N'MK013', N'HS099', 8, 5, 5, 8, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3025', N'MK013', N'HS100', 8, 9, 5, 8, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3026', N'MK013', N'HS101', 5, 6, 8, 5, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3027', N'MK013', N'HS102', 6, 9, 7, 7, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3028', N'MK013', N'HS103', 9, 9, 5, 7, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3029', N'MK013', N'HS104', 10, 9, 8, 7, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3030', N'MK013', N'HS105', 7, 7, 9, 10, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3031', N'MK013', N'HS106', 6, 10, 6, 5, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3032', N'MK013', N'HS107', 6, 7, 7, 9, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3033', N'MK013', N'HS108', 5, 9, 7, 8, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3034', N'MK013', N'HS109', 6, 7, 8, 5, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3035', N'MK013', N'HS110', 6, 5, 9, 10, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3036', N'MK013', N'HS111', 8, 5, 9, 7, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3037', N'MK013', N'HS112', 10, 10, 6, 7, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3038', N'MK013', N'HS113', 9, 7, 8, 10, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3039', N'MK013', N'HS114', 10, 10, 9, 7, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3040', N'MK013', N'HS115', 10, 8, 6, 7, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3041', N'MK013', N'HS116', 9, 5, 5, 8, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3042', N'MK013', N'HS117', 10, 6, 7, 9, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3043', N'MK013', N'HS118', 6, 5, 10, 8, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3044', N'MK013', N'HS119', 8, 8, 5, 6, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3045', N'MK013', N'HS120', 8, 10, 10, 8, 6, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3046', N'MK013', N'HS121', 6, 6, 7, 5, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3047', N'MK013', N'HS122', 5, 5, 7, 5, 8, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3048', N'MK013', N'HS123', 9, 9, 6, 9, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3049', N'MK013', N'HS124', 7, 7, 5, 9, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3050', N'MK013', N'HS125', 5, 5, 10, 6, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3051', N'MK013', N'HS126', 7, 10, 5, 10, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3052', N'MK013', N'HS127', 8, 8, 9, 9, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3053', N'MK013', N'HS128', 7, 6, 7, 7, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3054', N'MK013', N'HS129', 9, 10, 7, 10, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3055', N'MK013', N'HS130', 7, 5, 7, 9, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3056', N'MK013', N'HS131', 5, 6, 10, 6, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3057', N'MK013', N'HS132', 7, 10, 7, 9, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3058', N'MK013', N'HS133', 10, 7, 9, 7, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3059', N'MK013', N'HS134', 6, 7, 8, 8, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3060', N'MK013', N'HS135', 7, 9, 5, 10, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3061', N'MK013', N'HS136', 7, 5, 10, 10, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3062', N'MK013', N'HS137', 8, 10, 9, 9, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3063', N'MK013', N'HS138', 7, 8, 7, 5, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3064', N'MK013', N'HS139', 7, 5, 8, 8, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3065', N'MK013', N'HS140', 9, 5, 10, 5, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3066', N'MK013', N'HS141', 9, 6, 7, 10, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3067', N'MK013', N'HS142', 10, 6, 6, 9, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3068', N'MK013', N'HS143', 6, 5, 7, 6, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3069', N'MK013', N'HS144', 8, 8, 10, 10, 8, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3070', N'MK013', N'HS145', 5, 8, 10, 5, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3071', N'MK013', N'HS146', 9, 6, 7, 7, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3072', N'MK013', N'HS147', 5, 5, 6, 9, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3073', N'MK013', N'HS148', 5, 5, 5, 8, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3074', N'MK013', N'HS149', 6, 7, 8, 5, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3075', N'MK013', N'HS150', 7, 7, 6, 8, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3076', N'MK013', N'HS151', 7, 5, 7, 7, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3077', N'MK013', N'HS152', 8, 7, 7, 7, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3078', N'MK013', N'HS153', 8, 8, 9, 10, 6, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3079', N'MK013', N'HS154', 8, 8, 5, 6, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3080', N'MK013', N'HS155', 7, 5, 6, 10, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3081', N'MK013', N'HS156', 8, 9, 8, 9, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3082', N'MK013', N'HS157', 5, 8, 8, 6, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3083', N'MK013', N'HS158', 9, 5, 8, 6, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3084', N'MK013', N'HS159', 9, 9, 7, 8, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3085', N'MK013', N'HS160', 10, 7, 6, 5, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3086', N'MK013', N'HS161', 7, 10, 8, 5, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3087', N'MK013', N'HS162', 8, 10, 6, 9, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3088', N'MK013', N'HS163', 5, 5, 10, 5, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3089', N'MK013', N'HS164', 7, 10, 7, 8, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3090', N'MK013', N'HS165', 6, 10, 6, 6, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3091', N'MK013', N'HS166', 7, 9, 8, 9, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3092', N'MK013', N'HS167', 5, 9, 9, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3093', N'MK013', N'HS168', 5, 9, 7, 8, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3094', N'MK013', N'HS169', 10, 10, 9, 6, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3095', N'MK013', N'HS170', 9, 7, 6, 8, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3096', N'MK013', N'HS171', 5, 8, 8, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3097', N'MK013', N'HS172', 9, 10, 8, 6, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3098', N'MK013', N'HS173', 8, 9, 7, 5, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3099', N'MK013', N'HS174', 6, 8, 10, 8, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3100', N'MK013', N'HS175', 9, 6, 5, 8, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3101', N'MK013', N'HS176', 5, 10, 7, 8, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3102', N'MK013', N'HS177', 8, 5, 8, 9, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3103', N'MK013', N'HS178', 8, 6, 9, 7, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3104', N'MK013', N'HS179', 5, 8, 10, 8, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3105', N'MK013', N'HS180', 8, 5, 7, 9, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3106', N'MK013', N'HS181', 7, 5, 10, 9, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3107', N'MK013', N'HS182', 6, 9, 8, 10, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3108', N'MK013', N'HS183', 8, 8, 6, 9, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3109', N'MK013', N'HS184', 10, 5, 10, 5, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3110', N'MK013', N'HS185', 7, 5, 9, 6, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3111', N'MK013', N'HS186', 5, 5, 8, 5, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3112', N'MK013', N'HS187', 8, 6, 5, 5, 10, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3113', N'MK013', N'HS188', 9, 7, 8, 9, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3114', N'MK013', N'HS189', 10, 8, 5, 9, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3115', N'MK013', N'HS190', 7, 9, 8, 9, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3116', N'MK013', N'HS191', 7, 9, 8, 6, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3117', N'MK013', N'HS192', 6, 6, 9, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3118', N'MK013', N'HS193', 10, 5, 5, 10, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3119', N'MK013', N'HS194', 7, 8, 7, 8, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3120', N'MK013', N'HS195', 7, 5, 6, 5, 6, 5.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3121', N'MK013', N'HS196', 6, 6, 9, 8, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3122', N'MK013', N'HS197', 10, 6, 5, 7, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3123', N'MK013', N'HS198', 8, 7, 8, 10, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3124', N'MK013', N'HS199', 5, 5, 8, 9, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3125', N'MK013', N'HS200', 9, 8, 8, 6, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3126', N'MK013', N'HS201', 7, 10, 9, 5, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3127', N'MK013', N'HS202', 5, 5, 8, 7, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3128', N'MK013', N'HS203', 5, 9, 5, 6, 7, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3129', N'MK013', N'HS204', 6, 7, 6, 6, 9, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3130', N'MK013', N'HS205', 8, 7, 7, 10, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3131', N'MK013', N'HS206', 10, 5, 7, 6, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3132', N'MK013', N'HS207', 10, 7, 8, 9, 9, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3133', N'MK013', N'HS208', 5, 7, 7, 5, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3134', N'MK013', N'HS209', 8, 7, 5, 8, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3135', N'MK013', N'HS210', 7, 9, 9, 9, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3136', N'MK013', N'HS211', 5, 5, 8, 7, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3137', N'MK013', N'HS212', 5, 6, 10, 9, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3138', N'MK013', N'HS213', 6, 9, 8, 9, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3139', N'MK013', N'HS214', 5, 8, 7, 8, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3140', N'MK013', N'HS215', 6, 10, 7, 7, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3141', N'MK013', N'HS216', 8, 10, 5, 10, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3142', N'MK013', N'HS217', 9, 5, 7, 8, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3143', N'MK013', N'HS218', 10, 6, 6, 8, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3144', N'MK013', N'HS219', 10, 5, 7, 9, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3145', N'MK013', N'HS220', 6, 8, 6, 10, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3146', N'MK013', N'HS221', 9, 10, 7, 6, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3147', N'MK013', N'HS222', 6, 10, 7, 9, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3148', N'MK013', N'HS223', 6, 5, 6, 10, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3149', N'MK013', N'HS224', 5, 8, 10, 8, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3150', N'MK013', N'HS225', 5, 7, 9, 10, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3151', N'MK015', N'HS001', 9, 7, 5, 9, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3152', N'MK015', N'HS002', 6, 6, 10, 5, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3153', N'MK015', N'HS003', 9, 10, 9, 7, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3154', N'MK015', N'HS004', 5, 9, 8, 6, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3155', N'MK015', N'HS005', 10, 8, 10, 8, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3156', N'MK015', N'HS006', 8, 9, 5, 6, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3157', N'MK015', N'HS007', 7, 9, 7, 9, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3158', N'MK015', N'HS008', 9, 7, 8, 5, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3159', N'MK015', N'HS009', 6, 6, 7, 5, 7, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3160', N'MK015', N'HS010', 5, 8, 5, 6, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3161', N'MK015', N'HS011', 10, 7, 9, 6, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3162', N'MK015', N'HS012', 6, 8, 9, 6, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3163', N'MK015', N'HS013', 5, 10, 9, 10, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3164', N'MK015', N'HS014', 7, 8, 9, 9, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3165', N'MK015', N'HS015', 7, 9, 5, 7, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3166', N'MK015', N'HS016', 6, 6, 10, 5, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3167', N'MK015', N'HS017', 10, 9, 5, 9, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3168', N'MK015', N'HS018', 5, 8, 10, 5, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3169', N'MK015', N'HS019', 6, 8, 6, 9, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3170', N'MK015', N'HS020', 10, 5, 5, 9, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3171', N'MK015', N'HS021', 9, 9, 8, 8, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3172', N'MK015', N'HS022', 9, 7, 7, 9, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3173', N'MK015', N'HS023', 10, 9, 6, 7, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3174', N'MK015', N'HS024', 9, 8, 5, 5, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3175', N'MK015', N'HS025', 6, 6, 6, 6, 6, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3176', N'MK015', N'HS026', 10, 8, 10, 6, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3177', N'MK015', N'HS027', 5, 7, 9, 5, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3178', N'MK015', N'HS028', 8, 7, 9, 5, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3179', N'MK015', N'HS029', 9, 6, 6, 9, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3180', N'MK015', N'HS030', 8, 8, 9, 10, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3181', N'MK015', N'HS031', 7, 7, 5, 9, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3182', N'MK015', N'HS032', 10, 10, 5, 7, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3183', N'MK015', N'HS033', 5, 8, 7, 10, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3184', N'MK015', N'HS034', 10, 9, 5, 5, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3185', N'MK015', N'HS035', 9, 7, 10, 8, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3186', N'MK015', N'HS036', 5, 9, 10, 10, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3187', N'MK015', N'HS037', 5, 10, 6, 7, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3188', N'MK015', N'HS038', 10, 8, 7, 8, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3189', N'MK015', N'HS039', 5, 10, 5, 8, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3190', N'MK015', N'HS040', 10, 6, 5, 7, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3191', N'MK015', N'HS041', 5, 9, 9, 10, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3192', N'MK015', N'HS042', 7, 5, 8, 6, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3193', N'MK015', N'HS043', 5, 7, 7, 5, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3194', N'MK015', N'HS044', 10, 5, 5, 7, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3195', N'MK015', N'HS045', 8, 10, 8, 9, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3196', N'MK015', N'HS046', 9, 10, 6, 10, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3197', N'MK015', N'HS047', 8, 7, 9, 8, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3198', N'MK015', N'HS048', 9, 6, 5, 6, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3199', N'MK015', N'HS049', 5, 9, 7, 10, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3200', N'MK015', N'HS050', 7, 7, 7, 9, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3201', N'MK015', N'HS051', 9, 10, 5, 10, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3202', N'MK015', N'HS052', 9, 10, 10, 10, 7, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3203', N'MK015', N'HS053', 7, 6, 6, 6, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3204', N'MK015', N'HS054', 7, 6, 10, 9, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3205', N'MK015', N'HS055', 8, 7, 8, 7, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3206', N'MK015', N'HS056', 5, 7, 7, 5, 6, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3207', N'MK015', N'HS057', 7, 8, 10, 6, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3208', N'MK015', N'HS058', 6, 6, 10, 7, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3209', N'MK015', N'HS059', 9, 10, 9, 9, 8, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3210', N'MK015', N'HS060', 5, 7, 10, 10, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3211', N'MK015', N'HS061', 7, 5, 10, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3212', N'MK015', N'HS062', 5, 8, 10, 5, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3213', N'MK015', N'HS063', 6, 6, 5, 8, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3214', N'MK015', N'HS064', 9, 5, 5, 7, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3215', N'MK015', N'HS065', 10, 6, 6, 9, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3216', N'MK015', N'HS066', 6, 6, 8, 7, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3217', N'MK015', N'HS067', 10, 8, 10, 7, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3218', N'MK015', N'HS068', 6, 5, 6, 9, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3219', N'MK015', N'HS069', 6, 10, 8, 6, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3220', N'MK015', N'HS070', 8, 9, 7, 9, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3221', N'MK015', N'HS071', 8, 9, 7, 10, 10, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3222', N'MK015', N'HS072', 6, 6, 9, 5, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3223', N'MK015', N'HS073', 6, 7, 7, 8, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3224', N'MK015', N'HS074', 8, 10, 10, 10, 10, 9.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3225', N'MK015', N'HS075', 6, 7, 6, 6, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3226', N'MK015', N'HS076', 5, 6, 7, 5, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3227', N'MK015', N'HS077', 8, 10, 7, 7, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3228', N'MK015', N'HS078', 10, 8, 9, 9, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3229', N'MK015', N'HS079', 7, 7, 9, 6, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3230', N'MK015', N'HS080', 9, 5, 10, 5, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3231', N'MK015', N'HS081', 10, 5, 6, 5, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3232', N'MK015', N'HS082', 5, 8, 7, 10, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3233', N'MK015', N'HS083', 6, 10, 10, 6, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3234', N'MK015', N'HS084', 6, 7, 6, 5, 8, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3235', N'MK015', N'HS085', 9, 5, 5, 6, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3236', N'MK015', N'HS086', 9, 9, 7, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3237', N'MK015', N'HS087', 10, 7, 8, 5, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3238', N'MK015', N'HS088', 7, 10, 9, 6, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3239', N'MK015', N'HS089', 5, 6, 10, 5, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3240', N'MK015', N'HS090', 5, 9, 5, 5, 7, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3241', N'MK015', N'HS091', 7, 8, 5, 9, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3242', N'MK015', N'HS092', 6, 5, 7, 7, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3243', N'MK015', N'HS093', 6, 5, 8, 10, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3244', N'MK015', N'HS094', 6, 9, 5, 6, 7, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3245', N'MK015', N'HS095', 8, 7, 5, 9, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3246', N'MK015', N'HS096', 9, 8, 5, 10, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3247', N'MK015', N'HS097', 10, 10, 10, 9, 6, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3248', N'MK015', N'HS098', 9, 10, 10, 7, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3249', N'MK015', N'HS099', 7, 9, 10, 6, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3250', N'MK015', N'HS100', 7, 8, 10, 10, 10, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3251', N'MK015', N'HS101', 7, 9, 5, 10, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3252', N'MK015', N'HS102', 6, 5, 10, 6, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3253', N'MK015', N'HS103', 10, 10, 10, 9, 8, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3254', N'MK015', N'HS104', 6, 10, 6, 6, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3255', N'MK015', N'HS105', 10, 9, 9, 5, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3256', N'MK015', N'HS106', 9, 8, 9, 6, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3257', N'MK015', N'HS107', 8, 7, 8, 7, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3258', N'MK015', N'HS108', 5, 6, 10, 7, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3259', N'MK015', N'HS109', 5, 5, 8, 6, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3260', N'MK015', N'HS110', 7, 7, 7, 5, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3261', N'MK015', N'HS111', 5, 8, 8, 6, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3262', N'MK015', N'HS112', 10, 8, 10, 5, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3263', N'MK015', N'HS113', 5, 8, 5, 9, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3264', N'MK015', N'HS114', 9, 9, 9, 7, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3265', N'MK015', N'HS115', 9, 8, 7, 7, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3266', N'MK015', N'HS116', 7, 5, 9, 10, 7, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3267', N'MK015', N'HS117', 7, 7, 9, 10, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3268', N'MK015', N'HS118', 10, 7, 7, 9, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3269', N'MK015', N'HS119', 9, 10, 9, 5, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3270', N'MK015', N'HS120', 8, 7, 9, 7, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3271', N'MK015', N'HS121', 7, 10, 6, 7, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3272', N'MK015', N'HS122', 6, 5, 6, 10, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3273', N'MK015', N'HS123', 9, 7, 9, 10, 9, 9)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3274', N'MK015', N'HS124', 5, 6, 5, 10, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3275', N'MK015', N'HS125', 9, 8, 5, 8, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3276', N'MK015', N'HS126', 9, 8, 6, 7, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3277', N'MK015', N'HS127', 9, 9, 6, 9, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3278', N'MK015', N'HS128', 10, 5, 6, 10, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3279', N'MK015', N'HS129', 8, 9, 5, 5, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3280', N'MK015', N'HS130', 5, 5, 8, 5, 7, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3281', N'MK015', N'HS131', 5, 10, 10, 10, 5, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3282', N'MK015', N'HS132', 5, 7, 9, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3283', N'MK015', N'HS133', 10, 9, 6, 7, 10, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3284', N'MK015', N'HS134', 7, 8, 8, 7, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3285', N'MK015', N'HS135', 10, 9, 5, 9, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3286', N'MK015', N'HS136', 10, 10, 7, 10, 6, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3287', N'MK015', N'HS137', 9, 6, 8, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3288', N'MK015', N'HS138', 7, 7, 5, 5, 9, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3289', N'MK015', N'HS139', 8, 6, 9, 7, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3290', N'MK015', N'HS140', 6, 5, 8, 6, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3291', N'MK015', N'HS141', 10, 7, 10, 8, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3292', N'MK015', N'HS142', 5, 5, 6, 8, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3293', N'MK015', N'HS143', 5, 7, 7, 6, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3294', N'MK015', N'HS144', 5, 6, 6, 10, 6, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3295', N'MK015', N'HS145', 7, 5, 8, 8, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3296', N'MK015', N'HS146', 7, 7, 8, 5, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3297', N'MK015', N'HS147', 10, 5, 8, 10, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3298', N'MK015', N'HS148', 6, 5, 8, 10, 8, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3299', N'MK015', N'HS149', 8, 10, 9, 5, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3300', N'MK015', N'HS150', 9, 10, 8, 9, 5, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3301', N'MK015', N'HS151', 7, 10, 10, 7, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3302', N'MK015', N'HS152', 9, 8, 7, 9, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3303', N'MK015', N'HS153', 6, 8, 10, 10, 8, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3304', N'MK015', N'HS154', 8, 5, 9, 10, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3305', N'MK015', N'HS155', 7, 9, 7, 8, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3306', N'MK015', N'HS156', 8, 8, 7, 5, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3307', N'MK015', N'HS157', 5, 6, 7, 6, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3308', N'MK015', N'HS158', 6, 10, 5, 10, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3309', N'MK015', N'HS159', 10, 8, 6, 9, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3310', N'MK015', N'HS160', 10, 8, 9, 5, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3311', N'MK015', N'HS161', 6, 8, 10, 9, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3312', N'MK015', N'HS162', 9, 8, 9, 5, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3313', N'MK015', N'HS163', 8, 6, 5, 6, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3314', N'MK015', N'HS164', 6, 8, 10, 8, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3315', N'MK015', N'HS165', 8, 6, 5, 10, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3316', N'MK015', N'HS166', 8, 6, 9, 6, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3317', N'MK015', N'HS167', 8, 9, 10, 6, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3318', N'MK015', N'HS168', 10, 5, 9, 10, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3319', N'MK015', N'HS169', 10, 5, 5, 7, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3320', N'MK015', N'HS170', 10, 8, 10, 7, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3321', N'MK015', N'HS171', 5, 9, 8, 6, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3322', N'MK015', N'HS172', 10, 5, 5, 9, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3323', N'MK015', N'HS173', 7, 9, 9, 5, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3324', N'MK015', N'HS174', 5, 8, 5, 6, 9, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3325', N'MK015', N'HS175', 6, 7, 9, 8, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3326', N'MK015', N'HS176', 10, 7, 5, 10, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3327', N'MK015', N'HS177', 9, 9, 8, 7, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3328', N'MK015', N'HS178', 9, 8, 7, 6, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3329', N'MK015', N'HS179', 9, 9, 10, 10, 8, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3330', N'MK015', N'HS180', 7, 8, 5, 7, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3331', N'MK015', N'HS181', 8, 7, 5, 6, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3332', N'MK015', N'HS182', 7, 7, 7, 10, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3333', N'MK015', N'HS183', 5, 6, 9, 9, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3334', N'MK015', N'HS184', 9, 7, 8, 6, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3335', N'MK015', N'HS185', 8, 10, 10, 5, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3336', N'MK015', N'HS186', 9, 7, 10, 10, 7, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3337', N'MK015', N'HS187', 9, 7, 9, 7, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3338', N'MK015', N'HS188', 9, 8, 6, 9, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3339', N'MK015', N'HS189', 9, 7, 10, 10, 5, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3340', N'MK015', N'HS190', 8, 8, 9, 7, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3341', N'MK015', N'HS191', 6, 10, 9, 8, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3342', N'MK015', N'HS192', 10, 7, 6, 10, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3343', N'MK015', N'HS193', 6, 5, 8, 8, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3344', N'MK015', N'HS194', 9, 9, 8, 7, 8, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3345', N'MK015', N'HS195', 7, 5, 7, 5, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3346', N'MK015', N'HS196', 10, 6, 9, 10, 5, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3347', N'MK015', N'HS197', 8, 8, 9, 7, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3348', N'MK015', N'HS198', 7, 7, 9, 7, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3349', N'MK015', N'HS199', 6, 9, 5, 7, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3350', N'MK015', N'HS200', 9, 9, 8, 10, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3351', N'MK015', N'HS201', 6, 5, 8, 6, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3352', N'MK015', N'HS202', 9, 9, 5, 7, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3353', N'MK015', N'HS203', 10, 9, 5, 5, 6, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3354', N'MK015', N'HS204', 9, 10, 6, 6, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3355', N'MK015', N'HS205', 9, 5, 6, 8, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3356', N'MK015', N'HS206', 10, 8, 5, 8, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3357', N'MK015', N'HS207', 7, 9, 10, 8, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3358', N'MK015', N'HS208', 6, 7, 10, 8, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3359', N'MK015', N'HS209', 5, 10, 5, 10, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3360', N'MK015', N'HS210', 8, 9, 8, 8, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3361', N'MK015', N'HS211', 5, 10, 9, 6, 7, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3362', N'MK015', N'HS212', 7, 10, 9, 6, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3363', N'MK015', N'HS213', 6, 6, 9, 5, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3364', N'MK015', N'HS214', 10, 6, 7, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3365', N'MK015', N'HS215', 7, 9, 6, 9, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3366', N'MK015', N'HS216', 6, 6, 8, 8, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3367', N'MK015', N'HS217', 5, 7, 10, 6, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3368', N'MK015', N'HS218', 7, 7, 7, 5, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3369', N'MK015', N'HS219', 8, 10, 6, 5, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3370', N'MK015', N'HS220', 10, 8, 8, 8, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3371', N'MK015', N'HS221', 10, 9, 10, 9, 9, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3372', N'MK015', N'HS222', 10, 9, 10, 9, 9, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3373', N'MK015', N'HS223', 5, 9, 7, 6, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3374', N'MK015', N'HS224', 7, 7, 8, 9, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3375', N'MK015', N'HS225', 7, 7, 9, 9, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3376', N'MK016', N'HS001', 8, 5, 9, 9, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3377', N'MK016', N'HS002', 10, 10, 5, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3378', N'MK016', N'HS003', 10, 8, 8, 5, 7, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3379', N'MK016', N'HS004', 9, 9, 9, 10, 5, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3380', N'MK016', N'HS005', 5, 5, 8, 9, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3381', N'MK016', N'HS006', 10, 7, 9, 8, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3382', N'MK016', N'HS007', 10, 5, 9, 7, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3383', N'MK016', N'HS008', 7, 5, 9, 8, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3384', N'MK016', N'HS009', 5, 7, 5, 5, 7, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3385', N'MK016', N'HS010', 6, 6, 8, 9, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3386', N'MK016', N'HS011', 8, 10, 9, 8, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3387', N'MK016', N'HS012', 7, 8, 10, 6, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3388', N'MK016', N'HS013', 9, 8, 8, 7, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3389', N'MK016', N'HS014', 10, 9, 5, 5, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3390', N'MK016', N'HS015', 10, 7, 10, 7, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3391', N'MK016', N'HS016', 6, 6, 10, 10, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3392', N'MK016', N'HS017', 10, 6, 9, 9, 10, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3393', N'MK016', N'HS018', 6, 5, 6, 5, 9, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3394', N'MK016', N'HS019', 10, 5, 7, 10, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3395', N'MK016', N'HS020', 7, 10, 5, 6, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3396', N'MK016', N'HS021', 8, 6, 6, 8, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3397', N'MK016', N'HS022', 10, 10, 8, 7, 9, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3398', N'MK016', N'HS023', 9, 10, 5, 10, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3399', N'MK016', N'HS024', 6, 10, 6, 9, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3400', N'MK016', N'HS025', 9, 7, 10, 6, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3401', N'MK016', N'HS026', 7, 8, 10, 7, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3402', N'MK016', N'HS027', 10, 5, 6, 8, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3403', N'MK016', N'HS028', 9, 7, 10, 5, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3404', N'MK016', N'HS029', 5, 6, 6, 10, 7, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3405', N'MK016', N'HS030', 7, 6, 9, 6, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3406', N'MK016', N'HS031', 6, 10, 5, 7, 6, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3407', N'MK016', N'HS032', 5, 6, 10, 6, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3408', N'MK016', N'HS033', 6, 5, 6, 10, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3409', N'MK016', N'HS034', 9, 6, 5, 5, 5, 5.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3410', N'MK016', N'HS035', 7, 7, 9, 8, 5, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3411', N'MK016', N'HS036', 8, 10, 9, 10, 10, 9.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3412', N'MK016', N'HS037', 6, 7, 9, 7, 6, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3413', N'MK016', N'HS038', 8, 5, 8, 7, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3414', N'MK016', N'HS039', 6, 8, 8, 6, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3415', N'MK016', N'HS040', 9, 10, 8, 10, 6, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3416', N'MK016', N'HS041', 6, 8, 7, 8, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3417', N'MK016', N'HS042', 10, 8, 7, 7, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3418', N'MK016', N'HS043', 6, 10, 8, 9, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3419', N'MK016', N'HS044', 6, 7, 5, 8, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3420', N'MK016', N'HS045', 10, 6, 8, 10, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3421', N'MK016', N'HS046', 9, 7, 10, 10, 5, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3422', N'MK016', N'HS047', 9, 10, 8, 6, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3423', N'MK016', N'HS048', 10, 6, 7, 9, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3424', N'MK016', N'HS049', 9, 10, 8, 9, 8, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3425', N'MK016', N'HS050', 9, 7, 9, 7, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3426', N'MK016', N'HS051', 8, 8, 9, 5, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3427', N'MK016', N'HS052', 8, 8, 10, 8, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3428', N'MK016', N'HS053', 10, 6, 7, 5, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3429', N'MK016', N'HS054', 10, 6, 10, 8, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3430', N'MK016', N'HS055', 10, 5, 10, 10, 8, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3431', N'MK016', N'HS056', 9, 7, 9, 7, 7, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3432', N'MK016', N'HS057', 9, 5, 7, 8, 10, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3433', N'MK016', N'HS058', 9, 10, 10, 6, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3434', N'MK016', N'HS059', 6, 8, 7, 6, 5, 6.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3435', N'MK016', N'HS060', 6, 6, 6, 7, 10, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3436', N'MK016', N'HS061', 10, 8, 9, 5, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3437', N'MK016', N'HS062', 9, 5, 9, 6, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3438', N'MK016', N'HS063', 8, 10, 5, 5, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3439', N'MK016', N'HS064', 6, 9, 6, 7, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3440', N'MK016', N'HS065', 5, 7, 8, 5, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3441', N'MK016', N'HS066', 6, 7, 5, 5, 6, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3442', N'MK016', N'HS067', 5, 6, 10, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3443', N'MK016', N'HS068', 8, 9, 9, 7, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3444', N'MK016', N'HS069', 5, 8, 6, 7, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3445', N'MK016', N'HS070', 6, 10, 8, 6, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3446', N'MK016', N'HS071', 8, 7, 6, 6, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3447', N'MK016', N'HS072', 10, 7, 9, 6, 9, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3448', N'MK016', N'HS073', 6, 6, 10, 7, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3449', N'MK016', N'HS074', 5, 8, 6, 8, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3450', N'MK016', N'HS075', 10, 6, 6, 9, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3451', N'MK016', N'HS076', 7, 7, 6, 8, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3452', N'MK016', N'HS077', 8, 5, 6, 5, 9, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3453', N'MK016', N'HS078', 10, 5, 9, 9, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3454', N'MK016', N'HS079', 5, 6, 6, 6, 10, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3455', N'MK016', N'HS080', 10, 7, 5, 8, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3456', N'MK016', N'HS081', 10, 8, 9, 8, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3457', N'MK016', N'HS082', 8, 5, 6, 7, 8, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3458', N'MK016', N'HS083', 6, 7, 6, 9, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3459', N'MK016', N'HS084', 6, 8, 6, 5, 5, 5.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3460', N'MK016', N'HS085', 6, 9, 9, 8, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3461', N'MK016', N'HS086', 7, 7, 6, 8, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3462', N'MK016', N'HS087', 5, 9, 7, 5, 6, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3463', N'MK016', N'HS088', 7, 5, 7, 5, 7, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3464', N'MK016', N'HS089', 6, 8, 7, 10, 10, 8.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3465', N'MK016', N'HS090', 5, 5, 10, 6, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3466', N'MK016', N'HS091', 6, 8, 10, 9, 7, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3467', N'MK016', N'HS092', 8, 7, 10, 8, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3468', N'MK016', N'HS093', 8, 8, 6, 10, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3469', N'MK016', N'HS094', 7, 10, 9, 8, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3470', N'MK016', N'HS095', 8, 9, 9, 8, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3471', N'MK016', N'HS096', 6, 9, 10, 6, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3472', N'MK016', N'HS097', 6, 8, 5, 9, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3473', N'MK016', N'HS098', 9, 10, 5, 6, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3474', N'MK016', N'HS099', 10, 9, 8, 10, 9, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3475', N'MK016', N'HS100', 8, 6, 9, 7, 5, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3476', N'MK016', N'HS101', 7, 8, 6, 10, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3477', N'MK016', N'HS102', 9, 7, 10, 8, 6, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3478', N'MK016', N'HS103', 7, 9, 8, 6, 6, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3479', N'MK016', N'HS104', 5, 8, 5, 7, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3480', N'MK016', N'HS105', 5, 6, 5, 7, 8, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3481', N'MK016', N'HS106', 5, 6, 7, 5, 7, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3482', N'MK016', N'HS107', 6, 8, 7, 10, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3483', N'MK016', N'HS108', 8, 7, 6, 9, 8, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3484', N'MK016', N'HS109', 6, 9, 8, 7, 5, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3485', N'MK016', N'HS110', 6, 8, 7, 5, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3486', N'MK016', N'HS111', 8, 7, 10, 7, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3487', N'MK016', N'HS112', 8, 9, 8, 7, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3488', N'MK016', N'HS113', 6, 10, 10, 10, 9, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3489', N'MK016', N'HS114', 10, 9, 6, 6, 5, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3490', N'MK016', N'HS115', 9, 5, 10, 6, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3491', N'MK016', N'HS116', 5, 7, 7, 7, 10, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3492', N'MK016', N'HS117', 5, 10, 7, 5, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3493', N'MK016', N'HS118', 8, 8, 6, 8, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3494', N'MK016', N'HS119', 5, 8, 9, 5, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3495', N'MK016', N'HS120', 10, 10, 7, 9, 8, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3496', N'MK016', N'HS121', 5, 5, 8, 8, 6, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3497', N'MK016', N'HS122', 9, 9, 5, 10, 6, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3498', N'MK016', N'HS123', 7, 10, 5, 8, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3499', N'MK016', N'HS124', 8, 6, 10, 6, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3500', N'MK016', N'HS125', 9, 10, 5, 7, 10, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3501', N'MK016', N'HS126', 7, 7, 5, 8, 8, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3502', N'MK016', N'HS127', 8, 7, 10, 7, 6, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3503', N'MK016', N'HS128', 8, 6, 9, 5, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3504', N'MK016', N'HS129', 9, 6, 10, 9, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3505', N'MK016', N'HS130', 8, 9, 10, 7, 6, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3506', N'MK016', N'HS131', 5, 5, 5, 8, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3507', N'MK016', N'HS132', 7, 9, 8, 5, 7, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3508', N'MK016', N'HS133', 6, 6, 10, 10, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3509', N'MK016', N'HS134', 8, 9, 9, 6, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3510', N'MK016', N'HS135', 7, 7, 5, 9, 10, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3511', N'MK016', N'HS136', 6, 9, 9, 9, 5, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3512', N'MK016', N'HS137', 8, 10, 7, 10, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3513', N'MK016', N'HS138', 7, 6, 5, 9, 5, 6.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3514', N'MK016', N'HS139', 9, 5, 9, 9, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3515', N'MK016', N'HS140', 9, 9, 8, 10, 6, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3516', N'MK016', N'HS141', 8, 7, 10, 8, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3517', N'MK016', N'HS142', 8, 9, 9, 7, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3518', N'MK016', N'HS143', 5, 5, 9, 8, 5, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3519', N'MK016', N'HS144', 5, 6, 6, 9, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3520', N'MK016', N'HS145', 10, 6, 8, 5, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3521', N'MK016', N'HS146', 9, 5, 7, 9, 10, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3522', N'MK016', N'HS147', 10, 7, 5, 10, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3523', N'MK016', N'HS148', 7, 10, 7, 10, 7, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3524', N'MK016', N'HS149', 10, 8, 10, 9, 7, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3525', N'MK016', N'HS150', 10, 7, 6, 10, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3526', N'MK016', N'HS151', 6, 9, 6, 10, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3527', N'MK016', N'HS152', 10, 9, 8, 7, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3528', N'MK016', N'HS153', 5, 5, 5, 8, 6, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3529', N'MK016', N'HS154', 7, 7, 6, 9, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3530', N'MK016', N'HS155', 8, 8, 10, 9, 10, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3531', N'MK016', N'HS156', 9, 6, 10, 7, 5, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3532', N'MK016', N'HS157', 8, 6, 6, 8, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3533', N'MK016', N'HS158', 5, 8, 9, 8, 5, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3534', N'MK016', N'HS159', 5, 9, 9, 5, 9, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3535', N'MK016', N'HS160', 6, 10, 5, 5, 9, 7)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3536', N'MK016', N'HS161', 5, 5, 9, 9, 7, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3537', N'MK016', N'HS162', 10, 9, 5, 10, 8, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3538', N'MK016', N'HS163', 7, 8, 10, 9, 7, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3539', N'MK016', N'HS164', 10, 9, 9, 9, 9, 9.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3540', N'MK016', N'HS165', 8, 8, 5, 7, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3541', N'MK016', N'HS166', 6, 6, 6, 7, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3542', N'MK016', N'HS167', 7, 6, 5, 6, 6, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3543', N'MK016', N'HS168', 6, 8, 6, 7, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3544', N'MK016', N'HS169', 9, 5, 8, 8, 6, 7.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3545', N'MK016', N'HS170', 5, 6, 8, 6, 9, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3546', N'MK016', N'HS171', 10, 10, 10, 10, 8, 9.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3547', N'MK016', N'HS172', 10, 9, 10, 9, 10, 9.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3548', N'MK016', N'HS173', 9, 6, 8, 8, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3549', N'MK016', N'HS174', 8, 9, 8, 10, 10, 9.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3550', N'MK016', N'HS175', 10, 6, 8, 10, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3551', N'MK016', N'HS176', 8, 7, 8, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3552', N'MK016', N'HS177', 8, 8, 10, 7, 10, 8.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3553', N'MK016', N'HS178', 10, 5, 8, 9, 10, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3554', N'MK016', N'HS179', 5, 6, 7, 7, 7, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3555', N'MK016', N'HS180', 5, 10, 8, 8, 6, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3556', N'MK016', N'HS181', 9, 8, 6, 6, 7, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3557', N'MK016', N'HS182', 5, 7, 5, 8, 5, 5.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3558', N'MK016', N'HS183', 8, 8, 8, 7, 8, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3559', N'MK016', N'HS184', 9, 5, 5, 7, 8, 6.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3560', N'MK016', N'HS185', 8, 7, 9, 6, 9, 8)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3561', N'MK016', N'HS186', 6, 9, 7, 7, 8, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3562', N'MK016', N'HS187', 10, 7, 6, 9, 7, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3563', N'MK016', N'HS188', 10, 7, 5, 5, 10, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3564', N'MK016', N'HS189', 5, 7, 8, 7, 8, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3565', N'MK016', N'HS190', 7, 10, 9, 10, 8, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3566', N'MK016', N'HS191', 8, 10, 6, 7, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3567', N'MK016', N'HS192', 10, 5, 9, 8, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3568', N'MK016', N'HS193', 5, 9, 6, 7, 9, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3569', N'MK016', N'HS194', 7, 6, 5, 9, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3570', N'MK016', N'HS195', 7, 10, 6, 5, 10, 7.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3571', N'MK016', N'HS196', 6, 9, 8, 5, 9, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3572', N'MK016', N'HS197', 8, 9, 10, 7, 8, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3573', N'MK016', N'HS198', 5, 6, 6, 9, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3574', N'MK016', N'HS199', 7, 8, 8, 9, 7, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3575', N'MK016', N'HS200', 9, 5, 9, 5, 5, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3576', N'MK016', N'HS201', 6, 6, 5, 6, 8, 6.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3577', N'MK016', N'HS202', 10, 10, 9, 6, 5, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3578', N'MK016', N'HS203', 7, 9, 5, 6, 9, 7.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3579', N'MK016', N'HS204', 5, 8, 5, 5, 5, 5.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3580', N'MK016', N'HS205', 8, 8, 6, 5, 7, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3581', N'MK016', N'HS206', 10, 9, 8, 10, 8, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3582', N'MK016', N'HS207', 10, 10, 10, 6, 5, 7.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3583', N'MK016', N'HS208', 5, 7, 6, 6, 8, 6.67)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3584', N'MK016', N'HS209', 5, 8, 5, 8, 5, 6)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3585', N'MK016', N'HS210', 7, 6, 8, 6, 6, 6.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3586', N'MK016', N'HS211', 9, 7, 5, 5, 10, 7.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3587', N'MK016', N'HS212', 9, 10, 10, 8, 10, 9.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3588', N'MK016', N'HS213', 8, 7, 5, 6, 8, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3589', N'MK016', N'HS214', 5, 8, 10, 7, 10, 8.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3590', N'MK016', N'HS215', 10, 6, 6, 9, 9, 8.11)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3591', N'MK016', N'HS216', 6, 8, 6, 5, 7, 6.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3592', N'MK016', N'HS217', 9, 10, 8, 7, 9, 8.44)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3593', N'MK016', N'HS218', 10, 10, 9, 6, 8, 8.22)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3594', N'MK016', N'HS219', 7, 9, 9, 9, 9, 8.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3595', N'MK016', N'HS220', 8, 5, 8, 7, 9, 7.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3596', N'MK016', N'HS221', 10, 6, 6, 8, 9, 7.89)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3597', N'MK016', N'HS222', 7, 5, 8, 10, 9, 8.33)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3598', N'MK016', N'HS223', 5, 9, 6, 7, 7, 6.78)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3599', N'MK016', N'HS224', 8, 6, 5, 10, 8, 7.56)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMHHK], [MaHS], [DiemMieng], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D3600', N'MK016', N'HS225', 8, 10, 10, 6, 5, 7.22)
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV001', N'Nguyễn Văn An', CAST(N'1985-02-14' AS Date), N'Hà Nội', 1, N'TK001', N'MH001', N'anh1.png')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV002', N'Phạm Thị Bình', CAST(N'1985-02-15' AS Date), N'Hà Nội', 0, N'TK003', N'MH004', N'anh2.png')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV003', N'Lê Văn Khánh', CAST(N'1985-02-16' AS Date), N'Hà Nội', 1, N'TK002', N'MH002', N'anh4.jpg')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV004', N'Nguyễn Bình An', CAST(N'1985-02-17' AS Date), N'Hà Nội', 1, N'TK004', N'MH003', N'anh5.jpg')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV005', N'Nguyễn Đức An', CAST(N'1985-02-18' AS Date), N'Hà Nội', 1, N'TK005', N'MH001', N'anh1.png')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV006', N'Đoàn Thị Mai Anh', CAST(N'1985-02-19' AS Date), N'Hà Nội', 0, N'TK006', N'MH005', N'anh3.jpg')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV007', N'Phạm Khắc Chiến', CAST(N'1985-02-20' AS Date), N'Hà Nội', 1, N'TK007', N'MH006', N'anh5.jpg')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV008', N'Lại Văn Cương', CAST(N'1985-02-21' AS Date), N'Hà Nội', 1, N'TK008', N'MH004', N'anh1.png')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV009', N'Đào Thị Diễm', CAST(N'1985-02-22' AS Date), N'Hà Nội', 0, N'TK009', N'MH002', N'anh6.jpg')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV010', N'Hoàng Anh Dũng', CAST(N'1985-02-23' AS Date), N'Hà Nội', 1, N'TK010', N'MH007', N'anh1.png')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV011', N'Đỗ Thành Đạt', CAST(N'1985-02-24' AS Date), N'Hà Nội', 1, N'TK011', N'MH005', N'anh4.jpg')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV012', N'Phạm Công Định', CAST(N'1985-02-25' AS Date), N'Hà Nội', 1, N'TK012', N'MH003', N'anh5.jpg')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV013', N'Trịnh Thị Kiều Anh', CAST(N'1985-02-26' AS Date), N'Hà Nội', 0, N'TK013', N'MH001', N'anh7.jpg')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV014', N'Trần Văn Nam', CAST(N'1985-02-27' AS Date), N'Hà Nội', 1, N'TK014', N'MH006', N'anh5.jpg')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV015', N'Nguyễn Anh Huy', CAST(N'1985-02-28' AS Date), N'Hà Nội', 1, N'TK015', N'MH008', N'anh1.png')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV016', N'Vũ Thị Huyền', CAST(N'1985-03-01' AS Date), N'Hà Nội', 0, N'TK016', N'MH004', N'anh6.jpg')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV017', N'Lương Thị Kim Ngân', CAST(N'1985-03-02' AS Date), N'Hà Nội', 0, N'TK017', N'MH007', N'anh7.jpg')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV018', N'Trịnh Thị Thu Thảo', CAST(N'1985-03-03' AS Date), N'Hà Nội', 0, N'TK018', N'MH008', N'anh2.png')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK], [MaMH], [Anh]) VALUES (N'GV019', N'Trần Thị Hải Yến', CAST(N'1985-03-04' AS Date), N'Hà Nội', 0, N'TK019', N'MH007', N'anh3.jpg')
GO
INSERT [dbo].[HocKy] ([MaHK], [TenHK], [NamHoc], [HeSo], [DiemTKHK]) VALUES (N'HK1', N'Hoc ky 1', N'2023-2024', 1, NULL)
GO
INSERT [dbo].[HocKy] ([MaHK], [TenHK], [NamHoc], [HeSo], [DiemTKHK]) VALUES (N'HK1-2425', N'Hoc ky 1', N'2024-2025', 1, NULL)
GO
INSERT [dbo].[HocKy] ([MaHK], [TenHK], [NamHoc], [HeSo], [DiemTKHK]) VALUES (N'HK2', N'Hoc ky 2', N'2023-2024', 2, NULL)
GO
INSERT [dbo].[HocKy] ([MaHK], [TenHK], [NamHoc], [HeSo], [DiemTKHK]) VALUES (N'HK2-2425', N'Hoc ky 2', N'2024-2025', 2, NULL)
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS001', N'Nguyễn Tuấn Anh', CAST(N'2004-01-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS002', N'Nguyễn Trung Hiếu', CAST(N'2004-01-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS003', N'Nguyễn Minh Quang', CAST(N'2004-01-30' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS004', N'Nguyễn Bích Liên', CAST(N'2004-02-05' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS005', N'Lê Bích Phương', CAST(N'2004-02-14' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS006', N'Nguyễn Trường Sơn', CAST(N'2004-02-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS007', N'Nguyễn Phúc Hưng', CAST(N'2004-03-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS008', N'Trần Thị Nguyệt', CAST(N'2004-03-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS009', N'Vũ Thị Mỹ Linh', CAST(N'2004-03-20' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS010', N'Nguyễn Mạnh Tiến', CAST(N'2004-03-31' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS011', N'Bùi Thanh Tùng', CAST(N'2004-04-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS012', N'Nguyễn Trúc Ly', CAST(N'2004-04-15' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS013', N'Trần Hoàng Đăng', CAST(N'2004-04-22' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS014', N'Vũ Đức Lợi', CAST(N'2004-04-30' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS015', N'Lê Văn Hiệp', CAST(N'2004-05-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS016', N'Trần Văn Quang', CAST(N'2004-05-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS017', N'Nguyễn Công Danh', CAST(N'2004-05-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS018', N'Phạm Văn Trung', CAST(N'2004-05-31' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS019', N'Nguyễn Thị Lan', CAST(N'2004-06-01' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS020', N'Nguyễn Thị Tâm', CAST(N'2004-06-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS021', N'Lê Văn Chung', CAST(N'2004-06-15' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS022', N'Nguyễn Văn An', CAST(N'2004-06-30' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS023', N'Trần Thị Bích Ngọc', CAST(N'2004-07-01' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS024', N'Lê Quang Hùng', CAST(N'2004-07-14' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS025', N'Phạm Thị Thu Trang', CAST(N'2004-07-22' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS026', N'Hoàng Minh Khang', CAST(N'2004-07-31' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS027', N'Vũ Thị Lan Anh', CAST(N'2004-08-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS028', N'Bùi Thanh Tú', CAST(N'2004-08-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS029', N'Đặng Thị Thu Hương', CAST(N'2004-08-22' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS030', N'Phan Văn Phú', CAST(N'2004-08-31' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS031', N'Võ Ngọc Lan', CAST(N'2004-09-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS032', N'Dương Đức Long', CAST(N'2004-09-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS033', N'Đỗ Thị Mai Linh', CAST(N'2004-09-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS034', N'Lý Mạnh Quân', CAST(N'2004-09-30' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS035', N'Tô Thị Bích Thủy', CAST(N'2004-10-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS036', N'Ngô Minh Tú', CAST(N'2004-10-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS037', N'Cao Thị Thanh', CAST(N'2004-10-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS038', N'Lương Hải Yến', CAST(N'2004-10-31' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS039', N'Hà Trung Kiên', CAST(N'2004-11-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS040', N'Trịnh Thị Thu Thảo', CAST(N'2004-11-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS041', N'Nguyễn Thanh Bình', CAST(N'2004-11-22' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS042', N'Phạm Anh Khoa', CAST(N'2004-11-30' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS043', N'Trần Khánh Ly', CAST(N'2004-12-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS044', N'Lê Thị Kim Chi', CAST(N'2004-12-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS045', N'Đinh Tấn Phát', CAST(N'2004-12-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS046', N'Hoàng Thị Mai', CAST(N'2004-12-25' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS047', N'Vũ Quang Vinh', CAST(N'2004-12-31' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS048', N'Bùi Minh Đức', CAST(N'2004-03-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS049', N'Đặng Hoàng Anh', CAST(N'2004-06-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS050', N'Phan Thị Mỹ Hạnh', CAST(N'2004-08-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS051', N'Võ Khánh Huyền', CAST(N'2004-09-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS052', N'Dương Ngọc Tú', CAST(N'2004-10-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS053', N'Đỗ Hoài Thương', CAST(N'2004-11-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS054', N'Lý Xuân Trường', CAST(N'2004-12-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS055', N'Tô Thị Thúy Hằng', CAST(N'2004-01-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS056', N'Ngô Phương Nam', CAST(N'2004-02-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS057', N'Cao Vĩnh Phúc', CAST(N'2004-03-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS058', N'Lương Bảo Ngọc', CAST(N'2004-04-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS059', N'Hà Quốc Khánh', CAST(N'2004-05-25' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS060', N'Trịnh Thuỳ Dương', CAST(N'2004-06-25' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS061', N'Nguyễn Hữu Phước', CAST(N'2004-07-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS062', N'Phạm Thị Xuân Mai', CAST(N'2004-08-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS063', N'Trần Hoàng Bách', CAST(N'2004-09-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS064', N'Lê Thị Ngọc Hà', CAST(N'2004-10-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS065', N'Đinh Quỳnh Trang', CAST(N'2004-11-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS066', N'Hoàng Minh Tâm', CAST(N'2004-12-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS067', N'Vũ Thị Hồng Nhung', CAST(N'2004-01-25' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS068', N'Bùi Minh Hoàng', CAST(N'2004-02-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS069', N'Đặng Huyền My', CAST(N'2004-03-25' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS070', N'Phan Thị Ngọc Bích', CAST(N'2004-04-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS071', N'Võ Ngọc Diệp', CAST(N'2004-05-30' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS072', N'Dương Thị Yến', CAST(N'2004-06-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS073', N'Đỗ Thanh Thúy', CAST(N'2004-07-05' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS074', N'Lý Minh Triết', CAST(N'2004-08-25' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS075', N'Tô Hồng Phương', CAST(N'2004-11-12' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS076', N'Ngô Thị Tuyết Lan', CAST(N'2005-01-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS077', N'Cao Đức Chính', CAST(N'2005-01-15' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS078', N'Lương Mai Phương', CAST(N'2005-01-30' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS079', N'Hà Thanh Hương', CAST(N'2005-02-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS080', N'Trịnh Hoài Nam', CAST(N'2005-02-14' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS081', N'Nguyễn Văn Khánh', CAST(N'2005-02-28' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS082', N'Phạm Hồng Hải', CAST(N'2005-03-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS083', N'Trần Bảo Anh', CAST(N'2005-03-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS084', N'Lê Anh Quân', CAST(N'2005-03-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS085', N'Đinh Thị Tâm', CAST(N'2005-03-31' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS086', N'Hoàng Thị Kim Hoa', CAST(N'2005-04-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS087', N'Vũ Thái Sơn', CAST(N'2005-04-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS088', N'Bùi Thị Minh Châu', CAST(N'2005-04-22' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS089', N'Đặng Ngọc Ánh', CAST(N'2005-04-30' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS090', N'Phan Thanh Hà', CAST(N'2005-05-05' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS091', N'Võ Xuân Đạt', CAST(N'2005-05-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS092', N'Dương Thanh Tùng', CAST(N'2005-05-20' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS093', N'Đỗ Hải An', CAST(N'2005-05-31' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS094', N'Lý Quỳnh Như', CAST(N'2005-06-01' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS095', N'Tô Văn Tiến', CAST(N'2005-06-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS096', N'Ngô Bích Phượng', CAST(N'2005-06-15' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS097', N'Cao Văn Đức', CAST(N'2005-06-30' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS098', N'Lương Khánh Vy', CAST(N'2005-07-01' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS099', N'Hà Hữu Huy', CAST(N'2005-07-14' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS100', N'Trịnh Như Quỳnh', CAST(N'2005-07-22' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS101', N'Nguyễn Thị Thu', CAST(N'2005-07-31' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS102', N'Phạm Hoàng Quân', CAST(N'2005-08-01' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS103', N'Trần Thị Hải Yến', CAST(N'2005-08-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS104', N'Lê Hoài Bảo', CAST(N'2005-08-22' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS105', N'Đinh Hoàng Hải', CAST(N'2005-08-31' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS106', N'Hoàng Bảo Châu', CAST(N'2005-09-01' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS107', N'Vũ Tuấn Kiệt', CAST(N'2005-09-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS108', N'Bùi Thị Thùy Linh', CAST(N'2005-09-15' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS109', N'Đặng Thanh Ngân', CAST(N'2005-09-30' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS110', N'Phan Hữu Thắng', CAST(N'2005-10-01' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS111', N'Võ Thị Bảo Trân', CAST(N'2005-10-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS112', N'Dương Ngọc Hân', CAST(N'2005-10-20' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS113', N'Đỗ Thị Kim Dung', CAST(N'2005-10-31' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS114', N'Lý Bảo Minh', CAST(N'2005-11-01' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS115', N'Tô Quốc Huy', CAST(N'2005-11-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS116', N'Ngô Thanh Vân', CAST(N'2005-11-22' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS117', N'Cao Minh Huyền', CAST(N'2005-11-30' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS118', N'Lương Đình Khôi', CAST(N'2005-12-01' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS119', N'Hà Hữu Thịnh', CAST(N'2005-12-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS120', N'Trịnh Thị Minh Thư', CAST(N'2005-12-15' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS121', N'Nguyễn Hải Đăng', CAST(N'2005-12-25' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS122', N'Nguyễn Thanh Hằng', CAST(N'2005-12-31' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS123', N'Trần Quốc Anh', CAST(N'2005-02-22' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS124', N'Lê Ngọc Mai', CAST(N'2005-03-05' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS125', N'Phạm Thị Hải Yến', CAST(N'2005-06-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS126', N'Hoàng Hữu Thắng', CAST(N'2005-08-05' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS127', N'Vũ Thanh Tùng', CAST(N'2005-09-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS128', N'Bùi Quang Nhật', CAST(N'2005-10-05' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS129', N'Đặng Thị Ánh Nguyệt', CAST(N'2005-11-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS130', N'Phan Minh Thư', CAST(N'2005-12-05' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS131', N'Võ Anh Tuấn', CAST(N'2005-01-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS132', N'Dương Bảo Linh', CAST(N'2005-02-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS133', N'Đỗ Văn Dũng', CAST(N'2005-03-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS134', N'Lý Khánh Ngọc', CAST(N'2005-04-05' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS135', N'Tô Trúc Linh', CAST(N'2005-05-25' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS136', N'Ngô Thị Huyền', CAST(N'2005-06-25' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS137', N'Cao Văn Đạt', CAST(N'2005-07-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS138', N'Lương Thị Kim Ngân', CAST(N'2005-08-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS139', N'Hà Thái Bình', CAST(N'2005-09-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS140', N'Trịnh Trần Nam', CAST(N'2005-10-15' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS141', N'Nguyễn Thị Như Ý', CAST(N'2005-11-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS142', N'Phạm Quốc Huy', CAST(N'2005-12-20' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS143', N'Trần Bảo Phương', CAST(N'2005-01-25' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS144', N'Lê Quỳnh Anh', CAST(N'2005-02-20' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS145', N'Đinh Văn Mạnh', CAST(N'2005-03-25' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS146', N'Hoàng Thị Phương Hoa', CAST(N'2005-04-15' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS147', N'Vũ Bảo Nam', CAST(N'2005-05-30' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS148', N'Bùi Ngọc Hân', CAST(N'2005-06-20' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS149', N'Đặng Khánh Phương', CAST(N'2005-07-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS150', N'Phan Thanh Bình', CAST(N'2005-08-25' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS151', N'Võ Thị Tuyết Nhi', CAST(N'2006-01-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS152', N'Dương Trường Giang', CAST(N'2006-01-15' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS153', N'Đỗ Ngọc Anh', CAST(N'2006-01-30' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS154', N'Lý Thiên Kim', CAST(N'2006-02-05' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS155', N'Tô Văn Long', CAST(N'2006-02-14' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS156', N'Ngô Nhật Minh', CAST(N'2006-02-28' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS157', N'Cao Khánh Linh', CAST(N'2006-03-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS158', N'Lương Ngọc Bích', CAST(N'2006-03-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS159', N'Hà Ngọc Diệp', CAST(N'2006-03-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS160', N'Trịnh Hồng Nhung', CAST(N'2006-03-31' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS161', N'Nguyễn Bảo Hân', CAST(N'2006-04-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS162', N'Phạm Minh Thắng', CAST(N'2006-04-15' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS163', N'Trần Văn Sơn', CAST(N'2006-04-22' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS164', N'Lê Ngọc Thanh', CAST(N'2006-04-30' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS165', N'Đinh Thị Thúy Nga', CAST(N'2006-05-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS166', N'Hoàng Văn Phúc', CAST(N'2006-05-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS167', N'Vũ Minh Tuấn', CAST(N'2006-05-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS168', N'Bùi Thị Diệu Hương', CAST(N'2006-05-31' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS169', N'Đặng Hồng Thắm', CAST(N'2006-06-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS170', N'Phan Bảo Long', CAST(N'2006-06-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS171', N'Võ Thái Bảo', CAST(N'2006-06-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS172', N'Dương Xuân Trường', CAST(N'2006-06-30' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS173', N'Đỗ Quỳnh Hương', CAST(N'2006-07-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS174', N'Lý Hữu Đức', CAST(N'2006-07-14' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS175', N'Tô Thị Kim Tuyến', CAST(N'2006-07-22' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS176', N'Ngô Quang Đạt', CAST(N'2006-07-31' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS177', N'Cao Ngọc Lan', CAST(N'2006-08-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS178', N'Lương Tuấn Anh', CAST(N'2006-08-15' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS179', N'Hà Như Quỳnh', CAST(N'2006-08-22' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS180', N'Trịnh Văn Tân', CAST(N'2006-08-31' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS181', N'Nguyễn Trường An', CAST(N'2006-09-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS182', N'Phạm Thị Kim Yến', CAST(N'2006-09-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS183', N'Trần Anh Duy', CAST(N'2006-09-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS184', N'Lê Bích Thảo', CAST(N'2006-09-30' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS185', N'Đinh Quang Khải', CAST(N'2006-10-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS186', N'Hoàng Thu Hà', CAST(N'2006-10-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS187', N'Vũ Hoàng Nam', CAST(N'2006-10-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS188', N'Bùi Thị Hoài Anh', CAST(N'2006-10-31' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS189', N'Đặng Phương Thảo', CAST(N'2006-11-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS190', N'Phan Gia Huy', CAST(N'2006-11-15' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS191', N'Võ Bảo Châu', CAST(N'2006-11-22' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS192', N'Dương Thanh Trúc', CAST(N'2006-11-30' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS193', N'Đỗ Thị Hồng Hoa', CAST(N'2006-12-01' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS194', N'Lý Minh Châu', CAST(N'2006-12-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS195', N'Tô Bích Liên', CAST(N'2006-12-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS196', N'Ngô Thị Phượng', CAST(N'2006-12-25' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS197', N'Cao Tuấn Tú', CAST(N'2006-12-31' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS198', N'Lương Hồng Nhung', CAST(N'2006-02-24' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS199', N'Hà Khánh Hà', CAST(N'2006-03-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS200', N'Trịnh Đức Tâm', CAST(N'2006-06-05' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS201', N'Nguyễn Thị Thu Hằng', CAST(N'2006-08-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS202', N'Phạm Anh Đào', CAST(N'2006-09-05' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS203', N'Trần Minh Tuyền', CAST(N'2006-10-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS204', N'Lê Bảo Quỳnh', CAST(N'2006-11-05' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS205', N'Đinh Quốc Phong', CAST(N'2006-12-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS206', N'Hoàng Hữu Phú', CAST(N'2006-01-20' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS207', N'Vũ Bích Ngọc', CAST(N'2006-02-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS208', N'Bùi Thị Ngọc Hiếu', CAST(N'2006-03-15' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS209', N'Đặng Văn Tiến', CAST(N'2006-04-05' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS210', N'Phan Hồng Nhung', CAST(N'2006-05-25' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS211', N'Võ Thanh Hiếu', CAST(N'2006-06-25' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS212', N'Dương Thu Trang', CAST(N'2006-07-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS213', N'Đỗ Hữu Tài', CAST(N'2006-08-10' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS214', N'Lý Thiên Phúc', CAST(N'2006-09-20' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS215', N'Tô Thị Ngọc Thủy', CAST(N'2006-10-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS216', N'Ngô Đức Thịnh', CAST(N'2006-11-10' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS217', N'Cao Hồng Vân', CAST(N'2006-12-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS218', N'Lương Thu Huyền', CAST(N'2006-01-25' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS219', N'Hà Tuấn Minh', CAST(N'2006-02-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS220', N'Trịnh Văn Phú', CAST(N'2006-03-25' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS221', N'Nguyễn Minh Tâm', CAST(N'2006-04-15' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS222', N'Nguyễn Văn Thái', CAST(N'2006-05-30' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS223', N'Trần Thị Lan', CAST(N'2006-06-20' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS224', N'Lê Hoàng Anh', CAST(N'2006-07-05' AS Date), 0, N'Hà Nội')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [DiaChi]) VALUES (N'HS225', N'Phạm Minh Quân', CAST(N'2006-08-25' AS Date), 1, N'Hà Nội')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL001', N'HS001', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL002', N'HS002', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL003', N'HS003', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL004', N'HS004', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL005', N'HS005', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL006', N'HS006', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL007', N'HS007', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL008', N'HS008', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL009', N'HS009', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL010', N'HS010', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL011', N'HS011', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL012', N'HS012', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL013', N'HS013', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL014', N'HS014', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL015', N'HS015', N'L001')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL016', N'HS016', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL017', N'HS017', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL018', N'HS018', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL019', N'HS019', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL020', N'HS020', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL021', N'HS021', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL022', N'HS022', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL023', N'HS023', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL024', N'HS024', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL025', N'HS025', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL026', N'HS026', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL027', N'HS027', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL028', N'HS028', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL029', N'HS029', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL030', N'HS030', N'L002')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL031', N'HS031', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL032', N'HS032', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL033', N'HS033', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL034', N'HS034', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL035', N'HS035', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL036', N'HS036', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL037', N'HS037', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL038', N'HS038', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL039', N'HS039', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL040', N'HS040', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL041', N'HS041', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL042', N'HS042', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL043', N'HS043', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL044', N'HS044', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL045', N'HS045', N'L003')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL046', N'HS046', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL047', N'HS047', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL048', N'HS048', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL049', N'HS049', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL050', N'HS050', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL051', N'HS051', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL052', N'HS052', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL053', N'HS053', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL054', N'HS054', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL055', N'HS055', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL056', N'HS056', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL057', N'HS057', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL058', N'HS058', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL059', N'HS059', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL060', N'HS060', N'L004')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL061', N'HS061', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL062', N'HS062', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL063', N'HS063', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL064', N'HS064', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL065', N'HS065', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL066', N'HS066', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL067', N'HS067', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL068', N'HS068', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL069', N'HS069', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL070', N'HS070', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL071', N'HS071', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL072', N'HS072', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL073', N'HS073', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL074', N'HS074', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL075', N'HS075', N'L005')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL076', N'HS076', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL077', N'HS077', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL078', N'HS078', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL079', N'HS079', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL080', N'HS080', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL081', N'HS081', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL082', N'HS082', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL083', N'HS083', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL084', N'HS084', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL085', N'HS085', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL086', N'HS086', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL087', N'HS087', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL088', N'HS088', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL089', N'HS089', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL090', N'HS090', N'L006')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL091', N'HS091', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL092', N'HS092', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL093', N'HS093', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL094', N'HS094', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL095', N'HS095', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL096', N'HS096', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL097', N'HS097', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL098', N'HS098', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL099', N'HS099', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL100', N'HS100', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL101', N'HS101', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL102', N'HS102', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL103', N'HS103', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL104', N'HS104', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL105', N'HS105', N'L007')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL106', N'HS106', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL107', N'HS107', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL108', N'HS108', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL109', N'HS109', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL110', N'HS110', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL111', N'HS111', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL112', N'HS112', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL113', N'HS113', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL114', N'HS114', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL115', N'HS115', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL116', N'HS116', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL117', N'HS117', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL118', N'HS118', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL119', N'HS119', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL120', N'HS120', N'L008')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL121', N'HS121', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL122', N'HS122', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL123', N'HS123', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL124', N'HS124', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL125', N'HS125', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL126', N'HS126', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL127', N'HS127', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL128', N'HS128', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL129', N'HS129', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL130', N'HS130', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL131', N'HS131', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL132', N'HS132', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL133', N'HS133', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL134', N'HS134', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL135', N'HS135', N'L009')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL136', N'HS136', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL137', N'HS137', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL138', N'HS138', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL139', N'HS139', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL140', N'HS140', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL141', N'HS141', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL142', N'HS142', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL143', N'HS143', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL144', N'HS144', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL145', N'HS145', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL146', N'HS146', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL147', N'HS147', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL148', N'HS148', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL149', N'HS149', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL150', N'HS150', N'L010')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL151', N'HS151', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL152', N'HS152', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL153', N'HS153', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL154', N'HS154', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL155', N'HS155', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL156', N'HS156', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL157', N'HS157', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL158', N'HS158', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL159', N'HS159', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL160', N'HS160', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL161', N'HS161', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL162', N'HS162', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL163', N'HS163', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL164', N'HS164', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL165', N'HS165', N'L011')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL166', N'HS166', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL167', N'HS167', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL168', N'HS168', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL169', N'HS169', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL170', N'HS170', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL171', N'HS171', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL172', N'HS172', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL173', N'HS173', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL174', N'HS174', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL175', N'HS175', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL176', N'HS176', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL177', N'HS177', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL178', N'HS178', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL179', N'HS179', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL180', N'HS180', N'L012')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL181', N'HS181', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL182', N'HS182', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL183', N'HS183', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL184', N'HS184', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL185', N'HS185', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL186', N'HS186', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL187', N'HS187', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL188', N'HS188', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL189', N'HS189', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL190', N'HS190', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL191', N'HS191', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL192', N'HS192', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL193', N'HS193', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL194', N'HS194', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL195', N'HS195', N'L013')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL196', N'HS196', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL197', N'HS197', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL198', N'HS198', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL199', N'HS199', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL200', N'HS200', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL201', N'HS201', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL202', N'HS202', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL203', N'HS203', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL204', N'HS204', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL205', N'HS205', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL206', N'HS206', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL207', N'HS207', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL208', N'HS208', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL209', N'HS209', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL210', N'HS210', N'L014')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL211', N'HS211', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL212', N'HS212', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL213', N'HS213', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL214', N'HS214', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL215', N'HS215', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL216', N'HS216', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL217', N'HS217', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL218', N'HS218', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL219', N'HS219', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL220', N'HS220', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL221', N'HS221', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL222', N'HS222', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL223', N'HS223', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL224', N'HS224', N'L015')
GO
INSERT [dbo].[HocSinh_Lop] ([MaHSL], [MaHS], [MaLop]) VALUES (N'HSL225', N'HS225', N'L015')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L001', N'12A1', N'12', N'GV001')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L002', N'12A2', N'12', N'GV002')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L003', N'12A3', N'12', N'GV003')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L004', N'12A4', N'12', N'GV005')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L005', N'12A5', N'12', N'GV008')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L006', N'11A1', N'11', N'GV004')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L007', N'11A2', N'11', N'GV006')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L008', N'11A3', N'11', N'GV007')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L009', N'11A4', N'11', N'GV009')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L010', N'11A5', N'11', N'GV014')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L011', N'10A1', N'10', N'GV011')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L012', N'10A2', N'10', N'GV013')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L013', N'10A3', N'10', N'GV012')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L014', N'10A4', N'10', N'GV015')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L015', N'10A5', N'10', N'GV019')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [HeSo], [DiemTK]) VALUES (N'MH001', N'Toán Học', 45, 2, NULL)
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [HeSo], [DiemTK]) VALUES (N'MH002', N'Vật Lý', 30, 1, NULL)
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [HeSo], [DiemTK]) VALUES (N'MH003', N'Hoá Học', 30, 1, NULL)
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [HeSo], [DiemTK]) VALUES (N'MH004', N'Văn Học', 45, 2, NULL)
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [HeSo], [DiemTK]) VALUES (N'MH005', N'Lịch Sử', 30, 1, NULL)
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [HeSo], [DiemTK]) VALUES (N'MH006', N'Địa Lý', 30, 1, NULL)
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [HeSo], [DiemTK]) VALUES (N'MH007', N'Tiếng Anh', 40, 1, NULL)
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [HeSo], [DiemTK]) VALUES (N'MH008', N'Sinh Học', 30, 1, NULL)
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK001', N'HK1', N'MH001')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK002', N'HK1', N'MH002')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK003', N'HK1', N'MH003')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK004', N'HK1', N'MH004')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK005', N'HK1', N'MH005')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK006', N'HK1', N'MH006')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK007', N'HK1', N'MH007')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK008', N'HK1', N'MH008')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK009', N'HK2', N'MH001')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK010', N'HK2', N'MH002')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK011', N'HK2', N'MH003')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK012', N'HK2', N'MH004')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK013', N'HK2', N'MH005')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK014', N'HK2', N'MH006')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK015', N'HK2', N'MH007')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK016', N'HK2', N'MH008')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK017', N'HK1-2425', N'MH001')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK018', N'HK1-2425', N'MH002')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK019', N'HK1-2425', N'MH003')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK020', N'HK1-2425', N'MH004')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK021', N'HK1-2425', N'MH005')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK022', N'HK1-2425', N'MH006')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK023', N'HK1-2425', N'MH007')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK024', N'HK1-2425', N'MH008')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK025', N'HK2-2425', N'MH001')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK026', N'HK2-2425', N'MH002')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK027', N'HK2-2425', N'MH003')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK028', N'HK2-2425', N'MH004')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK029', N'HK2-2425', N'MH005')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK030', N'HK2-2425', N'MH006')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK031', N'HK2-2425', N'MH007')
GO
INSERT [dbo].[MonHoc_HocKy] ([MaMHHK], [MaHK], [MaMH]) VALUES (N'MK032', N'HK2-2425', N'MH008')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK001', N'nva', N'123', N'nguyenvanaa@gmail.com', N'988342659', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK002', N'lvc', N'123', N'levan18@gmail.com', N'225622446', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK003', N'ptb', N'123', N'phamthi45@gmail.com', N'339660208', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK004', N'binhan', N'nba1234', N'nguyenbinhan@gmail.com', N'987654321', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK005', N'ngducan', N'123ducan', N'ducannguyen00@gamil.com', N'987654123', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK006', N'maianh', N'maianh1980', N'maianhnguyen1980@gmail.com', N'987657732', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK007', N'chien', N'khacchien', N'chiennguyen12@gmail.com', N'987665471', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK008', N'cuonglai', N'cuong1984', N'cuong1103@gmail.com', N'987687621', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK009', N'dtdiem', N'31191', N'diem1991@gmail.com', N'987688917', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK010', N'dung', N'123456d', N'dungdz@gmail.com', N'987654321', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK011', N'dat', N'dat09', N'datgiotai@gmail.com', N'987654777', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK012', N'dinhcong', N'cong12', N'congding@gmail.com', N'987654666', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK013', N'kieuanh', N'ka123', N'kieuanh1988@gmail.com', N'987678543', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK014', N'nam', N'nam321', N'namtran@gmail.com', N'321542132', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK015', N'anhhuy', N'456', N'nguyenanhhuy@gmail.com', N'987678132', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK016', N'huyenx', N'huyen231', N'vthuyen22@gmail.com', N'339660302', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK017', N'ngan', N'ngan123', N'kimngan11@gmail.com', N'843966014', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK018', N'thao', N'thao123', N'thao@gmail.com', N'984754652', N'GV', N'')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser], [Anh]) VALUES (N'TK019', N'haiyen', N'haiyen123', N'haiyen2@gmail.com', N'984754652', N'GV', N'')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB001', N'L001', N'MH001', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB002', N'L001', N'MH001', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB003', N'L001', N'MH003', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB004', N'L001', N'MH004', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB005', N'L001', N'MH004', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB006', N'L001', N'MH007', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB007', N'L001', N'MH007', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB008', N'L001', N'MH005', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB009', N'L001', N'MH002', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB010', N'L001', N'MH006', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB011', N'L001', N'MH003', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB012', N'L001', N'MH008', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB013', N'L001', N'MH004', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB014', N'L001', N'MH005', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB015', N'L001', N'MH007', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB016', N'L001', N'MH008', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB017', N'L001', N'MH006', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB018', N'L001', N'MH007', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB019', N'L001', N'MH001', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB020', N'L001', N'MH004', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB021', N'L001', N'MH001', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB022', N'L001', N'MH002', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB023', N'L002', N'MH001', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV013', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB024', N'L002', N'MH008', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB025', N'L002', N'MH006', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB026', N'L002', N'MH007', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB027', N'L002', N'MH007', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB028', N'L002', N'MH004', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB029', N'L002', N'MH004', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB030', N'L002', N'MH005', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB031', N'L002', N'MH003', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB032', N'L002', N'MH001', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV013', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB033', N'L002', N'MH002', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB034', N'L002', N'MH007', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB035', N'L002', N'MH008', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB036', N'L002', N'MH006', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB037', N'L002', N'MH001', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV013', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB038', N'L002', N'MH004', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB039', N'L002', N'MH005', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB040', N'L002', N'MH004', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB041', N'L002', N'MH003', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB042', N'L002', N'MH002', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB043', N'L002', N'MH001', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV013', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB044', N'L002', N'MH007', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB045', N'L003', N'MH004', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB046', N'L003', N'MH004', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB047', N'L003', N'MH005', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB048', N'L003', N'MH008', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB049', N'L003', N'MH007', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB050', N'L003', N'MH001', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB051', N'L003', N'MH001', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB052', N'L003', N'MH003', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV012', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB053', N'L003', N'MH006', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB054', N'L003', N'MH002', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB055', N'L003', N'MH007', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB056', N'L003', N'MH007', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB057', N'L003', N'MH003', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV012', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB058', N'L003', N'MH008', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB059', N'L003', N'MH001', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB060', N'L003', N'MH002', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB061', N'L003', N'MH004', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB062', N'L003', N'MH007', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB063', N'L003', N'MH006', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB064', N'L003', N'MH001', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB065', N'L003', N'MH004', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB066', N'L003', N'MH005', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB067', N'L006', N'MH001', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB068', N'L006', N'MH007', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB069', N'L006', N'MH007', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB070', N'L006', N'MH008', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV018', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB071', N'L006', N'MH003', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB072', N'L006', N'MH006', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV014', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB073', N'L006', N'MH004', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB074', N'L006', N'MH004', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB075', N'L006', N'MH005', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB076', N'L006', N'MH002', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV009', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB077', N'L006', N'MH008', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV018', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB078', N'L006', N'MH006', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV014', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB079', N'L006', N'MH001', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB080', N'L006', N'MH003', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB081', N'L006', N'MH002', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV009', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB082', N'L006', N'MH007', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB083', N'L006', N'MH001', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB084', N'L006', N'MH001', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB085', N'L006', N'MH005', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB086', N'L006', N'MH007', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB087', N'L006', N'MH004', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB088', N'L006', N'MH004', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB089', N'L004', N'MH007', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB090', N'L004', N'MH001', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB091', N'L004', N'MH008', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB092', N'L004', N'MH006', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB093', N'L004', N'MH004', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB094', N'L004', N'MH004', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB095', N'L004', N'MH004', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB096', N'L004', N'MH002', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB097', N'L004', N'MH003', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV012', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB098', N'L004', N'MH005', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB099', N'L004', N'MH001', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB100', N'L004', N'MH001', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB101', N'L004', N'MH006', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB102', N'L004', N'MH007', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB103', N'L004', N'MH008', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB104', N'L004', N'MH005', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB105', N'L004', N'MH002', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB106', N'L004', N'MH004', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB107', N'L004', N'MH001', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB108', N'L004', N'MH007', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB109', N'L004', N'MH007', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB110', N'L004', N'MH003', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV012', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB111', N'L005', N'MH004', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB112', N'L005', N'MH004', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB113', N'L005', N'MH001', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB114', N'L005', N'MH001', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB115', N'L005', N'MH005', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB116', N'L005', N'MH002', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB117', N'L005', N'MH008', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB118', N'L005', N'MH003', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB119', N'L005', N'MH007', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB120', N'L005', N'MH007', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB121', N'L005', N'MH001', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB122', N'L005', N'MH006', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB123', N'L005', N'MH002', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB124', N'L005', N'MH007', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB125', N'L005', N'MH004', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB126', N'L005', N'MH004', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB127', N'L005', N'MH008', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB128', N'L005', N'MH001', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB129', N'L005', N'MH007', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB130', N'L005', N'MH006', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB131', N'L005', N'MH005', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB132', N'L005', N'MH003', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB133', N'L007', N'MH007', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB134', N'L007', N'MH005', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB135', N'L007', N'MH002', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV009', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB136', N'L007', N'MH004', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB137', N'L007', N'MH004', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB138', N'L007', N'MH001', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB139', N'L007', N'MH001', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB140', N'L007', N'MH008', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV018', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB141', N'L007', N'MH004', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB142', N'L007', N'MH006', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV014', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB143', N'L007', N'MH005', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB144', N'L007', N'MH003', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB145', N'L007', N'MH007', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB146', N'L007', N'MH008', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV018', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB147', N'L007', N'MH003', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB148', N'L007', N'MH001', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB149', N'L007', N'MH007', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB150', N'L007', N'MH006', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV014', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB151', N'L007', N'MH004', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB152', N'L007', N'MH002', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV009', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB153', N'L007', N'MH007', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB154', N'L007', N'MH001', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB155', N'L008', N'MH004', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB156', N'L008', N'MH004', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB157', N'L008', N'MH005', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB158', N'L008', N'MH001', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB159', N'L008', N'MH001', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB160', N'L008', N'MH008', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV018', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB161', N'L008', N'MH006', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB162', N'L008', N'MH001', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB163', N'L008', N'MH007', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB164', N'L008', N'MH007', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB165', N'L008', N'MH004', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB166', N'L008', N'MH002', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV009', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB167', N'L008', N'MH003', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB168', N'L008', N'MH002', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV009', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB169', N'L008', N'MH007', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB170', N'L008', N'MH003', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB171', N'L008', N'MH004', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB172', N'L008', N'MH008', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV018', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB173', N'L008', N'MH005', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB174', N'L008', N'MH001', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB175', N'L008', N'MH006', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB176', N'L008', N'MH007', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB177', N'L009', N'MH005', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB178', N'L009', N'MH007', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB179', N'L009', N'MH001', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB180', N'L009', N'MH003', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB181', N'L009', N'MH008', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV018', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB182', N'L009', N'MH007', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB183', N'L009', N'MH007', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB184', N'L009', N'MH002', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV009', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB185', N'L009', N'MH001', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB186', N'L009', N'MH001', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB187', N'L009', N'MH006', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB188', N'L009', N'MH005', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB189', N'L009', N'MH004', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB190', N'L009', N'MH004', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB191', N'L009', N'MH008', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV018', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB192', N'L009', N'MH004', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB193', N'L009', N'MH007', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB194', N'L009', N'MH004', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB195', N'L009', N'MH002', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV009', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB196', N'L009', N'MH003', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB197', N'L009', N'MH001', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB198', N'L009', N'MH006', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB199', N'L010', N'MH006', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV014', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB200', N'L010', N'MH008', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV018', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB201', N'L010', N'MH004', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB202', N'L010', N'MH005', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB203', N'L010', N'MH002', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV009', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB204', N'L010', N'MH004', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB205', N'L010', N'MH008', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV018', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB206', N'L010', N'MH001', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB207', N'L010', N'MH001', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB208', N'L010', N'MH003', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB209', N'L010', N'MH007', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV019', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB210', N'L010', N'MH004', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB211', N'L010', N'MH005', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB212', N'L010', N'MH007', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV019', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB213', N'L010', N'MH004', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB214', N'L010', N'MH006', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV014', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB215', N'L010', N'MH001', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB216', N'L010', N'MH003', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB217', N'L010', N'MH007', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV019', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB218', N'L010', N'MH007', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV019', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB219', N'L010', N'MH002', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV009', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB220', N'L010', N'MH001', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB221', N'L011', N'MH001', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB222', N'L011', N'MH001', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB223', N'L011', N'MH003', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB224', N'L011', N'MH004', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB225', N'L011', N'MH004', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB226', N'L011', N'MH007', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB227', N'L011', N'MH007', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB228', N'L011', N'MH005', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB229', N'L011', N'MH002', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB230', N'L011', N'MH006', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB231', N'L011', N'MH003', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB232', N'L011', N'MH008', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB233', N'L011', N'MH004', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB234', N'L011', N'MH005', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB235', N'L011', N'MH007', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB236', N'L011', N'MH008', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB237', N'L011', N'MH006', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB238', N'L011', N'MH007', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB239', N'L011', N'MH001', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB240', N'L011', N'MH004', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB241', N'L011', N'MH001', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB242', N'L011', N'MH002', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB243', N'L012', N'MH001', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV013', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB244', N'L012', N'MH008', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB245', N'L012', N'MH006', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB246', N'L012', N'MH007', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB247', N'L012', N'MH007', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB248', N'L012', N'MH004', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB249', N'L012', N'MH004', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB250', N'L012', N'MH005', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB251', N'L012', N'MH003', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB252', N'L012', N'MH001', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV013', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB253', N'L012', N'MH002', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB254', N'L012', N'MH007', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB255', N'L012', N'MH008', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB256', N'L012', N'MH006', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB257', N'L012', N'MH001', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV013', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB258', N'L012', N'MH004', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB259', N'L012', N'MH005', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB260', N'L012', N'MH004', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV016', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB261', N'L012', N'MH003', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB262', N'L012', N'MH002', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB263', N'L012', N'MH001', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV013', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB264', N'L012', N'MH007', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB265', N'L013', N'MH007', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB266', N'L013', N'MH001', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB267', N'L013', N'MH008', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB268', N'L013', N'MH006', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB269', N'L013', N'MH004', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB270', N'L013', N'MH004', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB271', N'L013', N'MH004', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB272', N'L013', N'MH002', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB273', N'L013', N'MH003', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV012', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB274', N'L013', N'MH005', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB275', N'L013', N'MH001', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB276', N'L013', N'MH001', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB277', N'L013', N'MH006', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB278', N'L013', N'MH007', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB279', N'L013', N'MH008', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB280', N'L013', N'MH005', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB281', N'L013', N'MH002', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB282', N'L013', N'MH004', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB283', N'L013', N'MH001', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV005', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB284', N'L013', N'MH007', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB285', N'L013', N'MH007', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV017', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB286', N'L013', N'MH003', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV012', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB287', N'L014', N'MH004', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB288', N'L014', N'MH004', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB289', N'L014', N'MH001', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB290', N'L014', N'MH001', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB291', N'L014', N'MH005', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB292', N'L014', N'MH002', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB293', N'L014', N'MH008', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB294', N'L014', N'MH003', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB295', N'L014', N'MH007', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB296', N'L014', N'MH007', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB297', N'L014', N'MH001', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB298', N'L014', N'MH006', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB299', N'L014', N'MH002', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV003', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB300', N'L014', N'MH007', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB301', N'L014', N'MH004', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB302', N'L014', N'MH004', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV008', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB303', N'L014', N'MH008', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV015', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB304', N'L014', N'MH001', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB305', N'L014', N'MH007', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV010', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB306', N'L014', N'MH006', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV007', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB307', N'L014', N'MH005', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV011', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB308', N'L014', N'MH003', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB309', N'L015', N'MH006', N'Thứ 2', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV014', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB310', N'L015', N'MH008', N'Thứ 2', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV018', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB311', N'L015', N'MH004', N'Thứ 2', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB312', N'L015', N'MH005', N'Thứ 2', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB313', N'L015', N'MH002', N'Thứ 2', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV009', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB314', N'L015', N'MH004', N'Thứ 3', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB315', N'L015', N'MH008', N'Thứ 3', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV018', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB316', N'L015', N'MH001', N'Thứ 3', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB317', N'L015', N'MH001', N'Thứ 3', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB318', N'L015', N'MH003', N'Thứ 3', 5, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB319', N'L015', N'MH007', N'Thứ 4', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV019', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB320', N'L015', N'MH004', N'Thứ 4', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB321', N'L015', N'MH005', N'Thứ 4', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV006', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB322', N'L015', N'MH007', N'Thứ 4', 4, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV019', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB323', N'L015', N'MH004', N'Thứ 5', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV002', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB324', N'L015', N'MH006', N'Thứ 5', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV014', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB325', N'L015', N'MH001', N'Thứ 6', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB326', N'L015', N'MH003', N'Thứ 6', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV004', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB327', N'L015', N'MH007', N'Thứ 6', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV019', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB328', N'L015', N'MH007', N'Thứ 7', 1, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV019', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB329', N'L015', N'MH002', N'Thứ 7', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV009', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB330', N'L015', N'MH001', N'Thứ 7', 3, CAST(N'2022-09-11' AS Date), CAST(N'2023-01-07' AS Date), N'GV001', N'HK1')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB331', N'L011', N'MH001', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB332', N'L011', N'MH001', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB333', N'L011', N'MH003', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB334', N'L011', N'MH004', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB335', N'L011', N'MH004', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB336', N'L011', N'MH007', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB337', N'L011', N'MH007', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB338', N'L011', N'MH005', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB339', N'L011', N'MH002', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB340', N'L011', N'MH006', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB341', N'L011', N'MH003', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB342', N'L011', N'MH008', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB343', N'L011', N'MH004', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB344', N'L011', N'MH005', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB345', N'L011', N'MH007', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB346', N'L011', N'MH008', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB347', N'L011', N'MH006', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB348', N'L011', N'MH007', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB349', N'L011', N'MH001', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB350', N'L011', N'MH004', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB351', N'L011', N'MH001', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB352', N'L011', N'MH002', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB353', N'L012', N'MH001', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV013', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB354', N'L012', N'MH008', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB355', N'L012', N'MH006', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB356', N'L012', N'MH007', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB357', N'L012', N'MH007', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB358', N'L012', N'MH004', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB359', N'L012', N'MH004', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB360', N'L012', N'MH005', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB361', N'L012', N'MH003', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB362', N'L012', N'MH001', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV013', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB363', N'L012', N'MH002', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB364', N'L012', N'MH007', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB365', N'L012', N'MH008', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB366', N'L012', N'MH006', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB367', N'L012', N'MH001', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV013', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB368', N'L012', N'MH004', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB369', N'L012', N'MH005', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB370', N'L012', N'MH004', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB371', N'L012', N'MH003', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB372', N'L012', N'MH002', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB373', N'L012', N'MH001', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV013', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB374', N'L012', N'MH007', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB375', N'L013', N'MH007', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB376', N'L013', N'MH001', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB377', N'L013', N'MH008', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB378', N'L013', N'MH006', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB379', N'L013', N'MH004', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB380', N'L013', N'MH004', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB381', N'L013', N'MH004', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB382', N'L013', N'MH002', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB383', N'L013', N'MH003', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV012', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB384', N'L013', N'MH005', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB385', N'L013', N'MH001', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB386', N'L013', N'MH001', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB387', N'L013', N'MH006', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB388', N'L013', N'MH007', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB389', N'L013', N'MH008', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB390', N'L013', N'MH005', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB391', N'L013', N'MH002', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB392', N'L013', N'MH004', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB393', N'L013', N'MH001', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB394', N'L013', N'MH007', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB395', N'L013', N'MH007', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB396', N'L013', N'MH003', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV012', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB397', N'L014', N'MH004', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB398', N'L014', N'MH004', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB399', N'L014', N'MH001', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB400', N'L014', N'MH001', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB401', N'L014', N'MH005', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB402', N'L014', N'MH002', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB403', N'L014', N'MH008', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB404', N'L014', N'MH003', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB405', N'L014', N'MH007', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB406', N'L014', N'MH007', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB407', N'L014', N'MH001', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB408', N'L014', N'MH006', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB409', N'L014', N'MH002', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB410', N'L014', N'MH007', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB411', N'L014', N'MH004', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB412', N'L014', N'MH004', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB413', N'L014', N'MH008', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB414', N'L014', N'MH001', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB415', N'L014', N'MH007', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB416', N'L014', N'MH006', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB417', N'L014', N'MH005', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB418', N'L014', N'MH003', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB419', N'L015', N'MH006', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV014', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB420', N'L015', N'MH008', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV018', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB421', N'L015', N'MH004', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB422', N'L015', N'MH005', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB423', N'L015', N'MH002', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV009', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB424', N'L015', N'MH004', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB425', N'L015', N'MH008', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV018', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB426', N'L015', N'MH001', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB427', N'L015', N'MH001', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB428', N'L015', N'MH003', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB429', N'L015', N'MH007', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV019', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB430', N'L015', N'MH004', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB431', N'L015', N'MH005', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB432', N'L015', N'MH007', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV019', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB433', N'L015', N'MH004', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB434', N'L015', N'MH006', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV014', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB435', N'L015', N'MH001', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB436', N'L015', N'MH003', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB437', N'L015', N'MH007', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV019', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB438', N'L015', N'MH007', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV019', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB439', N'L015', N'MH002', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV009', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB440', N'L015', N'MH001', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB441', N'L001', N'MH001', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB442', N'L001', N'MH001', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB443', N'L001', N'MH003', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB444', N'L001', N'MH004', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB445', N'L001', N'MH004', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB446', N'L001', N'MH007', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB447', N'L001', N'MH007', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB448', N'L001', N'MH005', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB449', N'L001', N'MH002', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB450', N'L001', N'MH006', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB451', N'L001', N'MH003', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB452', N'L001', N'MH008', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB453', N'L001', N'MH004', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB454', N'L001', N'MH005', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB455', N'L001', N'MH007', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB456', N'L001', N'MH008', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB457', N'L001', N'MH006', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB458', N'L001', N'MH007', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB459', N'L001', N'MH001', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB460', N'L001', N'MH004', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB461', N'L001', N'MH001', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB462', N'L001', N'MH002', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB463', N'L002', N'MH001', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV013', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB464', N'L002', N'MH008', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB465', N'L002', N'MH006', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB466', N'L002', N'MH007', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB467', N'L002', N'MH007', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB468', N'L002', N'MH004', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB469', N'L002', N'MH004', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB470', N'L002', N'MH005', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB471', N'L002', N'MH003', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB472', N'L002', N'MH001', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV013', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB473', N'L002', N'MH002', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB474', N'L002', N'MH007', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB475', N'L002', N'MH008', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB476', N'L002', N'MH006', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB477', N'L002', N'MH001', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV013', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB478', N'L002', N'MH004', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB479', N'L002', N'MH005', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB480', N'L002', N'MH004', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV016', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB481', N'L002', N'MH003', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB482', N'L002', N'MH002', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB483', N'L002', N'MH001', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV013', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB484', N'L002', N'MH007', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB485', N'L003', N'MH004', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB486', N'L003', N'MH004', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB487', N'L003', N'MH005', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB488', N'L003', N'MH008', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB489', N'L003', N'MH007', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB490', N'L003', N'MH001', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB491', N'L003', N'MH001', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB492', N'L003', N'MH003', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV012', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB493', N'L003', N'MH006', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB494', N'L003', N'MH002', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB495', N'L003', N'MH007', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB496', N'L003', N'MH007', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB497', N'L003', N'MH003', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV012', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB498', N'L003', N'MH008', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB499', N'L003', N'MH001', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB500', N'L003', N'MH002', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB501', N'L003', N'MH004', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB502', N'L003', N'MH007', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB503', N'L003', N'MH006', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB504', N'L003', N'MH001', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB505', N'L003', N'MH004', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB506', N'L003', N'MH005', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB507', N'L006', N'MH001', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB508', N'L006', N'MH007', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB509', N'L006', N'MH007', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB510', N'L006', N'MH008', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV018', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB511', N'L006', N'MH003', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB512', N'L006', N'MH006', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV014', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB513', N'L006', N'MH004', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB514', N'L006', N'MH004', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB515', N'L006', N'MH005', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB516', N'L006', N'MH002', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV009', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB517', N'L006', N'MH008', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV018', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB518', N'L006', N'MH006', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV014', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB519', N'L006', N'MH001', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB520', N'L006', N'MH003', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB521', N'L006', N'MH002', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV009', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB522', N'L006', N'MH007', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB523', N'L006', N'MH001', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB524', N'L006', N'MH001', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB525', N'L006', N'MH005', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB526', N'L006', N'MH007', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB527', N'L006', N'MH004', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB528', N'L006', N'MH004', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB529', N'L004', N'MH007', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB530', N'L004', N'MH001', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB531', N'L004', N'MH008', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB532', N'L004', N'MH006', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB533', N'L004', N'MH004', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB534', N'L004', N'MH004', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB535', N'L004', N'MH004', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB536', N'L004', N'MH002', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB537', N'L004', N'MH003', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV012', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB538', N'L004', N'MH005', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB539', N'L004', N'MH001', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB540', N'L004', N'MH001', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB541', N'L004', N'MH006', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB542', N'L004', N'MH007', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB543', N'L004', N'MH008', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB544', N'L004', N'MH005', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB545', N'L004', N'MH002', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB546', N'L004', N'MH004', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB547', N'L004', N'MH001', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB548', N'L004', N'MH007', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB549', N'L004', N'MH007', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB550', N'L004', N'MH003', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV012', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB551', N'L005', N'MH004', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB552', N'L005', N'MH004', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB553', N'L005', N'MH001', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB554', N'L005', N'MH001', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB555', N'L005', N'MH005', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB556', N'L005', N'MH002', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB557', N'L005', N'MH008', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB558', N'L005', N'MH003', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB559', N'L005', N'MH007', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB560', N'L005', N'MH007', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB561', N'L005', N'MH001', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB562', N'L005', N'MH006', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB563', N'L005', N'MH002', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV003', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB564', N'L005', N'MH007', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB565', N'L005', N'MH004', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB566', N'L005', N'MH004', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV008', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB567', N'L005', N'MH008', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV015', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB568', N'L005', N'MH001', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB569', N'L005', N'MH007', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB570', N'L005', N'MH006', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB571', N'L005', N'MH005', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV011', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB572', N'L005', N'MH003', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB573', N'L007', N'MH007', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB574', N'L007', N'MH005', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB575', N'L007', N'MH002', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV009', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB576', N'L007', N'MH004', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB577', N'L007', N'MH004', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB578', N'L007', N'MH001', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB579', N'L007', N'MH001', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB580', N'L007', N'MH008', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV018', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB581', N'L007', N'MH004', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB582', N'L007', N'MH006', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV014', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB583', N'L007', N'MH005', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB584', N'L007', N'MH003', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB585', N'L007', N'MH007', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB586', N'L007', N'MH008', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV018', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB587', N'L007', N'MH003', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB588', N'L007', N'MH001', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB589', N'L007', N'MH007', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB590', N'L007', N'MH006', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV014', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB591', N'L007', N'MH004', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB592', N'L007', N'MH002', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV009', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB593', N'L007', N'MH007', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV010', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB594', N'L007', N'MH001', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB595', N'L008', N'MH004', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB596', N'L008', N'MH004', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB597', N'L008', N'MH005', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB598', N'L008', N'MH001', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB599', N'L008', N'MH001', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB600', N'L008', N'MH008', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV018', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB601', N'L008', N'MH006', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB602', N'L008', N'MH001', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB603', N'L008', N'MH007', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB604', N'L008', N'MH007', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB605', N'L008', N'MH004', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB606', N'L008', N'MH002', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV009', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB607', N'L008', N'MH003', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB608', N'L008', N'MH002', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV009', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB609', N'L008', N'MH007', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB610', N'L008', N'MH003', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB611', N'L008', N'MH004', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB612', N'L008', N'MH008', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV018', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB613', N'L008', N'MH005', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB614', N'L008', N'MH001', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB615', N'L008', N'MH006', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB616', N'L008', N'MH007', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB617', N'L009', N'MH005', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB618', N'L009', N'MH007', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB619', N'L009', N'MH001', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB620', N'L009', N'MH003', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB621', N'L009', N'MH008', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV018', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB622', N'L009', N'MH007', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB623', N'L009', N'MH007', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB624', N'L009', N'MH002', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV009', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB625', N'L009', N'MH001', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB626', N'L009', N'MH001', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB627', N'L009', N'MH006', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB628', N'L009', N'MH005', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB629', N'L009', N'MH004', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB630', N'L009', N'MH004', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB631', N'L009', N'MH008', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV018', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB632', N'L009', N'MH004', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB633', N'L009', N'MH007', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV017', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB634', N'L009', N'MH004', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB635', N'L009', N'MH002', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV009', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB636', N'L009', N'MH003', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB637', N'L009', N'MH001', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV005', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB638', N'L009', N'MH006', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV007', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB639', N'L010', N'MH006', N'Thứ 2', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV014', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB640', N'L010', N'MH008', N'Thứ 2', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV018', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB641', N'L010', N'MH004', N'Thứ 2', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB642', N'L010', N'MH005', N'Thứ 2', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB643', N'L010', N'MH002', N'Thứ 2', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV009', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB644', N'L010', N'MH004', N'Thứ 3', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB645', N'L010', N'MH008', N'Thứ 3', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV018', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB646', N'L010', N'MH001', N'Thứ 3', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB647', N'L010', N'MH001', N'Thứ 3', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB648', N'L010', N'MH003', N'Thứ 3', 5, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB649', N'L010', N'MH007', N'Thứ 4', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV019', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB650', N'L010', N'MH004', N'Thứ 4', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB651', N'L010', N'MH005', N'Thứ 4', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV006', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB652', N'L010', N'MH007', N'Thứ 4', 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV019', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB653', N'L010', N'MH004', N'Thứ 5', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV002', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB654', N'L010', N'MH006', N'Thứ 5', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV014', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB655', N'L010', N'MH001', N'Thứ 6', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB656', N'L010', N'MH003', N'Thứ 6', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV004', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB657', N'L010', N'MH007', N'Thứ 6', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV019', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB658', N'L010', N'MH007', N'Thứ 7', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV019', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB659', N'L010', N'MH002', N'Thứ 7', 2, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV009', N'HK2')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc], [MaGV], [MaHK]) VALUES (N'TKB660', N'L010', N'MH001', N'Thứ 7', 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-05-25' AS Date), N'GV001', N'HK2')
GO
ALTER TABLE [dbo].[BaoCaoHocTap]  WITH CHECK ADD  CONSTRAINT [FK_BaoCaoHocTap_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[BaoCaoHocTap] CHECK CONSTRAINT [FK_BaoCaoHocTap_GiaoVien]
GO
ALTER TABLE [dbo].[BaoCaoHocTap]  WITH CHECK ADD  CONSTRAINT [FK_BaoCaoHocTap_HocKy] FOREIGN KEY([MaHK])
REFERENCES [dbo].[HocKy] ([MaHK])
GO
ALTER TABLE [dbo].[BaoCaoHocTap] CHECK CONSTRAINT [FK_BaoCaoHocTap_HocKy]
GO
ALTER TABLE [dbo].[BaoCaoHocTap]  WITH CHECK ADD  CONSTRAINT [FK_BaoCaoHocTap_HocSinh] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinh] ([MaHS])
GO
ALTER TABLE [dbo].[BaoCaoHocTap] CHECK CONSTRAINT [FK_BaoCaoHocTap_HocSinh]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_HocSinh] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinh] ([MaHS])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_HocSinh]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_MonHoc_HocKy] FOREIGN KEY([MaMHHK])
REFERENCES [dbo].[MonHoc_HocKy] ([MaMHHK])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_MonHoc_HocKy]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_MonHoc] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_MonHoc]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_TaiKhoan]
GO
ALTER TABLE [dbo].[HocSinh_Lop]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_Lop_HocSinh] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinh] ([MaHS])
GO
ALTER TABLE [dbo].[HocSinh_Lop] CHECK CONSTRAINT [FK_HocSinh_Lop_HocSinh]
GO
ALTER TABLE [dbo].[HocSinh_Lop]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_Lop_LopHoc] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
GO
ALTER TABLE [dbo].[HocSinh_Lop] CHECK CONSTRAINT [FK_HocSinh_Lop_LopHoc]
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopHoc_GiaoVien] FOREIGN KEY([MaGVCN])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK_LopHoc_GiaoVien]
GO
ALTER TABLE [dbo].[MonHoc_HocKy]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_HocKy_HocKy] FOREIGN KEY([MaHK])
REFERENCES [dbo].[HocKy] ([MaHK])
GO
ALTER TABLE [dbo].[MonHoc_HocKy] CHECK CONSTRAINT [FK_MonHoc_HocKy_HocKy]
GO
ALTER TABLE [dbo].[MonHoc_HocKy]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_HocKy_MonHoc] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[MonHoc_HocKy] CHECK CONSTRAINT [FK_MonHoc_HocKy_MonHoc]
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_GiaoVien]
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_HocKy] FOREIGN KEY([MaHK])
REFERENCES [dbo].[HocKy] ([MaHK])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_HocKy]
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_LopHoc] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_LopHoc]
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_MonHoc] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_MonHoc]
GO
/****** Object:  StoredProcedure [dbo].[GetLopHoc]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLopHoc]
	@Magv NVARCHAR(10)   
AS
BEGIN
    select
	lh.MaLop,lh.TenLop,TenKL,mh.TenMH,gv.HoTen as gvday,gvc.HoTen as gvcn,count(DISTINCT hs.MaHS) as siso
	from LopHoc lh
	LEFT JOIN HocSinh_Lop hs on hs.MaLop=lh.MaLop
	join ThoiKhoaBieu tkb on tkb.MaLop=lh.MaLop
	join MonHoc mh on mh.MaMH=tkb.MaMH
	join GiaoVien gv on gv.MaGV=tkb.MaGV
	join GiaoVien gvc on gvc.MaGV=lh.MaGVCN
    WHERE  tkb.MaGV=@Magv
	group by lh.MaLop,lh.TenLop,TenKL,gv.HoTen,gvc.HoTen,mh.TenMH	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AddHocSinh]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddHocSinh]
    @MaHS NVARCHAR(10),
    @HoTen NVARCHAR(50),
    @NgaySinh DATE,
    @DiaChi NVARCHAR(100),
    @GioiTinh BIT,
    @MaLop NVARCHAR(10)
AS
BEGIN
    INSERT INTO HocSinh (MaHS, HoTen, NgaySinh, DiaChi, GioiTinh)
    VALUES (@MaHS, @HoTen, @NgaySinh, @DiaChi, @GioiTinh)

	DECLARE @MaxMaHSL NVARCHAR(10);
    DECLARE @NewMaHSL NVARCHAR(10);

    -- Lấy mã HSL lớn nhất hiện tại
    SELECT @MaxMaHSL = MAX(MaHSL) 
    FROM HocSinh_Lop;

    -- Tăng mã HSL lên 1 dựa trên mã lớn nhất hiện có
    SET @NewMaHSL = 'HSL' + RIGHT('000' + CAST(COALESCE(CAST(SUBSTRING(@MaxMaHSL, 4, LEN(@MaxMaHSL) - 3) AS INT), 0) + 1 AS NVARCHAR), 3);
	INSERT INTO HocSinh_Lop(MaHSL,MaHS,MaLop)
	VALUES(@NewMaHSL, @MaHS, @MaLop)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Check_login]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Check_login]
    @user NVARCHAR(50),
    @password NVARCHAR(50)
AS
BEGIN
    -- Kiểm tra tài khoản trong bảng TaiKhoan
    SELECT MaTk, TenTK
    FROM TaiKhoan
    WHERE TenTk = @user AND MatKhauTK = @password
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckDuplicateGiaoVien]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CheckDuplicateGiaoVien]
    @MaGV NVARCHAR(50),
    @MaTK NVARCHAR(50),
    @IsDuplicate BIT OUTPUT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM GiaoVien
        WHERE (MaGV = @MaGV OR MaTK = @MaTK)
          AND MaGV <> @MaGV  -- Đảm bảo đây là giáo viên khác
    )
    BEGIN
        SET @IsDuplicate = 1  -- Trùng lặp
    END
    ELSE
    BEGIN
        SET @IsDuplicate = 0  -- Không trùng lặp
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckUsername]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CheckUsername]
    @Username NVARCHAR(255),
    @Exists BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT @Exists = CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END
    FROM TaiKhoan
    WHERE TenTK = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DangKyTaiKhoan]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DangKyTaiKhoan]
    @Email NVARCHAR(100),
    @TenTk NVARCHAR(100),
    @MatKhau NVARCHAR(100),
    @SoDT NVARCHAR(15),
	
    @Result NVARCHAR(255) OUTPUT
AS
BEGIN
	DECLARE @MaTaiKhoan nvarchar(10)
    DECLARE @RandomPart NVARCHAR(8) = LEFT(CONVERT(NVARCHAR(50), NEWID()), 8);
    SET @MaTaiKhoan = 'TK' + @RandomPart;
    IF EXISTS (SELECT 1 FROM TaiKhoan WHERE Email = @Email OR SDT = @SoDT )
    BEGIN
        SET @Result = 'Email hoặc Số điện thoại đã tồn tại.'
        RETURN
    END

    
    INSERT INTO TaiKhoan (MaTK,Email, TenTK, MatKhauTK, SDT)
    VALUES (@MaTaiKhoan, @Email, @TenTk, @MatKhau, @SoDT)

    IF @@ROWCOUNT > 0
    BEGIN
        SET @Result = ''
    END
    ELSE
    BEGIN
        SET @Result = 'Error'
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteGiaoVien]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteGiaoVien]
    @maGV NVARCHAR(50)
AS
BEGIN
    -- Bắt đầu giao dịch
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Lấy mã tài khoản liên quan đến giáo viên
        DECLARE @maTK NVARCHAR(50);
        SELECT @maTK = MaTK FROM GiaoVien WHERE MaGV = @maGV;

        -- Đặt các trường khóa ngoại liên quan đến giáo viên thành NULL
        UPDATE LopHoc SET MaGVCN = NULL WHERE MaGVCN = @maGV;
        UPDATE BaoCaoHocTap SET MaGV = NULL WHERE MaGV = @maGV;
		UPDATE ThoiKhoaBieu SET MaGV = NULL WHERE MaGV = @maGV
        -- Xóa giáo viên từ bảng GiaoVien trước
        DELETE FROM GiaoVien WHERE MaGV = @maGV;
        -- Xóa tài khoản từ bảng TaiKhoan nếu mã tài khoản tồn tại
        IF @maTK IS NOT NULL
        BEGIN
            DELETE FROM TaiKhoan WHERE MaTK = @maTK;
        END

        -- Hoàn tất giao dịch
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Quay lại trạng thái ban đầu nếu có lỗi xảy ra
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteHocSinh]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteHocSinh]
    @MaHS NVARCHAR(10)
AS
BEGIN
    DELETE FROM HocSinh
    WHERE MaHS = @MaHS
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllHocSinh]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAllHocSinh]
	@MaGVCN nvarchar(10)
AS
BEGIN
    SELECT hs.MaHS, hs.HoTen, hs.NgaySinh, hs.DiaChi, hs.GioiTinh, l.MaLop
    FROM HocSinh hs INNER JOIN HocSinh_Lop hsl
		ON hs.MaHS = hsl.MaHS
	INNER JOIN LopHoc l ON l.MaLop = hsl.MaLop
	WHERE l.MaGVCN = @MaGVCN
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllMaLop]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAllMaLop]
	@MaGVCN nvarchar(10)
AS
BEGIN
    SELECT DISTINCT MaLop 
    FROM LopHoc
	WHERE MaGVCN = @MaGVCN
    ORDER BY MaLop ASC; -- Sắp xếp theo thứ tự tăng dần
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDiemByGiaoVien]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetDiemByGiaoVien]
	@MaGV NVARCHAR(10) =NULL
AS
BEGIN
    SELECT hs.MaHS, hs.HoTen, MaDiem, DiemMieng, Diem15p, Diem45p, DiemGiuaKy, DiemCuoiKy, DiemTB, TenMH, TenLop, TenHK, NamHoc
    FROM Diem d
	JOIN MonHoc_HocKy mh_hk ON d.MaMHHK = mh_hk.MaMHHK
	JOIN MonHoc mh ON mh_hk.MaMH = mh.MaMH
	JOIN HocKy hk ON mh_hk.MaHK = hk.MaHK
	JOIN GiaoVien gv ON gv.MaMH = mh.MaMH
    JOIN HocSinh hs ON d.MaHS = hs.MaHS
	JOIN HocSinh_Lop hsl ON hsl.MaHS = hs.MaHS
    JOIN LopHoc lh ON hsl.MaLop = lh.MaLop
    WHERE (@MaGV IS NULL OR gv.MaGV = @MaGV)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetGiaoVien]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_GetGiaoVien]
	@maTK nvarchar(10)
as 
begin 
	select gv.MaGV, gv.HoTen, gv.NgaySinh, gv.DiaChi, gv.GioiTinh, gv.MaTK, gv.MaMH, l.TenLop
	from GIAOVIEN gv join LopHoc l on gv.MaGV=l.MaGVCN
	where gv.MaTK = @maTK
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetGiaoVienByMaTK]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_GetGiaoVienByMaTK]
	@maTK nvarchar(10)
as 
begin 
	select MaGV, HoTen, gv.MaTK, NgaySinh, DiaChi, GioiTinh, Anh
	from GIAOVIEN gv 
	where gv.MaTK = @maTK
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetHocKy]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetHocKy]
	@MaGV nvarchar(10)
AS
BEGIN
    SELECT distinct hk.MaHK, hk.NamHoc+ '_' + hk.TenHK as TenHK  FROM HocKy hk
	INNER JOIN ThoiKhoaBieu tkb on tkb.MaHK = hk.MaHK
	INNER JOIN GiaoVien gv on tkb.MaGV = gv.MaGV
	where gv.MaGV = @MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLopHoc]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetLopHoc]
AS
BEGIN
    SELECT MaLop, TenLop FROM LopHoc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLopHocByGiaoVien]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetLopHocByGiaoVien]
		@MaGV NVARCHAR(10) =NULL
AS
BEGIN
    SELECT DISTINCT lh.MaLop, TenLop FROM LopHoc lh
	JOIN ThoiKhoaBieu tkb ON lh.MaLop = tkb.MaLop
	JOIN GiaoVien gv ON tkb.MaGV = gv.MaGV
	WHERE (@MaGV IS NULL OR gv.MaGV = @MaGV)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetMonHoc]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetMonHoc]
	@MaGV nvarchar(10)
AS
BEGIN
    SELECT mh.MaMH, TenMH FROM MonHoc mh
	INNER JOIN GiaoVien gv on mh.MaMH = gv.MaMH
	where MaGV = @MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetMonHocAll]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetMonHocAll]
AS
BEGIN
    SELECT MaMH, TenMH FROM MonHoc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetMonHocByGiaoVien]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetMonHocByGiaoVien]
	@MaGV nvarchar(10)
AS
BEGIN
    SELECT mh.MaMH, TenMH FROM MonHoc mh
	INNER JOIN GiaoVien gv on mh.MaMH = gv.MaMH
	where MaGV = @MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetMonHocToan]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetMonHocToan]
AS
BEGIN
    SELECT MaMH, TenMH FROM MonHoc 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPasswordByEmail]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetPasswordByEmail]
    @Email NVARCHAR(100)
AS
BEGIN
    SELECT MatKhauTK
    FROM TaiKhoan
    WHERE Email = @Email
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetThoiKhoaBieu]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetThoiKhoaBieu]
	@MaGV nvarchar(10)
AS
BEGIN
    SELECT 
		tkb.MaTKB,
        tkb.MaLop,
        lh.TenLop,
        gv.HoTen AS TenGiaoVien,
        mh.TenMH AS TenMon,
        tkb.Tiet,
        tkb.Thu,
		hk.NamHoc+ '_' + hk.TenHK as TenHK,
        NgayBatDau,
        NgayKetThuc
    FROM 
        ThoiKhoaBieu tkb
    JOIN 
        LopHoc lh ON tkb.MaLop = lh.MaLop
    JOIN 
        MonHoc mh ON tkb.MaMH = mh.MaMH
	JOIN 
		HocKy hk on hk.MaHK = tkb.MaHK
	JOIN
		GiaoVien gv ON gv.MaGV = tkb.MaGV
	WHERE gv.MaGV = @MaGV
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_HocKyByDiem]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_HocKyByDiem]
	@NamHoc nvarchar(20)
AS
BEGIN
    SELECT MaHK, TenHK FROM HocKy hk
	where NamHoc = @NamHoc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_NamHocByDiem]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_NamHocByDiem]
AS
BEGIN
    SELECT distinct NamHoc FROM HocKy
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchDiem]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SearchDiem]
    @MaLop1 NVARCHAR(10) = NULL,
    @MaMH1 NVARCHAR(10) = NULL,
	@MaGV NVARCHAR(10) =NULL,
	@NamHoc NVARCHAR(10) =NULL,
	@MaHK NVARCHAR(10) =NULL
AS
BEGIN
    SELECT hs.MaHS, hs.HoTen, MaDiem, DiemMieng, Diem15p, Diem45p, DiemGiuaKy, DiemCuoiKy, DiemTB, TenMH, TenLop, TenHK, NamHoc
    FROM Diem d
	JOIN MonHoc_HocKy mh_hk ON d.MaMHHK = mh_hk.MaMHHK
	JOIN MonHoc mh ON mh_hk.MaMH = mh.MaMH
	JOIN HocKy hk ON mh_hk.MaHK = hk.MaHK
	JOIN GiaoVien gv ON gv.MaMH = mh.MaMH
    JOIN HocSinh hs ON d.MaHS = hs.MaHS
	JOIN HocSinh_Lop hsl ON hsl.MaHS = hs.MaHS
    JOIN LopHoc lh ON hsl.MaLop = lh.MaLop
    WHERE 
        (@MaLop1 IS NULL OR lh.MaLop =  @MaLop1) AND
        (@MaMH1 IS NULL OR mh.MaMH = @MaMH1) and
		(@MaGV IS NULL OR gv.MaGV = @MaGV) and
		(@NamHoc IS NULL OR NamHoc = @NamHoc) and
		(@MaHK IS NULL OR hk.MaHK = @MaHK)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchLop]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CHINH
CREATE PROCEDURE [dbo].[sp_SearchLop]
    @TenGiaoVien NVARCHAR(50) = NULL,
    @MaLop NVARCHAR(10) = NULL,
    @Khoi NVARCHAR(10) = NULL,
	@Magv NVARCHAR(10) = NULL
    
AS
BEGIN
    select
	lh.MaLop,lh.TenLop,TenKL,mh.TenMH,gv.HoTen as gvday,gvc.HoTen as gvcn,count(DISTINCT hs.MaHS) as siso
	from LopHoc lh
	left join HocSinh_Lop hs on hs.MaLop=lh.MaLop
	join ThoiKhoaBieu tkb on tkb.MaLop=lh.MaLop
	join MonHoc mh on mh.MaMH=tkb.MaMH
	join GiaoVien gv on gv.MaGV=tkb.MaGV
	join GiaoVien gvc on gvc.MaGV=lh.MaGVCN
    WHERE   
        (@TenGiaoVien IS NULL OR gv.HoTen like N'%'+@TenGiaoVien+'%') AND
        (@MaLop IS NULL OR lh.MaLop =  @MaLop) AND
        (@Khoi IS NULL OR lh.TenKL like N'%'+@Khoi+'%') AND
        (@Magv IS NULL OR tkb.MaGV=@Magv)
	group by lh.MaLop,lh.TenLop,TenKL,gv.HoTen,gvc.HoTen ,mh.TenMH	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchThoiKhoaBieu]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[sp_SearchThoiKhoaBieu]
	@MaGV nvarchar(10) = null,
    @Thu NVARCHAR(50) = NULL,
    @TietHoc INT = NULL,
    @MaLop NVARCHAR(10) = NULL,
	@MaHK NVARCHAR(10) = NULL,
	@KhoiLop nvarchar(50) = null,
    @MaMH NVARCHAR(10) = NULL,
    @NgayDay DATE = NULL
AS
BEGIN
    SELECT 
		tkb.MaTKB,
		tkb.MaLop,
        lh.TenLop,
        gv.HoTen AS TenGiaoVien,
        mh.TenMH AS TenMon,
        tkb.Tiet,
        tkb.Thu,
		hk.NamHoc+ '_' + hk.TenHK as TenHK,
        NgayBatDau,
        NgayKetThuc
    FROM ThoiKhoaBieu tkb
	JOIN MonHoc mh ON tkb.MaMH = mh.MaMH
    JOIN GiaoVien gv ON tkb.MaGV = gv.MaGV
	JOIN HocKy hk ON tkb.MaHK = hk.MaHK
    JOIN LopHoc lh ON tkb.MaLop = lh.MaLop
    
    WHERE 
        (@Thu IS NULL OR tkb.Thu like '%' + @Thu + '%') AND
        (@TietHoc IS NULL OR tkb.Tiet = @TietHoc) AND
        (@MaLop IS NULL OR lh.MaLop =  @MaLop) AND
		(@KhoiLop IS NULL OR lh.TenKL =  @KhoiLop) AND
        (@MaHK IS NULL OR hk.MaHK = @MaHK) AND
        (@NgayDay IS NULL OR tkb.NgayBatDau <= @NgayDay AND tkb.NgayKetThuc >= @NgayDay) AND
		gv.MaGV = @MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TimGiaoVienDayThay]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TimGiaoVienDayThay]
    @MaMonHoc NVARCHAR(50),
    @Tiet INT,
    @Thu NVARCHAR(20),
	@MaHK NVARCHAR(10)
AS
BEGIN
    SELECT gv.MaGV, gv.HoTen
    FROM GiaoVien gv
    INNER JOIN MonHoc mh ON gv.MaMH = mh.MaMH
	LEFT JOIN ThoiKhoaBieu tkb ON tkb.MaGV = gv.MaGV
                               AND tkb.Tiet = @Tiet
                               AND tkb.Thu = @Thu 
							   AND tkb.MaHK = @MaHK
    WHERE mh.MaMH = @MaMonHoc
      AND tkb.MaGV IS NULL;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateDiem]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateDiem]
    @md NVARCHAR(10),
	@DiemM float,
	@Diem15p float,
	@Diem45p float,
	@DiemGK float, 
	@DiemCK float
AS
BEGIN
    update Diem 
	set DiemMieng = @DiemM, 
		Diem15p = @Diem15p,
		Diem45p= @Diem45p, 
		DiemGiuaKy = @DiemGK, 
		DiemCuoiKy = @DiemCK 
	where MaDiem = @md
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateGiaoVien]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateGiaoVien]
    @MaGV NVARCHAR(50),
    @HoTen NVARCHAR(100),
    @NgaySinh DATE,
    @DiaChi NVARCHAR(255),
    @GioiTinh BIT,
    @MaTK NVARCHAR(50),
	@MaMH NVARCHAR(50)
AS
BEGIN
    -- Kiểm tra nếu giáo viên tồn tại
    IF EXISTS (SELECT 1 FROM GiaoVien WHERE MaGV = @MaGV)
    BEGIN
        -- Cập nhật thông tin giáo viên
        UPDATE GiaoVien
        SET 
            HoTen = @HoTen,
            NgaySinh = @NgaySinh,
            DiaChi = @DiaChi,
            GioiTinh = @GioiTinh,
            MaTK = @MaTK,
			MaMH = @MaMH
        WHERE MaGV = @MaGV;
    END
    ELSE
    BEGIN
        -- Trả về lỗi nếu không tìm thấy giáo viên với MaGV
        RAISERROR('Không tìm thấy giáo viên với mã giáo viên %s.', 16, 1, @MaGV);
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateHocSinh]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateHocSinh]
    @MaHS NVARCHAR(10),
    @HoTen NVARCHAR(50),
    @NgaySinh DATE,
    @DiaChi NVARCHAR(100),
    @GioiTinh BIT
AS
BEGIN
    UPDATE HocSinh
    SET HoTen = @HoTen,
        NgaySinh = @NgaySinh,
        DiaChi = @DiaChi,
        GioiTinh = @GioiTinh
    WHERE MaHS = @MaHS

END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateLichHoc]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateLichHoc]
    @MaTkb NVARCHAR(10),
    @MaMH NVARCHAR(10),
    @MaGV NVARCHAR(10)
AS
BEGIN
    UPDATE ThoiKhoaBieu
    SET MaMH = @MaMH, MaGV = @MaGV
    WHERE MaTKB = @MaTkb;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateMatKhau]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateMatKhau]
    @MaTK NVARCHAR(50),
    @MatKhauMoi NVARCHAR(50)
AS
BEGIN
    UPDATE TaiKhoan
    SET MatKhauTK = @MatKhauMoi
    WHERE MaTK = @MaTK
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKeXepLoaiTheoGV]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKeXepLoaiTheoGV]
    @MaGV NVARCHAR(10)
AS
BEGIN
    SELECT 
        hk.NamHoc,
        gv.HoTen,
        lh.TenLop,
        hk.TenHK,
        COUNT(CASE WHEN bc.XepLoai = 'Gioi' THEN 1 END) AS SoLuongHSGioi,
        COUNT(CASE WHEN bc.XepLoai = 'Kha' THEN 1 END) AS SoLuongHSKha,
        COUNT(CASE WHEN bc.XepLoai = 'Trung Binh' THEN 1 END) AS SoLuongHSTB,
        COUNT(CASE WHEN bc.XepLoai = 'Yeu' THEN 1 END) AS SoLuongHSYeu
    FROM BaoCaoHocTap bc
    JOIN 
        HocKy hk ON bc.MaHK = hk.MaHK
    JOIN 
        HocSinh hs ON bc.MaHS = hs.MaHS
    JOIN 
        HocSinh_Lop hsl ON hsl.MaHS = hs.MaHS  -- K?t n?i v?i b?ng HocSinh_Lop
    JOIN 
        LopHoc lh ON hsl.MaLop = lh.MaLop
    JOIN 
        GiaoVien gv ON gv.MaGV = lh.MaGVCN
    WHERE 
        gv.MaGV = @MaGV
    GROUP BY 
        hk.NamHoc, hk.TenHK, gv.HoTen, lh.TenLop
    ORDER BY 
        hk.NamHoc, hk.TenHK;
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKeXepLoaiTheoMonHocVaGiaoVien]    Script Date: 11/4/2024 9:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKeXepLoaiTheoMonHocVaGiaoVien]
    @MaMH NVARCHAR(10)= NULL,  
    @MaGV NVARCHAR(10)  
AS
BEGIN
    SELECT 
        hk.NamHoc,lh.TenLop,
        mh.TenMH,gv.HoTen,
        hk.TenHK,
        COUNT(CASE WHEN d.DiemTB >= 8.0 THEN 1 END) AS SoLuongHSGioi,
        COUNT(CASE WHEN d.DiemTB >= 6.5 AND d.DiemTB < 8.0 THEN 1 END) AS SoLuongHSKha,
        COUNT(CASE WHEN d.DiemTB >= 5.0 AND d.DiemTB < 6.5 THEN 1 END) AS SoLuongHSTB,
        COUNT(CASE WHEN d.DiemTB < 5.0 THEN 1 END) AS SoLuongHSYeu
    FROM 
        Diem d
    JOIN HocSinh hs ON hs.MaHS = d.MaHS
	JOIN HocSinh_Lop hsl ON hsl.MaHS = hs.MaHS  
    JOIN LopHoc lh ON hsl.MaLop = lh.MaLop 
    JOIN MonHoc_HocKy mhhk ON d.MaMHHK = mhhk.MaMHHK
    JOIN MonHoc mh ON mhhk.MaMH = mh.MaMH 
    JOIN HocKy hk ON mhhk.MaHK = hk.MaHK
	JOIN GiaoVien gv ON gv.MaGV = lh.MaGVCN
    WHERE 
        lh.MaGVCN = @MaGV AND 
		(@MaMH  IS NULL OR mhhk.MaMH = @MaMH )
    GROUP BY 
        hk.NamHoc, hk.TenHK, mh.TenMH,lh.TenLop, gv.HoTen
    ORDER BY 
        hk.NamHoc, hk.TenHK, mh.TenMH
END 
GO
