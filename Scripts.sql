
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 05/24/2012 12:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](50) NOT NULL,
	[LName] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[Suburb] [varchar](50) NOT NULL,
	[Postcode] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Ctype] [varchar](50) NOT NULL,
	[CardNo] [varchar](50) NOT NULL,
	[ExpDate] [datetime] NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (1, N'Jack', N'White', N'0425678915', N'1', N'Hill Street', N'Richmond', N'3212', N'VIC', N'VISA', N'1234567890123456', CAST(0x0000A56C00000000 AS DateTime), N'jack@yahoo.com')
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (2, N'Kelly', N'Clark', N'0425789632', N'56', N'St. Kilda road', N'Southbank', N'3200', N'VIC', N'VISA', N'1234567890123456', CAST(0x0000A8E000000000 AS DateTime), N'Kelly@yahoo.com')
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (47, N'Jennifer', N'Jones', N'0425987412', N'12', N'School Street', N'Richmond', N'3200', N'VIC', N'AMEX', N'123456789123456', CAST(0x0000A06B00000000 AS DateTime), N'Jen@yahoo.com')
SET IDENTITY_INSERT [dbo].[Customers] OFF
/****** Object:  Table [dbo].[Suppliers]    Script Date: 05/24/2012 12:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[SName] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[Suburb] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Postcode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON
INSERT [dbo].[Suppliers] ([SID], [SName], [Phone], [Email], [Address1], [Address2], [Suburb], [State], [Postcode]) VALUES (2, N'LG', N'0425874123', N'LG@yahoo.com', N'50,St.Kilda road', NULL, N'SouthBank', N'VIC', N'3006')
INSERT [dbo].[Suppliers] ([SID], [SName], [Phone], [Email], [Address1], [Address2], [Suburb], [State], [Postcode]) VALUES (6, N'Breville', N'0425678915', N'Breville@yahoo.com', N'14', N'St.Kilda Road', N'Southbank', N'VIC', N'3006')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
/****** Object:  Table [dbo].[ShoppingCartData]    Script Date: 05/24/2012 12:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShoppingCartData](
	[TempOrderID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NOT NULL,
	[PName] [varchar](50) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCartData] PRIMARY KEY CLUSTERED 
(
	[TempOrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 05/24/2012 12:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[PName] [varchar](50) NOT NULL,
	[Brand] [varchar](50) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitsInStock] [int] NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[SID] [int] NOT NULL,
	[ROL] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (3,  N'Huawei P20', N'../Images/Products/huawei_p20.jpg',599.00,48, N' ', N'Twilight - 128GB',2,10)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (10, N'Huawei P20 Pro', N'../Images/Products/huawei_p20_pro.jpg',799.00,43, N' ', N'Blue - 128GB',6,10)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (12, N'iPhone 7', N'../Images/Products/iphone7_rosegold.jpg',539.00,44, N' ', N'Rose Gold - 32GB',2,5)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (15, N'iPhone 7', N'../Images/Products/iphone7_silver.jpg',539.00,43, N' ', N'Silver - 32GB',2,10)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (17, N'iPhone X', N'../Images/Products/iphone-x-space-grey.png',899.00,55, N' ', N'Space Grey - 64GB',2,20)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (18, N'LG V30', N'../Images/Products/lg_v30.jpg',440.00,55, N' ', N'Cloud Silver - 64GB',2,20)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (19, N'Samsung Galaxy Note 9', N'../Images/Products/samsung_note_9_blue.jpg',899.00,55, N' ', N'Ocean Blue - 128GB',2,20)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (21, N'Samsung Galaxy S9', N'../Images/Products/samsung_s9_purple.jpg',729.00,55, N' ', N'Lilac Purple - 64GB',2,20)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (22, N'Xiaomi Mi 8', N'../Images/Products/xiaomi_mi8.jpg',479.00,55, N' ', N'Blue - 128GB',2,20)

SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 05/24/2012 12:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[CID] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [CID]) VALUES (52, CAST(0x0000A05B00B0FB24 AS DateTime), CAST(0x0000A05D00000000 AS DateTime), 47)
SET IDENTITY_INSERT [dbo].[Orders] OFF
/****** Object:  Table [dbo].[Order_Products]    Script Date: 05/24/2012 12:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Products](
	[OrderID] [int] NOT NULL,
	[PID] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[TotalSale] [money] NOT NULL,
 CONSTRAINT [PK_Order_Products] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[PID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (52, 12, 1, 200.0000)
/****** Object:  ForeignKey [FK_Products_Suppliers]    Script Date: 05/24/2012 12:24:33 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SID])
REFERENCES [dbo].[Suppliers] ([SID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
/****** Object:  ForeignKey [FK_Orders_Customers]    Script Date: 05/24/2012 12:24:33 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CID])
REFERENCES [dbo].[Customers] ([CID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
/****** Object:  ForeignKey [FK_Order_Products_Orders]    Script Date: 05/24/2012 12:24:33 ******/
ALTER TABLE [dbo].[Order_Products]  WITH CHECK ADD  CONSTRAINT [FK_Order_Products_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order_Products] CHECK CONSTRAINT [FK_Order_Products_Orders]
GO
/****** Object:  ForeignKey [FK_Order_Products_Products]    Script Date: 05/24/2012 12:24:33 ******/
ALTER TABLE [dbo].[Order_Products]  WITH CHECK ADD  CONSTRAINT [FK_Order_Products_Products] FOREIGN KEY([PID])
REFERENCES [dbo].[Products] ([PID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order_Products] CHECK CONSTRAINT [FK_Order_Products_Products]
GO
