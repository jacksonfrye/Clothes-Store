USE [master]
GO
/****** Object:  Database [DATA_CLOTHES]    Script Date: 12/15/2022 7:35:53 PM ******/
CREATE DATABASE [DATA_CLOTHES]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DATA_CLOTHES', FILENAME = N'D:\Tools\SQL Express\MSSQL15.SQLEXPRESS\MSSQL\DATA\DATA_CLOTHES.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DATA_CLOTHES_log', FILENAME = N'D:\Tools\SQL Express\MSSQL15.SQLEXPRESS\MSSQL\DATA\DATA_CLOTHES_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DATA_CLOTHES] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DATA_CLOTHES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DATA_CLOTHES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET ARITHABORT OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DATA_CLOTHES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DATA_CLOTHES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DATA_CLOTHES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DATA_CLOTHES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DATA_CLOTHES] SET  MULTI_USER 
GO
ALTER DATABASE [DATA_CLOTHES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DATA_CLOTHES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DATA_CLOTHES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DATA_CLOTHES] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DATA_CLOTHES] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DATA_CLOTHES] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DATA_CLOTHES] SET QUERY_STORE = OFF
GO
USE [DATA_CLOTHES]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IDCategory] [bigint] IDENTITY(1,1) NOT NULL,
	[TenTheloai] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[SEOTitle] [varchar](250) NULL,
	[NgayTao] [date] NULL,
	[NguoiTao] [varchar](250) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[DisPlayOrder] [int] NULL,
	[MetaDescriptions] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[IDContact] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[IDContact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feed_Back]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feed_Back](
	[IDFeedBack] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
	[Reply] [nvarchar](max) NULL,
	[TieuDe] [nvarchar](250) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
	[CustomerID] [bigint] NULL,
 CONSTRAINT [PK_Feed_Back] PRIMARY KEY CLUSTERED 
(
	[IDFeedBack] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[IdFooter] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFooter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoHang]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoHang](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenKho] [nvarchar](50) NULL,
	[IDProduct] [bigint] NULL,
	[SoLuongKho] [int] NOT NULL,
	[TonKho] [int] NOT NULL,
	[NgayTao] [datetime] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[IDMenu] [bigint] IDENTITY(1,1) NOT NULL,
	[NameMenu] [nvarchar](50) NOT NULL,
	[Link] [varchar](max) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [varchar](max) NULL,
	[MenuTypeID] [bigint] NULL,
	[Status] [bit] NOT NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[MenuTypeID] [bigint] IDENTITY(1,1) NOT NULL,
	[NameType] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messenger]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messenger](
	[IDMes] [bigint] IDENTITY(1,1) NOT NULL,
	[IDCustomer] [bigint] NULL,
	[NgayTao] [datetime] NULL,
	[Content] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[IDOrder] [bigint] NULL,
 CONSTRAINT [PK_Messenger] PRIMARY KEY CLUSTERED 
(
	[IDMes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[IDNCC] [bigint] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](250) NOT NULL,
	[NgayTao] [date] NULL,
	[IDNguoiTao] [bigint] NULL,
	[Status] [bit] NOT NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SoDienThoai] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapHang]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapHang](
	[IDNhapHang] [bigint] IDENTITY(1,1) NOT NULL,
	[IDSanPham] [bigint] NULL,
	[GiaNhap] [int] NULL,
	[SoLuongNhap] [int] NULL,
	[NgayTao] [datetime] NULL,
	[Status] [int] NULL,
	[IDNCC] [bigint] NULL,
	[IDCategory] [bigint] NULL,
	[IDNguoiTao] [bigint] NULL,
	[StatusPayMent] [bit] NULL,
	[StatusInput] [bit] NULL,
 CONSTRAINT [PK_NhapHang] PRIMARY KEY CLUSTERED 
(
	[IDNhapHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[ProductID] [bigint] NOT NULL,
	[OderID] [bigint] NOT NULL,
	[Quanlity] [int] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_Order_Detail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[IDOder] [bigint] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMobile] [nvarchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[GiaoHang] [int] NULL,
	[NhanHang] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[DeliveryPaymentMethod] [nvarchar](50) NULL,
	[StatusPayment] [int] NULL,
	[OrderCode] [varchar](150) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IDOder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[IDQuyen] [bigint] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](250) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[IDContent] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NULL,
	[ThuongHieu] [nvarchar](50) NOT NULL,
	[NhaSanXuat] [nvarchar](50) NOT NULL,
	[Soluong] [int] NOT NULL,
	[Images] [varchar](max) NULL,
	[CategoryID] [bigint] NULL,
	[Quanlity] [nvarchar](50) NULL,
	[NgayTao] [datetime] NOT NULL,
	[IDNguoiTao] [bigint] NULL,
	[Status] [bit] NOT NULL,
	[Tophot] [int] NOT NULL,
	[Mota] [nvarchar](max) NULL,
	[ChiTiet] [nvarchar](max) NULL,
	[IDNCC] [bigint] NULL,
	[GiaTien] [int] NOT NULL,
	[GiaNhap] [int] NULL,
	[PriceSale] [int] NULL,
	[TonKho] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDContent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](max) NULL,
	[DisPlayOrder] [int] NOT NULL,
	[Title] [nvarchar](200) NULL,
	[Link] [varchar](max) NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/15/2022 7:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IDUser] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](250) NOT NULL,
	[PassWord] [varchar](250) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Adress] [nvarchar](250) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[Phone] [varchar](250) NOT NULL,
	[Status] [bit] NOT NULL,
	[NgayTao] [date] NULL,
	[NguoiTao] [varchar](50) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[IDQuyen] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (17, N'Áo thun tay ngắn', N'ao-thun-tay-ngan', NULL, NULL, CAST(N'2022-10-27' AS Date), N'admin', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (18, N'Áo thun tay dài', N'ao-thun-tay-dai', NULL, NULL, CAST(N'2022-10-27' AS Date), N'admin', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (19, N'Quần short', N'quan-short', NULL, NULL, CAST(N'2022-10-27' AS Date), N'admin', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (20, N'Quần dài', N'quan-dai', NULL, NULL, CAST(N'2022-10-27' AS Date), N'admin', NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([IDContact], [Content], [Status]) VALUES (1, N'<p>280 An Dương Vương, Phường 5, Quận 5, TPHCM, Việt Nam</p>', 1)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Feed_Back] ON 

INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (9, N'Hoang Thuy Luong', N'098988282', N'hvtnam1999@gmail.com', N'Huong Long, Hue, Thua Thien Hue', N' Tôi cần trợ giúp về vẫn đề nhận hàng', CAST(N'2021-09-02T00:05:15.647' AS DateTime), 1, N' Tôi cần trợ giúp về vẫn đề nhận hàng', N'Tôi cần trợ giúp về vẫn đề nhận hàng', CAST(N'2021-09-02T00:15:12.447' AS DateTime), N'admin1', NULL)
INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (10, N'Hoang Thuy Luong', N'098988282', N'hvtnam1999@gmail.com', N'Huong Long, Hue, Thua Thien Hue', N' Tôi cần trợ giúp về vẫn đề nhận hàng hóa', CAST(N'2021-09-02T11:28:40.607' AS DateTime), 1, N' Tôi cần trợ giúp về vẫn đề nhận hàng hóa tôi đã có được thông tin của bạn và liên hệ qua cuộc gọi', N'Tôi cần trợ giúp về vẫn đề nhận hàng', CAST(N'2021-09-02T12:44:28.853' AS DateTime), N'admin1', 15)
INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (16, N'Phạm Hồng Anh', N'0338279409', N'hungtran8909@gmail.com', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'Tôi muốn hộ trợ vấn đề mua hàng', CAST(N'2021-12-23T15:55:40.903' AS DateTime), 0, NULL, N'Tôi muốn hộ trợ vấn đề mua hàng', NULL, NULL, 14)
INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (23, N'Phạm Hồng Anh', N'0338279409', N'hungtran8909@gmail.com', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'Tôi muốn hộ trợ vấn đề mua hàng', CAST(N'2021-12-24T11:01:58.397' AS DateTime), 1, NULL, N'Tôi muốn hộ trợ vấn đề mua hàng', CAST(N'2022-03-03T00:06:54.333' AS DateTime), N'admin1', 14)
INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (24, N'Nguyễn Quốc', N'033687903', N'nquocn2402@gmail.com', N'Gò Dầu', N'ok ok', CAST(N'2022-10-18T15:08:47.077' AS DateTime), 1, N'khong', N'test', CAST(N'2022-10-18T15:09:50.150' AS DateTime), N'admin', 2)
INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (25, N'', N'', N'', N'', N'', CAST(N'2022-12-12T21:17:20.727' AS DateTime), 0, NULL, N'', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Feed_Back] OFF
GO
SET IDENTITY_INSERT [dbo].[Footer] ON 

INSERT [dbo].[Footer] ([IdFooter], [Content], [Status]) VALUES (4, N'
<footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-6">
                <h6>Giới Thiệu</h6>
                <p class="text-justify">Cửa hàng <i>COFF CLOTHES </i> </p>
            </div>

            <div class="col-xs-6 col-md-3">
                <h6>Một số thể loại</h6>
                <ul class="footer-links">
                    <li><a href="">Truyện Tranh</a></li>
                    <li><a href="https://localhost:44350/san-pham/Tieu-Thuyet-2">Tiểu Thuyết</a></li>
                    <li><a href="https://localhost:44350/san-pham/khoa-hoc-10">Khoa Học</a></li>
                    <li><a href="https://localhost:44350/san-pham/van-hoc-7">Văn Học</a></li>
                    <li><a href="https://localhost:44350/san-pham/thieu-nhi-14">Thiếu Nhi</a></li>
                    <li><a href="https://localhost:44350/san-pham/tu-nhien-xa-hoi-9">Tự Nhiên Xã Hội</a></li>

                </ul>

            </div>

            <div class="col-xs-6 col-md-3">
                <h6>Liên Kết</h6>
                <ul class="footer-links">
                    
                    <li><a href="https://localhost:44350/">Trang Chủ</a></li>
                    <li><a href="https://localhost:44350/Lien-He">Liên Hệ</a></li>
                    <li><a href="https://localhost:44350/">Hỗ trợ thanh toán</a></li>
                    <li><a href="https://localhost:44350/">Giấy phép</a></li>
                </ul>
            </div>

            
        </div>
        <hr>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-6 col-xs-12">
                <p class="copyright-text">
                    Copyright &copy; 2021 Thiết kế bởi
                    <a href="#">Hoàng Thường</a>.
                </p>
            </div>

            <div class="col-md-4 col-sm-6 col-xs-12">
                <ul class="social-icons">
                    <li><a class="facebook" href="#"><i class="fab fa-facebook-square"></i></a></li>
                    <li><a class="twitter" href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a class="dribbble" href="#"><i class="fab fa-instagram"></i></a></li>
                    <li><a class="linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
', 1)
SET IDENTITY_INSERT [dbo].[Footer] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([IDMenu], [NameMenu], [Link], [DisplayOrder], [Target], [MenuTypeID], [Status], [CreateDate]) VALUES (3, N'Giới Thiệu', N'/gioi-thieu', 3, N'_self', 1, 1, CAST(N'2022-10-27T15:29:20.907' AS DateTime))
INSERT [dbo].[Menu] ([IDMenu], [NameMenu], [Link], [DisplayOrder], [Target], [MenuTypeID], [Status], [CreateDate]) VALUES (5, N'Khuyến Mại', N'/khuyen-mai', 5, N'_self', 1, 1, CAST(N'2022-10-27T15:37:23.760' AS DateTime))
INSERT [dbo].[Menu] ([IDMenu], [NameMenu], [Link], [DisplayOrder], [Target], [MenuTypeID], [Status], [CreateDate]) VALUES (6, N'Sản Phẩm', N'/San-Pham', 1, N'_self', 1, 1, CAST(N'2021-12-18T14:16:37.790' AS DateTime))
INSERT [dbo].[Menu] ([IDMenu], [NameMenu], [Link], [DisplayOrder], [Target], [MenuTypeID], [Status], [CreateDate]) VALUES (8, N'Liên Hệ', N'/lien-he', 4, N'_self', 1, 1, CAST(N'2022-11-04T15:02:49.047' AS DateTime))
INSERT [dbo].[Menu] ([IDMenu], [NameMenu], [Link], [DisplayOrder], [Target], [MenuTypeID], [Status], [CreateDate]) VALUES (9, N'Đăng Nhập', N'/dang-nhap', 1, N'_self', 2, 1, CAST(N'2022-10-27T15:29:49.697' AS DateTime))
INSERT [dbo].[Menu] ([IDMenu], [NameMenu], [Link], [DisplayOrder], [Target], [MenuTypeID], [Status], [CreateDate]) VALUES (10, N'Đăng Ký', N'/dang-ki', 2, N'_self', 2, 1, CAST(N'2021-12-16T23:55:51.750' AS DateTime))
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([MenuTypeID], [NameType]) VALUES (1, N'Menu Chính')
INSERT [dbo].[MenuType] ([MenuTypeID], [NameType]) VALUES (2, N'Menu Top')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
GO
SET IDENTITY_INSERT [dbo].[Messenger] ON 

INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (1, 1, CAST(N'2020-10-10T00:00:00.000' AS DateTime), NULL, 1, 1)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (2, 15, CAST(N'2021-08-25T23:20:45.760' AS DateTime), NULL, 1, 100)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (3, 15, CAST(N'2021-08-26T00:59:01.003' AS DateTime), NULL, 1, 101)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (4, 16, CAST(N'2021-08-26T16:35:40.753' AS DateTime), NULL, 1, 102)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (5, 14, CAST(N'2021-08-26T23:47:08.650' AS DateTime), NULL, 1, 103)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (6, 14, CAST(N'2021-08-26T23:55:17.963' AS DateTime), NULL, 1, 104)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (7, 14, CAST(N'2021-08-27T00:07:15.873' AS DateTime), NULL, 1, 105)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (8, 14, CAST(N'2021-08-27T00:08:45.423' AS DateTime), NULL, 1, 106)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (9, 14, CAST(N'2021-08-27T00:16:53.470' AS DateTime), NULL, 1, 107)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (10, NULL, CAST(N'2021-08-27T00:37:05.357' AS DateTime), NULL, 1, 108)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (11, NULL, CAST(N'2021-08-27T16:52:07.750' AS DateTime), NULL, 1, 109)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (12, NULL, CAST(N'2021-08-27T16:53:39.747' AS DateTime), NULL, 1, 110)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (13, NULL, CAST(N'2021-08-27T17:06:05.353' AS DateTime), NULL, 1, 111)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (14, 15, CAST(N'2021-08-29T00:50:09.787' AS DateTime), NULL, 1, 113)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (15, 15, CAST(N'2021-08-29T00:53:57.893' AS DateTime), NULL, 1, 114)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (16, NULL, CAST(N'2021-08-29T23:36:56.473' AS DateTime), NULL, 1, 146)
SET IDENTITY_INSERT [dbo].[Messenger] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [NgayTao], [IDNguoiTao], [Status], [DiaChi], [SoDienThoai], [Email]) VALUES (6, N'NonSon', CAST(N'2022-12-04' AS Date), 1, 1, N'Hà Nam', N'0902002045', N'nonsoncor@gmail.com')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [NgayTao], [IDNguoiTao], [Status], [DiaChi], [SoDienThoai], [Email]) VALUES (8, N'WAnh Store', CAST(N'2022-12-04' AS Date), 1, 1, N'Bình Định', N'0890299200', N'exhaanh9x12@gmail.com')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [NgayTao], [IDNguoiTao], [Status], [DiaChi], [SoDienThoai], [Email]) VALUES (9, N'GrimmDC', CAST(N'2022-10-27' AS Date), 1, 1, N'example', N'00000000001', N'exampleGrimmDC@hotmail.com')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [NgayTao], [IDNguoiTao], [Status], [DiaChi], [SoDienThoai], [Email]) VALUES (10, N'NowSaiGon', CAST(N'2022-10-27' AS Date), 1, 1, N'example', N'00000000002', N'exampleNowSaiGon@hotmail.com')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhapHang] ON 

INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (10008, 10010, 10000, 11, CAST(N'2022-03-02T23:23:32.690' AS DateTime), 2, 1, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (10009, 10012, 100000, 15, CAST(N'2022-03-02T23:25:24.757' AS DateTime), 2, 1, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (10010, 10011, 100000, 15, CAST(N'2022-03-02T23:26:33.883' AS DateTime), 2, 5, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (10011, 10012, 15000, 7, CAST(N'2022-03-03T01:02:18.900' AS DateTime), 2, 1, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (10012, 10013, 10000, 150, CAST(N'2022-03-03T22:26:48.813' AS DateTime), 2, 2, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (10013, 10014, 200000, 50, CAST(N'2022-10-27T15:02:23.533' AS DateTime), 2, 9, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (10014, 10016, 200000, 50, CAST(N'2022-12-04T16:27:25.990' AS DateTime), 2, 10, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (10015, 10017, 200000, 50, CAST(N'2022-12-04T16:28:30.950' AS DateTime), 2, 9, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (10016, 10020, 200000, 50, CAST(N'2022-12-04T16:30:06.280' AS DateTime), 2, 9, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (10017, 10019, 200000, 50, CAST(N'2022-12-04T16:30:38.243' AS DateTime), 2, 8, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (10018, 10018, 200000, 50, CAST(N'2022-12-04T16:31:10.550' AS DateTime), 2, 9, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (10019, 10013, 200000, 50, CAST(N'2022-12-04T16:31:45.927' AS DateTime), 2, 10, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (10020, 10015, 200000, 50, CAST(N'2022-12-04T16:32:02.710' AS DateTime), 2, 9, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[NhapHang] OFF
GO
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 10020, 1, 22800)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 10022, 1, 22800)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (14, 10023, 1, 58500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (14, 10025, 1, 58500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 118, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 119, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 120, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 121, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 128, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 129, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 130, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 150, 10, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 154, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 156, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 167, 2, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 172, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 226, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 113, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 115, 13, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 116, 12, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 117, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 123, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 124, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 126, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 127, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 131, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 143, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 151, 10, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 152, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 155, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 157, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 158, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 163, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 167, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 170, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 183, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 188, 14, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 114, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 122, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 125, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 133, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 135, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 136, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 138, 10, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 139, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 140, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 142, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 146, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 148, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 149, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 169, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 183, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 184, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 185, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 187, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 191, 4, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 196, 12, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 197, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 198, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 200, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (36, 167, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (36, 168, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (36, 183, 2, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (37, 167, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (37, 171, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (37, 172, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (38, 173, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (38, 188, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (38, 190, 10, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (38, 191, 5, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (40, 174, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (40, 176, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (40, 177, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (40, 186, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (40, 201, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (41, 175, 1, 28000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (43, 197, 1, 18000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (43, 199, 1, 18000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (43, 215, 1, 18000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 189, 10, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 190, 3, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 192, 2, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 193, 2, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 194, 2, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 195, 2, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 213, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 214, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 216, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 188, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 192, 2, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 193, 2, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 194, 2, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 195, 2, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 201, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 202, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 203, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 204, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 206, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 207, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 209, 1, 29000)
GO
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 210, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 212, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 223, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 244, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (46, 205, 1, 44000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (46, 206, 1, 44000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (46, 208, 1, 44000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (48, 217, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (48, 218, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 230, 1, 120000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 246, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 248, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 249, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 251, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 252, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 253, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 254, 3, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 255, 3, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 260, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 262, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 225, 1, 34000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 235, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 239, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 243, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 250, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 264, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 265, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (54, 234, 1, 79000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (55, 247, 1, 100000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (56, 224, 1, 20000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (57, 223, 1, 20000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (60, 227, 1, 20000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (60, 229, 1, 20000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (60, 269, 1, 20000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (61, 228, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (61, 230, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (62, 236, 149, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (62, 237, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (62, 238, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (62, 261, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (62, 267, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (62, 268, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10010, 10022, 1, 85000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10011, 10021, 1, 9000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10011, 10026, 1, 9000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10013, 10032, 1, 320000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10013, 10043, 1, 320000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10014, 10024, 1, 320000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10014, 10025, 1, 320000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10014, 10030, 1, 320000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10014, 10034, 1, 320000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10014, 10041, 1, 320000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10014, 10043, 1, 320000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10015, 10032, 1, 390000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10015, 10038, 3, 390000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10016, 10033, 1, 450000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10016, 10035, 1, 450000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10016, 10039, 1, 450000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10016, 10042, 1, 450000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10017, 10033, 1, 340000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10018, 10027, 1, 340000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10018, 10028, 1, 340000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10018, 10029, 1, 340000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10018, 10036, 1, 340000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10018, 10037, 1, 340000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10019, 10027, 1, 440000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10019, 10028, 1, 440000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10019, 10029, 1, 440000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10019, 10031, 1, 440000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10019, 10039, 1, 440000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10019, 10040, 1, 440000)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10025, CAST(N'2022-10-29T21:01:46.947' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 1, 2, 0, NULL, N'COD', 2, N'1622510/29/20229:01:46pm')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10027, CAST(N'2022-12-05T00:15:23.307' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'COD', 2, N'1057412/5/202212:15:23am')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10028, CAST(N'2022-12-05T00:15:35.030' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'COD', 2, N'4055312/5/202212:15:35am')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10029, CAST(N'2022-12-05T00:16:35.677' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'COD', 2, N'5903812/5/202212:16:35am')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10030, CAST(N'2022-12-05T00:19:35.900' AS DateTime), 10008, N'Anh Quoc  Nguyen Le', N'Chua có thông tin', N'Chưa có thông tin', N'nquocn2402@gmail.com', 0, 0, 0, NULL, N'COD', 2, N'744412/5/202212:19:35am')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10031, CAST(N'2022-12-05T00:21:57.180' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'COD', 2, N'5081012/5/202212:21:57am')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10032, CAST(N'2022-12-05T00:30:30.667' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 1, 2, 1, NULL, N'COD', 2, N'815212/5/202212:30:30am')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10033, CAST(N'2022-12-05T09:38:05.863' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 1, 2, 1, NULL, N'COD', 2, N'1528512/5/20229:38:05am')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10034, CAST(N'2022-12-05T09:54:08.843' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'Cổng thanh toán momo', 2, N'22b843eb-d4ce-481a-ac10-744d48fa15e7')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10035, CAST(N'2022-12-05T10:07:32.317' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'Cổng thanh toán momo', 2, N'478a0ef4-cc35-4625-a5b0-18956608c120')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10036, CAST(N'2022-12-06T00:11:23.380' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'Cổng thanh toán momo', 2, N'8380b441-a315-4552-a3dd-6635c115161d')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10037, CAST(N'2022-12-07T08:24:41.903' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'Cổng thanh toán momo', 2, N'ac90855d-bfc0-4579-9fcf-fcd15adc4f81')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10038, CAST(N'2022-12-07T08:35:19.537' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'COD', 2, N'4269112/7/20228:35:19am')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10039, CAST(N'2022-12-07T17:42:45.340' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'Cổng thanh toán momo', 2, N'14bccec9-7fab-49d3-80a5-4a5ff677a83a')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10040, CAST(N'2022-12-07T22:23:04.200' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'Cổng thanh toán momo', 2, N'0eb0dd62-4a32-4eec-91b7-8decda34a92f')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10041, CAST(N'2022-12-07T22:32:49.290' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'Cổng thanh toán momo', 2, N'92405b69-f474-4216-8745-d7bd13577ca0')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10042, CAST(N'2022-12-08T23:47:37.563' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'Cổng thanh toán momo', 2, N'63a9fcd1-6cbe-4a6b-a2f1-a948f20ffdb0')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (10043, CAST(N'2022-12-09T10:55:28.667' AS DateTime), 10007, N'Nguyen Le Anh Quoc', N'0393716800', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', 0, 0, 0, NULL, N'COD', 2, N'403012/9/202210:55:28am')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen], [Status]) VALUES (1, N'Admin', 1)
INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen], [Status]) VALUES (2, N'Khách hàng', 1)
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [ThuongHieu], [NhaSanXuat], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (10013, N'Áo Grimm DC Essential', N'ao-grimmDC-Essential', N'Grimm DC', N'Grimm DC', 48, N'/DataImage/images/2.png', 17, NULL, CAST(N'2022-10-27T14:45:57.873' AS DateTime), NULL, 1, 3, N'- Giúp giảm đen da tối đa nhờ chất liệu vải chống tia UV (tia cực tím) lên đến 50+, tương đương với khả năng chống đến 98% tia UV gây hại. Tính năng đặc biệt này giúp hạn chế quá trình hình thành hắc tố melanin - sắc tố đen gây sẫm màu da.
- Thiết kế tối giản, với Grimm DC Brand name và Signature box logo.
- Hình in: kéo lụa mực plastisol.

. Box logo thêu tỉ mỉ và tinh tế.

 

Thông tin thêm: Để bảo quản phần hoạ tiết này, chúng tôi khuyên bạn lộn mặt trái khi giặt và ủi, sử dụng túi giặt, cũng như không sử dụng chế độ sấy của máy.', N'- Chất liệu: GRDC Standard™ Fabric: 94% cotton 6% spandex co dãn 4 chiều, ít nhăn, không xù, ít nhão, thấm hút tốt và mát mẻ, không tồn dư hóa chất gây ung thư, độ cầm màu cấp 4-5. Giặt máy thoải mái.', NULL, 320000, 200000, NULL, 49)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [ThuongHieu], [NhaSanXuat], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (10014, N'Áo Basic long sleeve', N'ao-basic-long-sleeve', N'Grimm DC', N'Grimm DC', 46, N'/DataImage/images/1.png', 18, NULL, CAST(N'2022-10-27T14:49:39.870' AS DateTime), NULL, 1, 7, N'- Giúp giảm đen da tối đa nhờ chất liệu vải chống tia UV (tia cực tím) lên đến 50+, tương đương với khả năng chống đến 98% tia UV gây hại. Tính năng đặc biệt này giúp hạn chế quá trình hình thành hắc tố melanin - sắc tố đen gây sẫm màu da.
- Thiết kế tối giản, với duy nhất Grimm DC Signature box logo.
- Box logo thêu tỉ mỉ và tinh tế.', N'- Chất liệu: GRDC Standard™ Fabric: 94% cotton 6% spandex co dãn 4 chiều, ít nhăn, không xù, ít nhão, thấm hút tốt và mát mẻ, không tồn dư hóa chất gây ung thư, độ cầm màu cấp 4-5. Giặt máy thoải mái.', NULL, 320000, 200000, NULL, 48)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [ThuongHieu], [NhaSanXuat], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (10015, N'Áo cá', N'ao-ca', N'Grimm DC', N'Grimm DC', 46, N'/DataImage/images/3-1.png', 17, NULL, CAST(N'2022-10-27T15:16:06.943' AS DateTime), NULL, 1, 3, N'Để bảo quản phần hoạ tiết này, khi giặt vui lòng lộn mặt trái, sử dụng túi giặt, cũng như không sử dụng chế độ sấy của máy. Khi giặt xong, hãy phơi lên ngay để tránh hình in bị tổn hại.', N'Chất liệu: GRDC Standard™ Fabric: 94% cotton 6% spandex co dãn 4 chiều, ít nhăn, không xù, ít nhão, thấm hút tốt và mát mẻ, không tồn dư hóa chất gây ung thư, độ cầm màu cấp 4-5. Giặt máy thoải mái.', NULL, 390000, 200000, NULL, 49)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [ThuongHieu], [NhaSanXuat], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (10016, N'Áo Dòng máu Lạc Hồng', N'ao-dong-mau-lac-hong', N'Grimm DC', N'Grimm DC', 47, N'/DataImage/images/4.png', 18, NULL, CAST(N'2022-10-27T15:17:35.213' AS DateTime), NULL, 1, 5, N'Để bảo quản phần hoạ tiết này, khi giặt vui lòng lộn mặt trái, sử dụng túi giặt, cũng như không sử dụng chế độ sấy của máy. Khi giặt xong, hãy phơi lên ngay để tránh hình in bị tổn hại.', N'Chất liệu: GRDC Standard™ Fabric: 94% cotton 6% spandex co dãn 4 chiều, ít nhăn, không xù, ít nhão, thấm hút tốt và mát mẻ, không tồn dư hóa chất gây ung thư, độ cầm màu cấp 4-5. Giặt máy thoải mái.', NULL, 450000, 200000, NULL, 49)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [ThuongHieu], [NhaSanXuat], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (10017, N'Quần Flex shorts', N'quan-flex-shorts', N'Grimm DC', N'Grimm DC', 50, N'/DataImage/images/5.png', 19, NULL, CAST(N'2022-10-27T15:19:58.007' AS DateTime), NULL, 1, 2, N'Quần có 4 túi thường được đánh bọ rất kỹ, kèm túi ẩn với khóa kéo YKK Nhật chính hãng, để điện thoại và những đồ quý giá luôn an toàn.
 Phom quần suông và rộng. Trendy nhưng thoải mái. Lưng thun mềm, co giãn tốt, có dây rút để điều chỉnh vừa với eo và không gây khó chịu.', N'hất liệu: 100% sợi tổng hợp Polyester với công nghệ dệt sợi dọc ATY và sợi ngang HIGH STRETCH, tạo ra độ bền lý tính vượt trội, cùng cảm giác trên da tương tự sợi Cotton tự nhiên. 
Giặt máy thoải mái. 𝗩𝗮̉𝗶 𝗰𝗵𝗼̂́𝗻𝗴 𝗻𝗵𝗮̆𝗻. 
Không bạc màu. Luôn đẹp như mới.', NULL, 340000, 200000, NULL, 49)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [ThuongHieu], [NhaSanXuat], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (10018, N'Quần Worthy life shorts', N'quan-worthy-life-shorts', N'Grimm DC', N'Grimm DC', 47, N'/DataImage/images/6.png', 19, NULL, CAST(N'2022-10-27T15:20:45.293' AS DateTime), NULL, 1, 4, N'Quần có 4 túi thường được đánh bọ rất kỹ, kèm túi ẩn với khóa kéo YKK Nhật chính hãng, để điện thoại và những đồ quý giá luôn an toàn.
 Phom quần suông và rộng. Trendy nhưng thoải mái. Lưng thun mềm, co giãn tốt, có dây rút để điều chỉnh vừa với eo và không gây khó chịu.', N'hất liệu: 100% sợi tổng hợp Polyester với công nghệ dệt sợi dọc ATY và sợi ngang HIGH STRETCH, tạo ra độ bền lý tính vượt trội, cùng cảm giác trên da tương tự sợi Cotton tự nhiên. 
Giặt máy thoải mái. 𝗩𝗮̉𝗶 𝗰𝗵𝗼̂́𝗻𝗴 𝗻𝗵𝗮̆𝗻. 
Không bạc màu. Luôn đẹp như mới.', NULL, 340000, 200000, NULL, 50)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [ThuongHieu], [NhaSanXuat], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (10019, N'Quần Flex pants', N'quan-flex-pants', N'Grimm DC', N'Grimm DC', 46, N'/DataImage/images/7.png', 20, NULL, CAST(N'2022-10-27T15:21:52.537' AS DateTime), NULL, 1, 5, N'Quần có 4 túi thường được đánh bọ rất kỹ, kèm túi ẩn với khóa kéo YKK Nhật chính hãng, để điện thoại và những đồ quý giá luôn an toàn.
 Phom quần suông và rộng. Trendy nhưng thoải mái. Lưng thun mềm, co giãn tốt, có dây rút để điều chỉnh vừa với eo và không gây khó chịu.', N'hất liệu: 100% sợi tổng hợp Polyester với công nghệ dệt sợi dọc ATY và sợi ngang HIGH STRETCH, tạo ra độ bền lý tính vượt trội, cùng cảm giác trên da tương tự sợi Cotton tự nhiên. 
Giặt máy thoải mái. 𝗩𝗮̉𝗶 𝗰𝗵𝗼̂́𝗻𝗴 𝗻𝗵𝗮̆𝗻. 
Không bạc màu. Luôn đẹp như mới.', NULL, 440000, 200000, NULL, 50)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [ThuongHieu], [NhaSanXuat], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (10020, N'Quần Flex pantsStraight plaid pants', N'quan-straight-plaid-pants', N'Grimm DC', N'Grimm DC', 50, N'/DataImage/images/8.png', 20, NULL, CAST(N'2022-10-27T15:23:00.143' AS DateTime), NULL, 1, 1, N'Với những tiểu tiết đắt giá:

. Lưng thun ẩn, kỹ thuật may cao cấp (tương tự trên quần Âu Grimm DC) giúp bạn ăn no cách mấy cũng không lộ bụng.
Túi ẩn với dây khoá YKK Nhật chính hãng.
Box logo thêu ở con đỉa trái.
Thích hợp cho đi học, đi chơi, hẹn hò ngày đầu tiên.', N'hất liệu: 100% sợi tổng hợp Polyester với công nghệ dệt sợi dọc ATY và sợi ngang HIGH STRETCH, tạo ra độ bền lý tính vượt trội, cùng cảm giác trên da tương tự sợi Cotton tự nhiên. 
Giặt máy thoải mái. 𝗩𝗮̉𝗶 𝗰𝗵𝗼̂́𝗻𝗴 𝗻𝗵𝗮̆𝗻. 
Không bạc màu. Luôn đẹp như mới.', NULL, 440000, 200000, NULL, 50)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([Id], [Image], [DisPlayOrder], [Title], [Link], [Status]) VALUES (2, N'/DataImage/files/banner1.png', 2, N'Dòng máu lạc hồng', NULL, 1)
INSERT [dbo].[Slide] ([Id], [Image], [DisPlayOrder], [Title], [Link], [Status]) VALUES (3, N'/DataImage/files/slideshow_1.png', 1, N'Áo thun', NULL, 1)
INSERT [dbo].[Slide] ([Id], [Image], [DisPlayOrder], [Title], [Link], [Status]) VALUES (4, N'/DataImage/files/slideshow_2.png', 3, N'Sdlieshow-2', NULL, 0)
INSERT [dbo].[Slide] ([Id], [Image], [DisPlayOrder], [Title], [Link], [Status]) VALUES (5, N'/DataImage/files/slideshow_3.png', 4, N'Sản phẩm mới', N'/san-pham', 1)
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (1, N'admin', N'827ccb0eea8a706c4c34a16891f84e7b', N'Nguyễn Lê Anh Quốc', N'Tây Ninh', N'a', N'a', 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (12, N'hoangthuong', N'3ccc92e666eecce9d867dc7f3206a34a', N'HOANG VAN SANG', N'Hà Nam, Yên Thế, Đương Đại', N'sangdt97@gmail.com', N'0889932798', 1, CAST(N'2021-08-24' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (13, N'chumninja1999', N'fc2a3906c310f090e7d194d867cf4de3', N'Đinh Văn Nam', N'Hưng Yên, Phố Hiến, Đình Trung', N'hoangvtnam1996@gmail.com', N'098989119', 1, CAST(N'2021-08-21' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (14, N'baba3', N'fc2a3906c310f090e7d194d867cf4de3', N'Phạm Hồng Anh', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', N'0338279409', 1, CAST(N'2021-12-22' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (15, N'hungjuki7', N'fc2a3906c310f090e7d194d867cf4de3', N'Hoang Thuy Luong', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', N'098988282', 1, CAST(N'2021-09-03' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (16, N'nubuihung', N'fc2a3906c310f090e7d194d867cf4de3', N'VAN SANG HOANG', N'HA NOI', N'sangdt97@gmail.com', N'08889932798', 1, CAST(N'2021-08-26' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (17, N'anhdaden', N'fc2a3906c310f090e7d194d867cf4de3', N'Đinh Tràng An', N'Ninh Binh, Phố Hiến, Nam Định', N'nubuihung222@gmail.com', N'0356778112', 1, CAST(N'2021-08-30' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (18, N'idobaybi', N'25d55ad283aa400af464c76d713c07ad', N'VAN THUONG HOANG', N'Huong Long, Hue, Thua Thien Hue', N'nubuihung@gmail.com', N'0356778112', 1, CAST(N'2021-09-01' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (19, N'jackison899@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Linh  Khánh', N'Hải Dương Nam Định,Phú Quốc', N'jackison899@gmail.com', N'0889932789', 1, CAST(N'2021-09-01' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (20, N'user_tnicuoe_facebook@tfbnw.net', N'827ccb0eea8a706c4c34a16891f84e7b', N'User Test Login Facebook', N'Hòa Bình , Kon Tum, Đak Lắk', N'user_tnicuoe_facebook@tfbnw.net', N'0889932890', 1, CAST(N'2021-09-01' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (21, N'kemke', N'25d55ad283aa400af464c76d713c07ad', N'ĐINH HOÀNG NAM', N'Phố Hương, Lạng Sơn', N'hvtnam1998@gmail.com', N'0356778112', 1, CAST(N'2021-09-06' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (22, N'user_xuddhqc_test@tfbnw.net', N'827ccb0eea8a706c4c34a16891f84e7b', N'User FB Test', N'Hà Nam', N'user_xuddhqc_test@tfbnw.net', N'0890199911', 1, CAST(N'2021-10-08' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (23, N'gersudbalj_1633335504@tfbnw.net', N'827ccb0eea8a706c4c34a16891f84e7b', N'Hoàng Khang', N'Hưng Đao, Đông Triều, Quảng Ninh', N'gersudbalj_1633335504@tfbnw.net', N'0889281921', 1, CAST(N'2021-10-04' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (24, N'anhdadendz', N'fc2a3906c310f090e7d194d867cf4de3', N'ÂN DƯ', N'Huong Long, Hue, Thua Thien Hue', N'thuongdt002@gmail.com', N'0356778112', 1, CAST(N'2021-11-25' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (25, N'tranthuong', N'25d55ad283aa400af464c76d713c07ad', N'Hoang Hau', N'Huong Long, Hue, Thua Thien Hue', N'thuongdt007@gmail.com', N'0889932789', 1, CAST(N'2021-12-20' AS Date), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (26, N'becui', N'25d55ad283aa400af464c76d713c07ad', N'Hoang Juy', N'Hưng Đạo, Đông Triều, Quảng Ninh', N'thuongdt015@gmail.com', N'0356778112', 1, CAST(N'2021-12-20' AS Date), NULL, NULL, NULL, 0)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (27, N'hungjuki712', N'25f9e794323b453885f5181f1b624d0b', N'VAN THUONG HOANG', N'Huong Long, Hue, Thua Thien Hue', N'thuongdt00dz@gmail.com', N'0989454923', 1, CAST(N'2021-12-20' AS Date), NULL, NULL, NULL, 0)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (28, N'xqajwvpkgq_1640017285@tfbnw.net', N'827ccb0eea8a706c4c34a16891f84e7b', N'Ánh  Hoàng', N'Chưa có thông tin', N'xqajwvpkgq_1640017285@tfbnw.net', N'Chua có thông tin', 1, CAST(N'2021-12-20' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (10006, N'datmtt1', N'8b45872cb3124f6bd0ee3b35427c3a13', N'Đoàn Trọng Đạt', N'198 hà nội', N'abc1s2w23@gmail.com', N'0828568959', 1, CAST(N'2022-03-03' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (10007, N'quocquoc', N'3b0f9b8f427f3abceadda4dee6c5e8fa', N'Nguyen Le Anh Quoc', N'41/14 Ngô Quyền ', N'nlaq24022001@gmail.com', N'0393716800', 1, CAST(N'2022-10-19' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (10008, N'nquocn2402@gmail.com', N'827ccb0eea8a706c4c34a16891f84e7b', N'Anh Quoc  Nguyen Le', N'Chưa có thông tin', N'nquocn2402@gmail.com', N'Chua có thông tin', 1, CAST(N'2022-10-29' AS Date), NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
USE [master]
GO
ALTER DATABASE [DATA_CLOTHES] SET  READ_WRITE 
GO
