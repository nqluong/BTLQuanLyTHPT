USE [QLTruongTHPT]
GO
/****** Object:  Table [dbo].[BaoCaoHocTap]    Script Date: 10/28/2024 1:23:44 AM ******/
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
/****** Object:  Table [dbo].[Diem]    Script Date: 10/28/2024 1:23:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[MaDiem] [nvarchar](10) NOT NULL,
	[MaMH] [nvarchar](10) NULL,
	[DiemMieng] [float] NULL,
	[MaHS] [nvarchar](10) NULL,
	[Diem15p] [float] NULL,
	[Diem45p] [float] NULL,
	[DiemGiuaKy] [float] NULL,
	[DiemCuoiKy] [float] NULL,
	[DiemTB] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 10/28/2024 1:23:44 AM ******/
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
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocKy]    Script Date: 10/28/2024 1:23:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocKy](
	[MaHK] [nvarchar](10) NOT NULL,
	[TenHK] [nvarchar](50) NULL,
	[NamHoc] [int] NULL,
	[HeSo] [int] NULL,
	[DiemTKHK] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 10/28/2024 1:23:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[MaHS] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[MaLop] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 10/28/2024 1:23:44 AM ******/
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
/****** Object:  Table [dbo].[MonHoc]    Script Date: 10/28/2024 1:23:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](10) NOT NULL,
	[TenMH] [nvarchar](50) NULL,
	[SoTiet] [int] NULL,
	[HeSo] [int] NULL,
	[MaGV] [nvarchar](10) NULL,
	[DiemTK] [float] NULL,
	[MaHK] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/28/2024 1:23:44 AM ******/
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
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThoiKhoaBieu]    Script Date: 10/28/2024 1:23:44 AM ******/
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
PRIMARY KEY CLUSTERED 
(
	[MaTKB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC003', N'GV003', N'HS003', N'HK1', N'Gioi')
GO
INSERT [dbo].[BaoCaoHocTap] ([MaBC], [MaGV], [MaHS], [MaHK], [XepLoai]) VALUES (N'BC004', N'GV004', N'HS004', N'HK1', N'Kha')
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMH], [DiemMieng], [MaHS], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D001', N'MH003', 8.5, N'HS001', 10, 9, 8, 9, NULL)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMH], [DiemMieng], [MaHS], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D002', N'MH003', 7, N'HS002', 5, 10, 10, 8, NULL)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMH], [DiemMieng], [MaHS], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D003', N'MH003', 9, N'HS003', 10, 10, 10, 10, NULL)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMH], [DiemMieng], [MaHS], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D004', N'MH004', 6.5, N'HS004', 10, 10, 8, 8, NULL)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMH], [DiemMieng], [MaHS], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D005', N'MH004', 7.5, N'HS001', 8, 9, 7, 9, NULL)
GO
INSERT [dbo].[Diem] ([MaDiem], [MaMH], [DiemMieng], [MaHS], [Diem15p], [Diem45p], [DiemGiuaKy], [DiemCuoiKy], [DiemTB]) VALUES (N'D006', N'MH004', 8, N'HS002', 8, 9, 7, 8, NULL)
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK]) VALUES (N'GV001', N'Nguyen Van A', CAST(N'1980-05-15' AS Date), N'123 Main St', 1, N'TK001')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK]) VALUES (N'GV002', N'Tran Thi B', CAST(N'1985-07-20' AS Date), N'456 Maple St', 0, N'TK002')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK]) VALUES (N'GV003', N'Nguyen Van A', CAST(N'1980-05-15' AS Date), N'123 Main St', 1, N'TK003')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [MaTK]) VALUES (N'GV004', N'Tran Thi B', CAST(N'1985-07-20' AS Date), N'456 Maple St', 0, N'TK004')
GO
INSERT [dbo].[HocKy] ([MaHK], [TenHK], [NamHoc], [HeSo], [DiemTKHK]) VALUES (N'HK1', N'H?c k? 1', 2023, 2, NULL)
GO
INSERT [dbo].[HocKy] ([MaHK], [TenHK], [NamHoc], [HeSo], [DiemTKHK]) VALUES (N'HK2', N'H?c k? 2', 2023, 2, NULL)
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [MaLop], [DiaChi]) VALUES (N'HS001', N'Le Van C', CAST(N'2005-08-01' AS Date), 1, N'L001', N'789 Oak St')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [MaLop], [DiaChi]) VALUES (N'HS002', N'Pham Thi D', CAST(N'2004-11-12' AS Date), 0, N'L002', N'321 Pine St')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [MaLop], [DiaChi]) VALUES (N'HS003', N'Le Van C', CAST(N'2005-08-01' AS Date), 1, N'L003', N'789 Oak St')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [GioiTinh], [MaLop], [DiaChi]) VALUES (N'HS004', N'Pham Thi D', CAST(N'2004-11-12' AS Date), 0, N'L004', N'321 Pine St')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L001', N'Lop 10A', N'Khoa Toan', N'GV001')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L002', N'Lop 11B', N'Khoa Ly', N'GV002')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L003', N'Lop 10A', N'Khoa Toan', N'GV003')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [TenKL], [MaGVCN]) VALUES (N'L004', N'Lop 11B', N'Khoa Ly', N'GV004')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [HeSo], [MaGV], [DiemTK], [MaHK]) VALUES (N'MH003', N'Toan', 45, 2, N'GV001', NULL, N'HK1')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [HeSo], [MaGV], [DiemTK], [MaHK]) VALUES (N'MH004', N'Ly', 30, 1, N'GV002', NULL, N'HK1')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser]) VALUES (N'TK001', N'nguyenvana', N'password123', N'vana@gmail.com', N'0123456789', N'GiaoVien')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser]) VALUES (N'TK002', N'tranthib', N'password456', N'thib@gmail.com', N'0987654321', N'GiaoVien')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser]) VALUES (N'TK003', N'nguyenvana', N'password123', N'vana@gmail.com', N'0123456789', N'GiaoVien')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhauTK], [Email], [SDT], [QuyenUser]) VALUES (N'TK004', N'tranthib', N'password456', N'thib@gmail.com', N'0987654321', N'GiaoVien')
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc]) VALUES (N'TKB003', N'L003', N'MH003', N'Thu Hai', 1, CAST(N'2023-09-01' AS Date), CAST(N'2023-12-31' AS Date))
GO
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [MaMH], [Thu], [Tiet], [NgayBatDau], [NgayKetThuc]) VALUES (N'TKB004', N'L004', N'MH004', N'Thu Ba', 2, CAST(N'2024-01-01' AS Date), CAST(N'2024-06-01' AS Date))
GO
ALTER TABLE [dbo].[BaoCaoHocTap]  WITH CHECK ADD FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[BaoCaoHocTap]  WITH CHECK ADD FOREIGN KEY([MaHK])
REFERENCES [dbo].[HocKy] ([MaHK])
GO
ALTER TABLE [dbo].[BaoCaoHocTap]  WITH CHECK ADD FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinh] ([MaHS])
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_HocSinh] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinh] ([MaHS])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_HocSinh]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD FOREIGN KEY([MaGVCN])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD FOREIGN KEY([MaHK])
REFERENCES [dbo].[HocKy] ([MaHK])
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_GiaoVien]
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_LopHoc] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_LopHoc]
GO
