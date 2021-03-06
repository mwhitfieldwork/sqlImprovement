USE [master]
GO
/****** Object:  Database [CityTour]    Script Date: 4/4/2016 12:53:48 PM ******/
CREATE DATABASE [CityTour]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CityTour', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CityTour.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CityTour_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CityTour_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CityTour] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CityTour].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CityTour] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CityTour] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CityTour] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CityTour] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CityTour] SET ARITHABORT OFF 
GO
ALTER DATABASE [CityTour] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CityTour] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CityTour] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CityTour] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CityTour] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CityTour] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CityTour] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CityTour] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CityTour] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CityTour] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CityTour] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CityTour] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CityTour] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CityTour] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CityTour] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CityTour] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CityTour] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CityTour] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CityTour] SET  MULTI_USER 
GO
ALTER DATABASE [CityTour] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CityTour] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CityTour] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CityTour] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CityTour] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CityTour]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 4/4/2016 12:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](30) NULL,
	[Zipcode] [varchar](12) NULL,
	[Country] [varchar](50) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 4/4/2016 12:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 4/4/2016 12:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[CartId] [int] NULL,
	[Total] [money] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/4/2016 12:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/4/2016 12:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[AddressId] [int] NULL,
	[Phone] [int] NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Featured]    Script Date: 4/4/2016 12:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Featured](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_Featured] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/4/2016 12:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [varchar](50) NULL,
	[Summary] [varchar](5000) NULL,
	[Latitude] [decimal](18, 8) NULL,
	[Longitude] [decimal](18, 8) NULL,
	[CategoryId] [int] NULL,
	[Price] [money] NULL,
	[Marker] [varchar](200) NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 4/4/2016 12:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [varchar](100) NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/4/2016 12:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/4/2016 12:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](40) NULL,
	[Password] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 4/4/2016 12:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](500) NULL,
	[Salt] [varchar](75) NULL,
	[Pepper] [varchar](50) NULL,
	[RoleId] [int] NULL,
	[Createdate] [datetime] NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[GetGalleryImages]    Script Date: 4/4/2016 12:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[GetGalleryImages] AS

Select pic.URL
from ProductImage pic 
inner join Product p  on p.Id = pic.ProductId 

GO
SET IDENTITY_INSERT [dbo].[Address] ON 

GO
INSERT [dbo].[Address] ([Id], [Address1], [Address2], [City], [State], [Zipcode], [Country]) VALUES (1, N'217 South 51st', NULL, N'Bellwood', N'Illinois', N'60132', N'US')
GO
INSERT [dbo].[Address] ([Id], [Address1], [Address2], [City], [State], [Zipcode], [Country]) VALUES (2, N'2827 Gill St', NULL, N'Bloomington', N'Il', N'61708', N'US')
GO
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[CartItem] ON 

GO
INSERT [dbo].[CartItem] ([Id], [ProductId], [CartId], [Total], [Quantity]) VALUES (26, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CartItem] ([Id], [ProductId], [CartId], [Total], [Quantity]) VALUES (27, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CartItem] ([Id], [ProductId], [CartId], [Total], [Quantity]) VALUES (28, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CartItem] ([Id], [ProductId], [CartId], [Total], [Quantity]) VALUES (29, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CartItem] ([Id], [ProductId], [CartId], [Total], [Quantity]) VALUES (30, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CartItem] ([Id], [ProductId], [CartId], [Total], [Quantity]) VALUES (31, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CartItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Church')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Musuem')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Building')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Featured] ON 

GO
INSERT [dbo].[Featured] ([Id], [ProductId]) VALUES (1, 1)
GO
INSERT [dbo].[Featured] ([Id], [ProductId]) VALUES (2, 2)
GO
INSERT [dbo].[Featured] ([Id], [ProductId]) VALUES (3, 3)
GO
INSERT [dbo].[Featured] ([Id], [ProductId]) VALUES (4, 6)
GO
INSERT [dbo].[Featured] ([Id], [ProductId]) VALUES (5, 7)
GO
INSERT [dbo].[Featured] ([Id], [ProductId]) VALUES (6, 8)
GO
INSERT [dbo].[Featured] ([Id], [ProductId]) VALUES (7, 12)
GO
INSERT [dbo].[Featured] ([Id], [ProductId]) VALUES (8, 13)
GO
INSERT [dbo].[Featured] ([Id], [ProductId]) VALUES (9, 14)
GO
SET IDENTITY_INSERT [dbo].[Featured] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (1, N'/Images/church1.jpg', N'The Church is an active parish that offers English-language Masses both weekly and several times on Sunday. If you are interested in attending Mass in English then this is your best bet in Paris (and probably the only one).', CAST(48.85824500 AS Decimal(18, 8)), CAST(2.35732900 AS Decimal(18, 8)), 1, 199.9900, N'/Scripts/Markers/church.png', N'St. Josephs')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (2, N'/Images/church2.jpg', N'In 1870 war broke out between France and Germany. The Council that was being held in the Vatican at the time was suspended and the Pope, no longer under the protection of French troops, considered himself a prisoner within the Vatican.', CAST(48.85855600 AS Decimal(18, 8)), CAST(2.34572100 AS Decimal(18, 8)), 1, 29.9900, N'/Scripts/Markers/church.png', N'Sacré-Cœur')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (3, N'/Images/church3.jpg', N'The current church of Saint-Sulpice took the place of a small shrine dedicated to Saint-Sulpice-des-Champs, which dates back to the twelfth century. Rebuilt and expanded in the fourteenth and sixteenth centuries, it eventually be insufficient for the population of the parish (with huge, it was said, a hundred thousand people) which came to settle convents and buildings.', CAST(48.85910700 AS Decimal(18, 8)), CAST(2.34340300 AS Decimal(18, 8)), 1, 19.9900, N'/Scripts/Markers/church.png', N'Saint-Sulpice')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (4, N'/Images/church4.jpg', N'The American Church in Paris (ACP) welcomes you to worship each Sunday at one of our three services. The 09h00 service is a weekly communion service; the 11h00 service is a traditional service with special music from one of our guest soloists or various choirs; the 13h30 service is a contemporary service.', CAST(48.85820300 AS Decimal(18, 8)), CAST(2.35780100 AS Decimal(18, 8)), 1, 49.9900, N'/Scripts/Markers/church.png', N'Église américaine')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (5, N'/Images/church5.jpg', N'On a long walk though the area, we approached the church from the back and realized it was one we had never before visited. We entered and spotted a handful of sisters in their grey and white habits as well as a number of worshippers on their knees with their foreheads to the stone floor, praying. As we walked quietly', CAST(48.85809000 AS Decimal(18, 8)), CAST(2.35539800 AS Decimal(18, 8)), 1, 49.9900, N'/Scripts/Markers/church.png', N'Saint-Gervais')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (6, N'/Images/museum1.jpg', N'The national museum of the Musée dOrsay opened to the public on 9 December 1986 to show the great diversity of artistic creation in the western world between 1848 and 1914. It was formed with the national collections coming mainly from three establishments.', CAST(48.85841500 AS Decimal(18, 8)), CAST(2.35335900 AS Decimal(18, 8)), 2, 29.9900, N'/Scripts/Markers/building.png', N'Musée dOrsay')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (7, N'/Images/museum2.jpg', N'In 1969, President Georges Pompidou decided that the vacant site of the Plateau Beaubourg should be used for the construction of a multidisciplinary cultural centre of an entirely new type.', CAST(48.85837200 AS Decimal(18, 8)), CAST(2.35142800 AS Decimal(18, 8)), 2, 29.9900, N'/Scripts/Markers/building.png', N'Centre Pompidou')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (8, N'/Images/museum3.jpg', N'With about 10 000 works, The City of Paris Museum of modern art museum collections represent the wealth of the artistic creation in XXth and XXIth centuries and testifies of the dynamism of the contemporary artistic scene.', CAST(48.85869700 AS Decimal(18, 8)), CAST(2.34992600 AS Decimal(18, 8)), 2, 39.9900, N'/Scripts/Markers/building.png', N'Modern Art')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (9, N'/Images/museum4.jpg', N'Behind this somewhat mysterious name is hidden one of the capital’s most genuinely Parisian museums. The oldest of the municipal museums tells the story of Paris from a bygone era (a prehistoric dugout canoe dating from 4600 BC) to the present day, in all its immense variety.', CAST(48.85823100 AS Decimal(18, 8)), CAST(2.35065600 AS Decimal(18, 8)), 2, 9.9900, N'/Scripts/Markers/building.png', N'Musée Carnavalet')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (10, N'/Images/museum5.jpg', N'The Musée Rodin and Akim Monet present several iconic bronze sculptures in correspondence with carefully selected works by Louise Bourgeois, George Grosz, Henri Matisse and a figure from classical antiquity.', CAST(48.85780800 AS Decimal(18, 8)), CAST(2.34926100 AS Decimal(18, 8)), 2, 19.9900, N'/Scripts/Markers/building.png', N'Musée Rodin')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (11, N'/Images/museum6.jpg', N'One year later, the RMN-Grand Palais partnered with the Musée national Picasso-Paris to open a new Library and Gift Shop outside the museum walls. A different kind of space, designed with the help of the architectural firm Jean-François Bodin, recalls the life of Picasso in his studio, a studio that is both past and present.', CAST(48.85775100 AS Decimal(18, 8)), CAST(2.35102100 AS Decimal(18, 8)), 2, 29.9900, N'/Scripts/Markers/building.png', N'Musée Picasso')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (12, N'/Images/build1.jpg', N'Of all the Grands Projets in Paris, none created such a stir as the Pei Pyramids in the courtyard of the famous Louvre Museum. Spectacular in concept and form, they provide a startling reminder of the audacious ability of modern architects to invigorate and re-circulate traditional architectural forms...', CAST(48.85834400 AS Decimal(18, 8)), CAST(2.34818800 AS Decimal(18, 8)), 3, 119.9900, N'/Scripts/Markers/ferris.png', N'Pyramide')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (13, N'/Images/building2.jpg', N'The Grande Armee had conquered most of Europe and was then considered invicible. After his Austerlitz victory in 1805, Napoleon said to his soldiers : You will return home through archs of triumph', CAST(48.85780800 AS Decimal(18, 8)), CAST(2.34928300 AS Decimal(18, 8)), 3, 69.9900, N'/Scripts/Markers/ferris.png', N'Arc Triomphe')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (14, N'/Images/building3.jpg', N'The Eiffel Tower is a wrought iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.', CAST(48.85718700 AS Decimal(18, 8)), CAST(2.35771500 AS Decimal(18, 8)), 3, 39.9900, N'/Scripts/Markers/ferris.png', N'Eiffel Tower')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (15, N'/Images/building4.jpg', N'The Luxembourg Palace is located at 15 rue de Vaugirard in the 6th arrondissement of Paris. It was originally built to the designs of the French architect Salomon', CAST(48.85713000 AS Decimal(18, 8)), CAST(2.35370300 AS Decimal(18, 8)), 3, 79.9900, N'/Scripts/Markers/ferris.png', N'Luxembourg')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (16, N'/Images/building5.jpg', N'The Sainte-Chapelle is a royal chapel in the Gothic style, within the medieval Palais de la Cité, the residence of the Kings of France until the 14h century, on the Île de la Cité in the heart of Paris', CAST(48.85979800 AS Decimal(18, 8)), CAST(2.36005400 AS Decimal(18, 8)), 3, 29.9900, N'/Scripts/Markers/ferris.png', N'Sainte-Chapelle')
GO
INSERT [dbo].[Product] ([Id], [ImageUrl], [Summary], [Latitude], [Longitude], [CategoryId], [Price], [Marker], [Name]) VALUES (17, N'/Images/building6.jpg', N'Italian-style opera house with ceiling painted by Chagall & library museum in 19th-century building.', CAST(48.85827400 AS Decimal(18, 8)), CAST(2.35921700 AS Decimal(18, 8)), 3, 29.9900, N'/Scripts/Markers/ferris.png', N'Opéra National')
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON 

GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (1, N'/Images/Gallery/ch1.jpg', 1)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (2, N'/Images/Gallery/ch2.jpg', 1)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (3, N'/Images/Gallery/ch3.jpg', 2)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (4, N'/Images/Gallery/ch4.jpg', 2)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (5, N'/Images/Gallery/ch5.jpg', 3)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (6, N'/Images/Gallery/ch6.jpg', 3)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (7, N'/Images/Gallery/ch7.jpg', 4)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (8, N'/Images/Gallery/ch8.jpg', 4)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (9, N'/Images/Gallery/ch9.jpg', 5)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (10, N'/Images/Gallery/ch10.jpg', 5)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (11, N'/Images/Gallery/m1.jpg', 6)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (12, N'/Images/Gallery/m2.jpg', 6)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (13, N'/Images/Gallery/m3.jpg', 7)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (14, N'/Images/Gallery/m4.jpg', 7)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (15, N'/Images/Gallery/m5.jpg', 8)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (16, N'/Images/Gallery/m6.jpg', 8)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (17, N'/Images/Gallery/m7.jpg', 8)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (18, N'/Images/Gallery/m8.jpg', 9)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (19, N'/Images/Gallery/m9.jpg', 9)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (20, N'/Images/Gallery/m10.jpg', 10)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (21, N'/Images/Gallery/m11.jpg', 10)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (22, N'/Images/Gallery/m12.jpg', 11)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (23, N'/Images/Gallery/m13.jpg', 11)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (24, N'/Images/Gallery/m14.jpg', 11)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (25, N'/Images/Gallery/hb1.jpg', 12)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (26, N'/Images/Gallery/hb2.jpg', 12)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (27, N'/Images/Gallery/hb3.jpg', 13)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (28, N'/Images/Gallery/hb4.jpg', 13)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (29, N'/Images/Gallery/hb5.jpg', 14)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (30, N'/Images/Gallery/hb6.jpg', 14)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (31, N'/Images/Gallery/hb7.jpg', 15)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (32, N'/Images/Gallery/hb8.jpg', 15)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (33, N'/Images/Gallery/hb9.jpg', 16)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [ProductId]) VALUES (34, N'/Images/Gallery/hb10.jpg', 17)
GO
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'User')
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Guest')
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Admin')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

GO
INSERT [dbo].[UserAccount] ([Id], [Username], [Password], [Salt], [Pepper], [RoleId], [Createdate]) VALUES (1, N'mike', N'k88QYQPFSl9ZmBNUL5irLboq', N'N2gXlVuLs2ihZ5d3hD5fWAmKZK3usbCa', NULL, 1, CAST(N'2016-03-31 10:50:14.437' AS DateTime))
GO
INSERT [dbo].[UserAccount] ([Id], [Username], [Password], [Salt], [Pepper], [RoleId], [Createdate]) VALUES (2, N'william', N'B/fnZmk0TW3CPGGwb8Lk7F76', N'S9rETFNlGAOaU0CLrN0iOpHAKz/F6GfD', NULL, 1, CAST(N'2016-03-31 11:06:55.533' AS DateTime))
GO
INSERT [dbo].[UserAccount] ([Id], [Username], [Password], [Salt], [Pepper], [RoleId], [Createdate]) VALUES (3, N'dave', N'lAXLYx4QL9chwX70h2vt4nEW', N'0FGyPl5eEzpmV+iByEhgBN0bnXLwzWGR', NULL, 1, CAST(N'2016-03-31 11:10:56.793' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Customer]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Cart] FOREIGN KEY([CartId])
REFERENCES [dbo].[Cart] ([Id])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Cart]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Product]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Address] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Address]
GO
ALTER TABLE [dbo].[Featured]  WITH CHECK ADD  CONSTRAINT [FK_Featured_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Featured] CHECK CONSTRAINT [FK_Featured_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD  CONSTRAINT [FK_ProductImage_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductImage] CHECK CONSTRAINT [FK_ProductImage_Product]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Customer]
GO
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_UserAccount_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK_UserAccount_Role]
GO
/****** Object:  StoredProcedure [dbo].[GetInfoByProductId]    Script Date: 4/4/2016 12:53:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Whitfield
-- Create date: 3/18/2016
-- Description:	<Show the Product information on the details page>
-- =============================================


--Create PROCEDURE GetInfoByProductId
--	@ProductId INT
--AS
--BEGIN

--	SET NOCOUNT ON;

--	select 
--	p.ImageUrl as 'Product Image',
--	p.Summary as 'Summary',
--	pic.Url
	
--	from Product p
--	inner join ProductImage pic on p.Id = pic.ProductId
--	where p.Id = @ProductId
--END 
--GO

Create PROCEDURE [dbo].[GetInfoByProductId]
	@ProductIdInfo INT
AS
BEGIN

	SET NOCOUNT ON;
	select 
	p.ImageUrl as 'Product Image',
	p.Summary as 'Summary',
	pic.Url
	
	from Product p
	inner join ProductImage pic on p.Id = pic.ProductId
	where p.Id = @ProductIdInfo
END 

GO
USE [master]
GO
ALTER DATABASE [CityTour] SET  READ_WRITE 
GO
