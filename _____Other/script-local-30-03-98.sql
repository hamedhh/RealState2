USE [RealState_DB]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NOT NULL,
	[CityTitle] [nvarchar](50) NOT NULL,
	[CityCode] [nchar](10) NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Conditions]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conditions](
	[ConditionID] [int] IDENTITY(1,1) NOT NULL,
	[ConditionTile] [nvarchar](150) NOT NULL,
	[ConditionCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Conditions] PRIMARY KEY CLUSTERED 
(
	[ConditionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryTitle] [nvarchar](50) NOT NULL,
	[CountryCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cultures]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cultures](
	[CultureID] [int] IDENTITY(1,1) NOT NULL,
	[CultureTitle] [nvarchar](150) NOT NULL,
	[CultureCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cultures] PRIMARY KEY CLUSTERED 
(
	[CultureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Facilities]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facilities](
	[FacilityID] [int] IDENTITY(1,1) NOT NULL,
	[FacilityTitle] [nvarchar](150) NOT NULL,
	[FacilityCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Facilities] PRIMARY KEY CLUSTERED 
(
	[FacilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HomeProperties]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HomeProperties](
	[HomePropertyID] [int] IDENTITY(1,1) NOT NULL,
	[PropertyTypeID] [int] NOT NULL,
	[CultureID] [int] NOT NULL,
	[RegionID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[SubUsageID] [int] NOT NULL,
	[CreateUserID] [int] NOT NULL,
	[HomePrice] [numeric](12, 0) NULL,
	[MortgagePrice] [numeric](12, 0) NULL,
	[RentPrice] [numeric](12, 0) NULL,
	[LocLatitude] [nvarchar](50) NULL,
	[LocLongitude] [nvarchar](50) NULL,
	[LocArea] [int] NULL,
	[LocAge] [int] NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImageName] [varchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
	[GeoLocation] [geography] NOT NULL,
 CONSTRAINT [PK_HomeProperties] PRIMARY KEY CLUSTERED 
(
	[HomePropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HomeProperties_MetaData]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeProperties_MetaData](
	[MetaID] [int] IDENTITY(1,1) NOT NULL,
	[HomePropertyID] [int] NOT NULL,
	[FacilityID] [int] NULL,
	[ConditionID] [int] NULL,
 CONSTRAINT [PK_HomeProperties_MetaData] PRIMARY KEY CLUSTERED 
(
	[MetaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HomeProperty_Galleries]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HomeProperty_Galleries](
	[GalleryID] [int] IDENTITY(1,1) NOT NULL,
	[HomePropertyID] [int] NOT NULL,
	[ImageName] [varchar](50) NOT NULL,
	[ImageTitle] [varchar](250) NULL,
 CONSTRAINT [PK_HomeProperty_Galleries] PRIMARY KEY CLUSTERED 
(
	[GalleryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HomeProperty_Status]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeProperty_Status](
	[PropertyStatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusTitle] [nvarchar](50) NOT NULL,
	[StatusCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_HomeProperty_Status] PRIMARY KEY CLUSTERED 
(
	[PropertyStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HomeProperty_Type]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeProperty_Type](
	[PropertyTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[code] [nvarchar](50) NULL,
 CONSTRAINT [PK_HomeProperty_Type] PRIMARY KEY CLUSTERED 
(
	[PropertyTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rigions]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rigions](
	[RigionID] [int] IDENTITY(1,1) NOT NULL,
	[CityID] [int] NOT NULL,
	[RegionTitle] [nvarchar](50) NOT NULL,
	[RegionCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rigions] PRIMARY KEY CLUSTERED 
(
	[RigionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] NOT NULL,
	[RoleTitle] [nvarchar](250) NULL,
	[RoleName] [varchar](150) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubUsages]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubUsages](
	[SubUsageID] [int] IDENTITY(1,1) NOT NULL,
	[UsageID] [int] NOT NULL,
	[SubUsageTitle] [nvarchar](250) NOT NULL,
	[SubUsageCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_SubUsages] PRIMARY KEY CLUSTERED 
(
	[SubUsageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usages]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usages](
	[UsageID] [int] IDENTITY(1,1) NOT NULL,
	[UsageTitle] [nvarchar](150) NOT NULL,
	[UsageCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Usages] PRIMARY KEY CLUSTERED 
(
	[UsageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/20/2019 6:03:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[CultureID] [int] NULL,
	[UserName] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[Password] [varchar](200) NULL,
	[ActiveCode] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[RegisterDate] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([CityID], [CountryID], [CityTitle], [CityCode]) VALUES (1, 1, N'تهران', N'01        ')
INSERT [dbo].[Cities] ([CityID], [CountryID], [CityTitle], [CityCode]) VALUES (3, 1, N'شمال', N'02        ')
INSERT [dbo].[Cities] ([CityID], [CountryID], [CityTitle], [CityCode]) VALUES (4, 2, N'manhatan', N'03        ')
INSERT [dbo].[Cities] ([CityID], [CountryID], [CityTitle], [CityCode]) VALUES (5, 1, N'جنوب', N'04        ')
SET IDENTITY_INSERT [dbo].[Cities] OFF
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([CountryID], [CountryTitle], [CountryCode]) VALUES (1, N'ایران', N'01')
INSERT [dbo].[Countries] ([CountryID], [CountryTitle], [CountryCode]) VALUES (2, N'United', N'02')
SET IDENTITY_INSERT [dbo].[Countries] OFF
SET IDENTITY_INSERT [dbo].[Cultures] ON 

INSERT [dbo].[Cultures] ([CultureID], [CultureTitle], [CultureCode]) VALUES (1, N'fa', N'01')
INSERT [dbo].[Cultures] ([CultureID], [CultureTitle], [CultureCode]) VALUES (2, N'en', N'02')
SET IDENTITY_INSERT [dbo].[Cultures] OFF
SET IDENTITY_INSERT [dbo].[Rigions] ON 

INSERT [dbo].[Rigions] ([RigionID], [CityID], [RegionTitle], [RegionCode]) VALUES (1, 1, N'کن', N'1')
INSERT [dbo].[Rigions] ([RigionID], [CityID], [RegionTitle], [RegionCode]) VALUES (2, 1, N'فشن', N'2')
SET IDENTITY_INSERT [dbo].[Rigions] OFF
INSERT [dbo].[Roles] ([RoleID], [RoleTitle], [RoleName]) VALUES (1, N'کابر عادی', N'User')
INSERT [dbo].[Roles] ([RoleID], [RoleTitle], [RoleName]) VALUES (2, N'مدیر کل سیستم', N'Admin')
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [RoleID], [CultureID], [UserName], [Email], [Password], [ActiveCode], [IsActive], [RegisterDate]) VALUES (5, 1, NULL, N'hamedh71', N'hamed_71hh@yahoo.com', N'202CB962AC59075B964B07152D234B70', N'750db326-005a-4241-ab92-2c7fd2be0c55', 1, CAST(N'2019-06-11 13:11:03.590' AS DateTime))
INSERT [dbo].[Users] ([UserID], [RoleID], [CultureID], [UserName], [Email], [Password], [ActiveCode], [IsActive], [RegisterDate]) VALUES (6, 1, NULL, N'jjjjj', N'hamedhalvaei71hh@gmail.com', N'AAB3238922BCC25A6F606EB525FFDC56', N'6d3680b3-e417-4b2c-a125-148726fed47c', 1, CAST(N'2019-06-11 13:44:56.087' AS DateTime))
INSERT [dbo].[Users] ([UserID], [RoleID], [CultureID], [UserName], [Email], [Password], [ActiveCode], [IsActive], [RegisterDate]) VALUES (7, 1, NULL, N'hamed', N'hamed@gmail.com', N'C4CA4238A0B923820DCC509A6F75849B', N'69894e34-d9aa-4a9e-b414-aedaaab0243f', 1, CAST(N'2019-06-11 14:12:54.020' AS DateTime))
INSERT [dbo].[Users] ([UserID], [RoleID], [CultureID], [UserName], [Email], [Password], [ActiveCode], [IsActive], [RegisterDate]) VALUES (8, 1, 1, N'salam', N'salam@h.com', N'202CB962AC59075B964B07152D234B70', N'f4fa90f3-15c9-4681-8eb3-867ab8b8498f', 1, CAST(N'2019-06-17 10:18:16.417' AS DateTime))
INSERT [dbo].[Users] ([UserID], [RoleID], [CultureID], [UserName], [Email], [Password], [ActiveCode], [IsActive], [RegisterDate]) VALUES (9, 1, 1, N'dd', N'hh@h.com', N'202CB962AC59075B964B07152D234B70', N'ab7b1d9e-72bd-42f2-9639-87ba1a071d29', 1, CAST(N'2019-06-17 10:31:04.130' AS DateTime))
INSERT [dbo].[Users] ([UserID], [RoleID], [CultureID], [UserName], [Email], [Password], [ActiveCode], [IsActive], [RegisterDate]) VALUES (10, 1, 1, N'sad', N'sad@d.com', N'202CB962AC59075B964B07152D234B70', N'23937a1d-acb4-4ff2-bd4b-6a613ac111ee', 1, CAST(N'2019-06-17 10:34:37.583' AS DateTime))
INSERT [dbo].[Users] ([UserID], [RoleID], [CultureID], [UserName], [Email], [Password], [ActiveCode], [IsActive], [RegisterDate]) VALUES (11, 1, 1, N'ffff', N'f@d.com', N'DBC4D84BFCFE2284BA11BEFFB853A8C4', N'0997211e-f03f-4223-98c5-004767975389', 1, CAST(N'2019-06-17 10:57:45.967' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Countries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([CountryID])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Countries]
GO
ALTER TABLE [dbo].[HomeProperties]  WITH CHECK ADD  CONSTRAINT [FK_HomeProperties_Cultures] FOREIGN KEY([CultureID])
REFERENCES [dbo].[Cultures] ([CultureID])
GO
ALTER TABLE [dbo].[HomeProperties] CHECK CONSTRAINT [FK_HomeProperties_Cultures]
GO
ALTER TABLE [dbo].[HomeProperties]  WITH CHECK ADD  CONSTRAINT [FK_HomeProperties_HomeProperties] FOREIGN KEY([CreateUserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[HomeProperties] CHECK CONSTRAINT [FK_HomeProperties_HomeProperties]
GO
ALTER TABLE [dbo].[HomeProperties]  WITH CHECK ADD  CONSTRAINT [FK_HomeProperties_HomeProperty_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[HomeProperty_Status] ([PropertyStatusID])
GO
ALTER TABLE [dbo].[HomeProperties] CHECK CONSTRAINT [FK_HomeProperties_HomeProperty_Status]
GO
ALTER TABLE [dbo].[HomeProperties]  WITH CHECK ADD  CONSTRAINT [FK_HomeProperties_HomeProperty_Type] FOREIGN KEY([PropertyTypeID])
REFERENCES [dbo].[HomeProperty_Type] ([PropertyTypeID])
GO
ALTER TABLE [dbo].[HomeProperties] CHECK CONSTRAINT [FK_HomeProperties_HomeProperty_Type]
GO
ALTER TABLE [dbo].[HomeProperties]  WITH CHECK ADD  CONSTRAINT [FK_HomeProperties_Rigions] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Rigions] ([RigionID])
GO
ALTER TABLE [dbo].[HomeProperties] CHECK CONSTRAINT [FK_HomeProperties_Rigions]
GO
ALTER TABLE [dbo].[HomeProperties]  WITH CHECK ADD  CONSTRAINT [FK_HomeProperties_SubUsages] FOREIGN KEY([SubUsageID])
REFERENCES [dbo].[SubUsages] ([SubUsageID])
GO
ALTER TABLE [dbo].[HomeProperties] CHECK CONSTRAINT [FK_HomeProperties_SubUsages]
GO
ALTER TABLE [dbo].[HomeProperties_MetaData]  WITH CHECK ADD  CONSTRAINT [FK_HomeProperties_MetaData_Conditions] FOREIGN KEY([ConditionID])
REFERENCES [dbo].[Conditions] ([ConditionID])
GO
ALTER TABLE [dbo].[HomeProperties_MetaData] CHECK CONSTRAINT [FK_HomeProperties_MetaData_Conditions]
GO
ALTER TABLE [dbo].[HomeProperties_MetaData]  WITH CHECK ADD  CONSTRAINT [FK_HomeProperties_MetaData_Facilities] FOREIGN KEY([FacilityID])
REFERENCES [dbo].[Facilities] ([FacilityID])
GO
ALTER TABLE [dbo].[HomeProperties_MetaData] CHECK CONSTRAINT [FK_HomeProperties_MetaData_Facilities]
GO
ALTER TABLE [dbo].[HomeProperties_MetaData]  WITH CHECK ADD  CONSTRAINT [FK_HomeProperties_MetaData_HomeProperties_MetaData] FOREIGN KEY([HomePropertyID])
REFERENCES [dbo].[HomeProperties] ([HomePropertyID])
GO
ALTER TABLE [dbo].[HomeProperties_MetaData] CHECK CONSTRAINT [FK_HomeProperties_MetaData_HomeProperties_MetaData]
GO
ALTER TABLE [dbo].[HomeProperty_Galleries]  WITH CHECK ADD  CONSTRAINT [FK_HomeProperty_Galleries_HomeProperty_Galleries] FOREIGN KEY([HomePropertyID])
REFERENCES [dbo].[HomeProperties] ([HomePropertyID])
GO
ALTER TABLE [dbo].[HomeProperty_Galleries] CHECK CONSTRAINT [FK_HomeProperty_Galleries_HomeProperty_Galleries]
GO
ALTER TABLE [dbo].[Rigions]  WITH CHECK ADD  CONSTRAINT [FK_Rigions_Cities] FOREIGN KEY([CityID])
REFERENCES [dbo].[Cities] ([CityID])
GO
ALTER TABLE [dbo].[Rigions] CHECK CONSTRAINT [FK_Rigions_Cities]
GO
ALTER TABLE [dbo].[SubUsages]  WITH CHECK ADD  CONSTRAINT [FK_SubUsages_Usages] FOREIGN KEY([UsageID])
REFERENCES [dbo].[Usages] ([UsageID])
GO
ALTER TABLE [dbo].[SubUsages] CHECK CONSTRAINT [FK_SubUsages_Usages]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Cultures] FOREIGN KEY([CultureID])
REFERENCES [dbo].[Cultures] ([CultureID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Cultures]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
