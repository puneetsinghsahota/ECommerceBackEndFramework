USE [tempdb]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 06/12/2018 22:01:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[addressID] [int] NOT NULL,
	[postCode] [varchar](255) NULL,
	[houseNumber] [varchar](255) NULL,
	[cityID] [int] NULL,
	[countryID] [int] NULL,
	[countyID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[addressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cartID] [int] NOT NULL,
	[customerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog](
	[catalogID] [int] NOT NULL,
	[vendorID] [int] NULL,
	[shopID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[catalogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[cityID] [int] NOT NULL,
	[cityName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[cityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[colorID] [int] IDENTITY(1,1) NOT NULL,
	[colorName] [varchar](50) NOT NULL,
	[colorJPEGURL] [varchar](100) NOT NULL,
	[imageRatioTypeID] [int] NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[colorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[contactID] [int] NOT NULL,
	[phoneNo] [varchar](255) NULL,
	[addressID] [int] NULL,
	[emailID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[contactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[countryID] [int] NOT NULL,
	[countryName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[countryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[County]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County](
	[countyID] [int] NOT NULL,
	[countyName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[countyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customerID] [int] NOT NULL,
	[userNameID] [int] NULL,
	[nameID] [int] NULL,
	[contactID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[emailID] [int] NOT NULL,
	[email] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[emailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[groupID] [int] IDENTITY(1,1) NOT NULL,
	[offerID] [int] NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[groupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageRatioType]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageRatioType](
	[imageRatioTypeID] [int] IDENTITY(1,1) NOT NULL,
	[widthToHeightRatio] [float] NOT NULL,
 CONSTRAINT [PK_ImageRatioType] PRIMARY KEY CLUSTERED 
(
	[imageRatioTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[invoiceID] [int] NOT NULL,
	[salesID] [int] NULL,
	[vendorID] [int] NULL,
	[customerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[invoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Name]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Name](
	[nameID] [int] NOT NULL,
	[firstName] [varchar](255) NULL,
	[midName] [varchar](255) NULL,
	[surName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[nameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offer]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offer](
	[offerID] [int] IDENTITY(1,1) NOT NULL,
	[offerRef] [varchar](50) NOT NULL,
	[offerTypeID] [int] NOT NULL,
	[subOfferID] [int] NULL,
	[focusValue] [float] NOT NULL,
 CONSTRAINT [PK_Offer] PRIMARY KEY CLUSTERED 
(
	[offerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferType]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferType](
	[offerTypeID] [int] IDENTITY(1,1) NOT NULL,
	[offerTypeRef] [varchar](80) NOT NULL,
	[discounted] [bit] NOT NULL,
	[multipleOfferType] [bit] NOT NULL,
	[routineType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_OfferType] PRIMARY KEY CLUSTERED 
(
	[offerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderID] [int] NOT NULL,
	[cartID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhoneNumber]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhoneNumber](
	[phoneNoID] [int] NOT NULL,
	[phoneNumber] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[phoneNoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [varchar](50) NOT NULL,
	[categoryID] [int] NULL,
	[tagID] [int] NULL,
	[description] [varchar](80) NOT NULL,
	[sellingPrice] [float] NOT NULL,
	[costPrice] [float] NOT NULL,
	[quantity] [int] NULL,
	[colorID] [int] NULL,
	[imageID] [int] NULL,
	[catelogID] [int] NULL,
	[groupID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[pImageID] [int] IDENTITY(1,1) NOT NULL,
	[PImageURL] [varchar](100) NOT NULL,
	[imageRatioTypeID] [int] NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[pImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[salesID] [int] NOT NULL,
	[orderID] [int] NULL,
	[totalProfit] [int] NULL,
	[salesTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[salesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SelectedItems]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelectedItems](
	[sItemID] [int] NOT NULL,
	[productID] [int] NULL,
	[cartID] [int] NULL,
	[Quantity] [int] NULL,
	[Profit] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[sItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[shopID] [int] NOT NULL,
	[addressID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[shopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[tagID] [int] IDENTITY(1,1) NOT NULL,
	[tags] [varchar](80) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[tagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserName]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserName](
	[userNameID] [int] NOT NULL,
	[userName] [varchar](255) NULL,
	[userType] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[userNameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[vendorID] [int] NOT NULL,
	[nameID] [int] NULL,
	[userNameID] [int] NULL,
	[contactID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[vendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorInvoice]    Script Date: 06/12/2018 22:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorInvoice](
	[vendorInvoiceID] [int] NOT NULL,
	[vendorID] [int] NULL,
	[totalGeneratedProfit] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[vendorInvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorSales]    Script Date: 06/12/2018 22:01:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorSales](
	[vendorSalesID] [int] NOT NULL,
	[salesID] [int] NULL,
	[vendorID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[vendorSalesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([cityID])
REFERENCES [dbo].[City] ([cityID])
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([countryID])
REFERENCES [dbo].[Country] ([countryID])
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([countyID])
REFERENCES [dbo].[County] ([countyID])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([customerID])
REFERENCES [dbo].[Customer] ([customerID])
GO
ALTER TABLE [dbo].[Catalog]  WITH CHECK ADD FOREIGN KEY([shopID])
REFERENCES [dbo].[Shop] ([shopID])
GO
ALTER TABLE [dbo].[Catalog]  WITH CHECK ADD FOREIGN KEY([vendorID])
REFERENCES [dbo].[Vendor] ([vendorID])
GO
ALTER TABLE [dbo].[Color]  WITH CHECK ADD  CONSTRAINT [iMGAEFK] FOREIGN KEY([imageRatioTypeID])
REFERENCES [dbo].[ImageRatioType] ([imageRatioTypeID])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Color] CHECK CONSTRAINT [iMGAEFK]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD FOREIGN KEY([addressID])
REFERENCES [dbo].[Address] ([addressID])
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD FOREIGN KEY([emailID])
REFERENCES [dbo].[Email] ([emailID])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([contactID])
REFERENCES [dbo].[Contact] ([contactID])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([nameID])
REFERENCES [dbo].[Name] ([nameID])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([userNameID])
REFERENCES [dbo].[UserName] ([userNameID])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [offer_fk] FOREIGN KEY([offerID])
REFERENCES [dbo].[OfferType] ([offerTypeID])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [offer_fk]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([customerID])
REFERENCES [dbo].[Customer] ([customerID])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([salesID])
REFERENCES [dbo].[Sales] ([salesID])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([vendorID])
REFERENCES [dbo].[Vendor] ([vendorID])
GO
ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [offerId_FK] FOREIGN KEY([subOfferID])
REFERENCES [dbo].[Offer] ([offerID])
GO
ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [offerId_FK]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([cartID])
REFERENCES [dbo].[Cart] ([cartID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [categoryFK] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [categoryFK]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [colorFK] FOREIGN KEY([colorID])
REFERENCES [dbo].[Color] ([colorID])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [colorFK]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [groupFK] FOREIGN KEY([groupID])
REFERENCES [dbo].[Group] ([groupID])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [groupFK]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [imageFK] FOREIGN KEY([imageID])
REFERENCES [dbo].[ProductImage] ([pImageID])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [imageFK]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [tagFK] FOREIGN KEY([tagID])
REFERENCES [dbo].[Tag] ([tagID])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [tagFK]
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD  CONSTRAINT [imageRationfk] FOREIGN KEY([imageRatioTypeID])
REFERENCES [dbo].[ImageRatioType] ([imageRatioTypeID])
GO
ALTER TABLE [dbo].[ProductImage] CHECK CONSTRAINT [imageRationfk]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([orderID])
GO
ALTER TABLE [dbo].[SelectedItems]  WITH CHECK ADD FOREIGN KEY([cartID])
REFERENCES [dbo].[Cart] ([cartID])
GO
ALTER TABLE [dbo].[SelectedItems]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD FOREIGN KEY([addressID])
REFERENCES [dbo].[Address] ([addressID])
GO
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD FOREIGN KEY([contactID])
REFERENCES [dbo].[Contact] ([contactID])
GO
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD FOREIGN KEY([nameID])
REFERENCES [dbo].[Name] ([nameID])
GO
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD FOREIGN KEY([userNameID])
REFERENCES [dbo].[UserName] ([userNameID])
GO
ALTER TABLE [dbo].[VendorInvoice]  WITH CHECK ADD FOREIGN KEY([vendorID])
REFERENCES [dbo].[Vendor] ([vendorID])
GO
ALTER TABLE [dbo].[VendorSales]  WITH CHECK ADD FOREIGN KEY([salesID])
REFERENCES [dbo].[Sales] ([salesID])
GO
ALTER TABLE [dbo].[VendorSales]  WITH CHECK ADD FOREIGN KEY([vendorID])
REFERENCES [dbo].[Vendor] ([vendorID])
GO
