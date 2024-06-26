USE [master]
GO
/****** Object:  Database [QuanLyCuaHangDienThoai]    Script Date: 04/04/2024 11:53:57 SA ******/
CREATE DATABASE [QuanLyCuaHangDienThoai]


USE [QuanLyCuaHangDienThoai]
GO
/****** Object:  Table [dbo].[CameraSau]    Script Date: 04/04/2024 11:53:57 SA ******/

CREATE TABLE [dbo].[CameraSau](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DoPhanGiai] [nvarchar](255) NULL,
	[QuayPhim] [nvarchar](255) NULL,
	[Flash] [nvarchar](255) NULL,
	[ChupAnh] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CameraTruoc]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CameraTruoc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DoPhanGiai] [nvarchar](255) NULL,
	[QuayPhim] [nvarchar](255) NULL,
	[Flash] [nvarchar](255) NULL,
	[ChupAnh] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDUsers] [int] NULL,
	[IDDienThoai] [int] NULL,
	[SoSao] [int] NULL,
	[NoiDung] [nvarchar](255) NULL,
	[NgayMua] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DienThoai]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienThoai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenDienThoai] [nvarchar](255) NULL,
	[IDManHinh] [int] NULL,
	[IDHang] [int] NULL,
	[IDHeDieuHanh] [int] NULL,
	[IDCameraTruoc] [int] NULL,
	[IDCameraSau] [int] NULL,
	[IDRam] [int] NULL,
	[IDDungLuong] [int] NULL,
	[IDSim] [int] NULL,
	[IDPin] [int] NULL,
	[IDSac] [int] NULL,
	[IDKhuyenMai] [int] NULL,
	[IDHinhAnh] [int] NULL,
	[ThongTin] [nvarchar](255) NULL,
	[Gia] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DungLuong]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DungLuong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DungLuong] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeDieuHanh]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeDieuHanh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AnhBia] [nvarchar](255) NULL,
	[AnhBia1] [nvarchar](255) NULL,
	[AnhBia2] [nvarchar](255) NULL,
	[AnhBia3] [nvarchar](255) NULL,
	[AnhBia4] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE HoaDon (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IDUSER NVARCHAR(255) NOT NULL,
    SoDienThoai NVARCHAR(10) NOT NULL,
    NgayMua DATETIME NOT NULL,
    TongTien Decimal(10,2) NOT NULL
);

-- Tạo bảng 'Chi tiết hóa đơn'
CREATE TABLE ChiTietHoaDon (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IdHoaDon INT FOREIGN KEY REFERENCES HoaDon(Id),
    IdDienThoai INT FOREIGN KEY REFERENCES DienThoai(Id),
    SoLuong INT NOT NULL,
    DonGia Decimal(10,2) NOT NULL
);
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKhuyenMai] [nvarchar](255) NULL,
	[PhanTramGiam] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManHinh]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManHinh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CongNghe] [nvarchar](255) NULL,
	[DoPhanGiai] [nvarchar](255) NULL,
	[DoRongMan] [nvarchar](255) NULL,
	[DoSang] [nvarchar](255) NULL,
	[ManCamUng] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pin]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DungLuong] [nvarchar](255) NULL,
	[LoaiPin] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ram]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ram](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DungLuong] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sac]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sac](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoaiSac] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sim]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoaiSim] [nvarchar](255) NULL,
	[SoSim] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04/04/2024 11:53:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[LaNhanVien] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([IDDienThoai])
REFERENCES [dbo].[DienThoai] ([ID])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([IDUsers])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD FOREIGN KEY([IDCameraTruoc])
REFERENCES [dbo].[CameraTruoc] ([ID])
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD FOREIGN KEY([IDCameraSau])
REFERENCES [dbo].[CameraSau] ([ID])
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD FOREIGN KEY([IDDungLuong])
REFERENCES [dbo].[DungLuong] ([ID])
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD FOREIGN KEY([IDHang])
REFERENCES [dbo].[Hang] ([ID])
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD FOREIGN KEY([IDHeDieuHanh])
REFERENCES [dbo].[HeDieuHanh] ([ID])
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD FOREIGN KEY([IDHinhAnh])
REFERENCES [dbo].[HinhAnh] ([ID])
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD FOREIGN KEY([IDKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([ID])
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD FOREIGN KEY([IDManHinh])
REFERENCES [dbo].[ManHinh] ([ID])
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD FOREIGN KEY([IDPin])
REFERENCES [dbo].[Pin] ([ID])
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD FOREIGN KEY([IDRam])
REFERENCES [dbo].[Ram] ([ID])
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD FOREIGN KEY([IDSac])
REFERENCES [dbo].[Sac] ([ID])
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD FOREIGN KEY([IDSim])
REFERENCES [dbo].[Sim] ([ID])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IDDienThoai])
REFERENCES [dbo].[DienThoai] ([ID])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IDUsers])
REFERENCES [dbo].[Users] ([ID])
GO
USE [master]
GO
ALTER DATABASE [QuanLyCuaHangDienThoai] SET  READ_WRITE 
GO
