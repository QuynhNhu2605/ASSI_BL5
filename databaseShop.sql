
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[displayName] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [text] NULL,
	[created_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[description] [nvarchar](255) NULL,
	[image_url] [nvarchar](255) NULL,
	[created_date] [date] NULL,
	[category_id] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Áo len')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Hoa')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Móc khóa')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Kẹp tóc')
INSERT [dbo].[Category] ([id], [name]) VALUES (5, N'Túi')
INSERT [dbo].[Category] ([id], [name]) VALUES (6, N'Nến thơm')
INSERT [dbo].[Category] ([id], [name]) VALUES (7, N'Tất cả')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (1, N'Áo len handmade', 5, 300000, N'Áo len freesize dưới 70kg', N'http://localhost:9999/Project_BL5/Picture/danhmucsp/275542646_1368035347038290_3840490951541848611_n.png', CAST(N'2021-08-23' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (2, N'túi handmade', 8, 150000, N' Size 20*25cm', N'http://localhost:9999/Project_BL5/Picture/danhmucsp/277080087_969597183815232_6895424573581673178_n.png', CAST(N'2021-04-03' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (3, N'Chậu hoa hướng dương', 18, 100000, N'Size 15*25 cm. Bao gồm hoa và chậu', N'http://localhost:9999/Project_BL5/Picture/danhmucsp/277435692_5027610087360385_6240365418702625663_n.png', CAST(N'2021-01-21' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (4, N'Móc khóa len thú', 17, 30000, N'Size 5*10cm', N'http://localhost:9999/Project_BL5/Picture/sanphamvip/277473420_424115766070724_4833094248637601977_n.png', CAST(N'2021-02-09' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (5, N'Túi màu xanh', 6, 150000, N'Size 15*22cm', N'http://localhost:9999/Project_BL5/Picture/sanphamvip/277691521_7210877238987697_7161733669373659183_n.png', CAST(N'2021-08-23' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (6, N'Boa hoa len', 16, 250000, N'1 bó gồm 20 bông', N'http://localhost:9999/Project_BL5/Picture/danhmucsp/277683721_1012762976010195_3108623145419320539_n.png', CAST(N'2021-09-25' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (7, N'hoa lavender', 19, 350000, N'250 cành hoa khô', N'http://localhost:9999/Project_BL5/Picture/sanphamvip/277850130_261307516214018_5033806617465884536_n.png', CAST(N'2021-07-07' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (8, N'Nến thơm quả dâu', 10, 25000, N'Size 5*8 cm màu đỏ', N'http://localhost:9999/Project_BL5/Picture/sanphamvip/278146828_4561793397258025_3078569932888622186_n.png', CAST(N'2022-02-03' AS Date), 6)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__order__30F848ED] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__order__30F848ED]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__account___2F10007B] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__account___2F10007B]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__shipping__300424B4] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__shipping__300424B4]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__categor__267ABA7A] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__categor__267ABA7A]
GO
USE [master]
GO
ALTER DATABASE [ShoppingOnlineDB] SET  READ_WRITE 
GO
