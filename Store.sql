USE [master]
GO
/****** Object:  Database [Store]    Script Date: 4/4/2016 7:26:15 PM ******/
CREATE DATABASE [Store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Store', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Store.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Store_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Store_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Store] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Store] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Store] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Store] SET  MULTI_USER 
GO
ALTER DATABASE [Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Store] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Store] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Store]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 4/4/2016 7:26:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](30) NOT NULL,
	[Address2] [varchar](30) NOT NULL,
	[Zipcode] [int] NOT NULL,
	[City] [varchar](40) NOT NULL,
	[State] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/4/2016 7:26:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 4/4/2016 7:26:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](40) NOT NULL,
	[AddressId] [int] NULL,
	[Salary] [money] NOT NULL,
	[PositionId] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Level]    Script Date: 4/4/2016 7:26:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Level](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Position]    Script Date: 4/4/2016 7:26:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[LevelId] [int] NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/4/2016 7:26:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [varchar](50) NULL,
	[ProductName] [varchar](50) NULL,
	[Price] [money] NULL,
	[Color] [varchar](50) NULL,
	[ShirtSize] [varchar](50) NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/4/2016 7:26:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 4/4/2016 7:26:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](500) NOT NULL,
	[Salt] [varchar](75) NOT NULL,
	[RoleId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[vwEmployeePosition]    Script Date: 4/4/2016 7:26:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwEmployeePosition]
AS
SELECT        l.Name AS 'Level Name', p.Name AS 'PostionName', e.Id AS 'EmployeeId', e.Name AS 'EmployeeName', e.AddressId, e.Salary
FROM            dbo.[Level] AS l INNER JOIN
                         dbo.Position AS p ON l.Id = p.LevelId INNER JOIN
                         dbo.Employee AS e ON p.Id = e.PositionId

GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Name], [AddressId], [Salary], [PositionId]) VALUES (1, N'Mike Whitf', NULL, 1000.0000, 1)
INSERT [dbo].[Employee] ([Id], [Name], [AddressId], [Salary], [PositionId]) VALUES (5, N'Mike Whitf', NULL, 1000.0000, 1)
INSERT [dbo].[Employee] ([Id], [Name], [AddressId], [Salary], [PositionId]) VALUES (2, N'William Whitf', NULL, 2000.0000, 1)
INSERT [dbo].[Employee] ([Id], [Name], [AddressId], [Salary], [PositionId]) VALUES (6, N'William Whitf', NULL, 2000.0000, 1)
INSERT [dbo].[Employee] ([Id], [Name], [AddressId], [Salary], [PositionId]) VALUES (3, N'Tony Whitf', NULL, 3000.0000, 5)
INSERT [dbo].[Employee] ([Id], [Name], [AddressId], [Salary], [PositionId]) VALUES (7, N'Tony Whitf', NULL, 3000.0000, 5)
INSERT [dbo].[Employee] ([Id], [Name], [AddressId], [Salary], [PositionId]) VALUES (4, N'Dave Whitf', NULL, 4000.0000, 5)
INSERT [dbo].[Employee] ([Id], [Name], [AddressId], [Salary], [PositionId]) VALUES (8, N'Dave Whitf', NULL, 4000.0000, 5)
INSERT [dbo].[Employee] ([Id], [Name], [AddressId], [Salary], [PositionId]) VALUES (10, N'Steve', NULL, 4000.0000, 3)
INSERT [dbo].[Employee] ([Id], [Name], [AddressId], [Salary], [PositionId]) VALUES (9, N'Woody', NULL, 7000.0000, 2)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Level] ON 

INSERT [dbo].[Level] ([Id], [Name]) VALUES (1, N'Mid Level')
INSERT [dbo].[Level] ([Id], [Name]) VALUES (2, N'Entry Level')
INSERT [dbo].[Level] ([Id], [Name]) VALUES (3, N'Senior Level')
INSERT [dbo].[Level] ([Id], [Name]) VALUES (4, N'Junior Level')
SET IDENTITY_INSERT [dbo].[Level] OFF
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([Id], [Name], [LevelId]) VALUES (1, N'.Net Developer', 1)
INSERT [dbo].[Position] ([Id], [Name], [LevelId]) VALUES (2, N'.Net Developer', 2)
INSERT [dbo].[Position] ([Id], [Name], [LevelId]) VALUES (3, N'.Net Developer', 3)
INSERT [dbo].[Position] ([Id], [Name], [LevelId]) VALUES (5, N'Ux Designer', 1)
INSERT [dbo].[Position] ([Id], [Name], [LevelId]) VALUES (6, N'Web Developer', 2)
INSERT [dbo].[Position] ([Id], [Name], [LevelId]) VALUES (7, N'Web Developer', 3)
SET IDENTITY_INSERT [dbo].[Position] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [ImageUrl], [ProductName], [Price], [Color], [ShirtSize], [CategoryId]) VALUES (1, N'img/shirt.jpg', N'nice Shirt', 8.0000, N'Grey, Black', N'small, large', NULL)
INSERT [dbo].[Product] ([Id], [ImageUrl], [ProductName], [Price], [Color], [ShirtSize], [CategoryId]) VALUES (2, N'img/shirt1.jpg', N'my Shirt', 18.0000, N'white, pink', N'medium, large', NULL)
INSERT [dbo].[Product] ([Id], [ImageUrl], [ProductName], [Price], [Color], [ShirtSize], [CategoryId]) VALUES (3, N'img/shirt3.jpg', N'ice Shirt', 80.0000, N'pink, Black', N'large', NULL)
INSERT [dbo].[Product] ([Id], [ImageUrl], [ProductName], [Price], [Color], [ShirtSize], [CategoryId]) VALUES (4, N'img/shirt4.jpg', N'price Shirt', 80.0000, N'Grey, pink', N'medium', NULL)
INSERT [dbo].[Product] ([Id], [ImageUrl], [ProductName], [Price], [Color], [ShirtSize], [CategoryId]) VALUES (5, N'img/shirt5.jpg', N'cool Shirt', 120.0000, N'Black', N'large', NULL)
INSERT [dbo].[Product] ([Id], [ImageUrl], [ProductName], [Price], [Color], [ShirtSize], [CategoryId]) VALUES (6, N'img/shirt6.jpg', N'fresh Shirt', 176.0000, N'white', N'small', NULL)
INSERT [dbo].[Product] ([Id], [ImageUrl], [ProductName], [Price], [Color], [ShirtSize], [CategoryId]) VALUES (7, N'', N'TestCreation', 99.9900, N'', N'', NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Guest')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Admin')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([Id], [Username], [Password], [Salt], [RoleId], [CreateDate]) VALUES (1, N'mike', N'PHKNC/GBn0Umlt634BbGIruU', N'/2ysCE4nCIbZyp54IVmM+qVGX4iqaU6z', 1, CAST(N'2016-03-29 16:41:18.577' AS DateTime))
INSERT [dbo].[UserAccount] ([Id], [Username], [Password], [Salt], [RoleId], [CreateDate]) VALUES (2, N'mike', N'BFSpI6p3R0vRy/3+B0qBgvCQ', N'mcWBxemWEZ2JorhPTfHkaDUHGAX9YBcJ', 1, CAST(N'2016-03-30 11:11:09.800' AS DateTime))
INSERT [dbo].[UserAccount] ([Id], [Username], [Password], [Salt], [RoleId], [CreateDate]) VALUES (3, N'mike', N'HcBy46hfJ0aslDw4qfCsuwPZ', N'dagyX+1nTQGEM1loUemehjdKzOAJSW8B', 1, CAST(N'2016-03-30 11:13:01.083' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Employee_Salary]    Script Date: 4/4/2016 7:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_Salary] ON [dbo].[Employee]
(
	[Salary] ASC
)
INCLUDE ( 	[Name],
	[AddressId],
	[PositionId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Address] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Address]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_Position_Level] FOREIGN KEY([LevelId])
REFERENCES [dbo].[Level] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_Position_Level]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_UserAccount_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK_UserAccount_Role]
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeePositionById]    Script Date: 4/4/2016 7:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Whitfield
-- Create date: 3/16/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetEmployeePositionById]
	@EmployeeId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--Select * from Employee e
	--Select * from Position p

	select 
		p.Id, 
		p.LevelId,
		p.Name

	from Employee e
	inner join Position p on e.Positionid = p.Id

	where e.Id = @EmployeeId
	--where p.Id = @EmployeeId
END 

GO
/****** Object:  StoredProcedure [dbo].[GetEmployeesByAddressId]    Script Date: 4/4/2016 7:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Michael Whitfield
-- Create date: 3/16/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetEmployeesByAddressId]
	@AddressId INT
AS
BEGIN

	SET NOCOUNT ON;


	select 
	e.Id ,
	e.Name ,
	e.PositionId,
	e.AddressId,
	e.Salary

	from Employee e
	where AddressId = @AddressId

END 

GO
/****** Object:  StoredProcedure [dbo].[GetEmployeesByLevelId]    Script Date: 4/4/2016 7:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Michael Whitfield
-- Create date: 3/16/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetEmployeesByLevelId]
	@LevelId INT
AS
BEGIN

	SET NOCOUNT ON;


	select 
	e.Id ,
	e.Name ,
	e.PositionId,
	e.AddressId,
	e.Salary,
	l.Id 

	from Employee e
	inner join Position p on e.Positionid = p.Id
	inner join [level] l on p.LevelId = P.Id

	where l.Id = @LevelId
END 

GO
/****** Object:  StoredProcedure [dbo].[GetEmployeesByLevelName]    Script Date: 4/4/2016 7:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Michael Whitfield
-- Create date: 3/16/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetEmployeesByLevelName]
	@LevelName varChar(50)
AS
BEGIN

	SET NOCOUNT ON;


	select 
	e.Id ,
	e.Name ,
	e.PositionId,
	e.AddressId,
	e.Salary,
	l.Name

	from Employee e
	inner join Position p on e.Positionid = p.Id
	inner join [level] l on p.LevelId = P.Id

	where l.Name = @LevelName
END 

GO
/****** Object:  StoredProcedure [dbo].[GetEmployeesByPositionId]    Script Date: 4/4/2016 7:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Michael Whitfield
-- Create date: 3/16/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetEmployeesByPositionId]
	@PositionId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--Select * from Employee e
	--Select * from Position p

	select 
	e.Id ,
	e.Name ,
	e.PositionId,
	e.AddressId,
	e.Salary

	from Employee e
	inner join Position p on e.Positionid = p.Id

	where p.Id = @PositionId
END 

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "e"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "l"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 102
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "p"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 119
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwEmployeePosition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwEmployeePosition'
GO
USE [master]
GO
ALTER DATABASE [Store] SET  READ_WRITE 
GO
