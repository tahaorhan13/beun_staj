CREATE DATABASE [Hastane.Randevu]
GO

Use [Hastane.Randevu]
GO
/****** Object:  Table [dbo].[tbl_appointment]    Script Date: 6.07.2021 08:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_appointment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [varchar](20) NULL,
	[Hour] [char](5) NULL,
	[Branch] [varchar](50) NULL,
	[DoctorName] [varchar](50) NULL,
	[TC] [varchar](20) NULL,
	[RandevuNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_branch]    Script Date: 6.07.2021 08:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_branch](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Branch] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_check]    Script Date: 6.07.2021 08:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_check](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Checked] [bit] NULL,
	[Time] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_doctor]    Script Date: 6.07.2021 08:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_doctor](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[Branch] [varchar](30) NULL,
	[TC] [char](11) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_patient]    Script Date: 6.07.2021 08:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_patient](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[TC] [char](11) NULL,
	[PhoneNumber] [varchar](15) NULL,
	[Password] [varchar](20) NULL,
	[Gender] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_worker]    Script Date: 6.07.2021 08:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_worker](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[TC] [char](11) NULL,
	[PhoneNumber] [varchar](15) NULL,
	[Password] [varchar](30) NULL,
	[Gender] [varchar](5) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_appointment] ON 

INSERT [dbo].[tbl_appointment] ([Id], [Date], [Hour], [Branch], [DoctorName], [TC], [RandevuNo]) VALUES (1006, N'07 Temmuz 2021', N'11.00', N'Ortopedi', N'mehmet öz', N'40643152858', 2053100669)
INSERT [dbo].[tbl_appointment] ([Id], [Date], [Hour], [Branch], [DoctorName], [TC], [RandevuNo]) VALUES (1008, N'12 Temmuz 2021', N'14.15', N'Göz Hastalıkları', N'Gizem Aslan', N'40643152858', 1705377689)
SET IDENTITY_INSERT [dbo].[tbl_appointment] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_branch] ON 

INSERT [dbo].[tbl_branch] ([Id], [Branch]) VALUES (19, N'Ortopedi')
INSERT [dbo].[tbl_branch] ([Id], [Branch]) VALUES (21, N'Göz Hastalıkları')
INSERT [dbo].[tbl_branch] ([Id], [Branch]) VALUES (24, N'İç Hastalıkları')
INSERT [dbo].[tbl_branch] ([Id], [Branch]) VALUES (26, N'Psikoloji')
INSERT [dbo].[tbl_branch] ([Id], [Branch]) VALUES (20, N'Dahiliye')
INSERT [dbo].[tbl_branch] ([Id], [Branch]) VALUES (25, N'Acil Yardım')
SET IDENTITY_INSERT [dbo].[tbl_branch] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_check] ON 

INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (1, 1, N'09.00')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (2, 1, N'10.00')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (3, 1, N'11.00')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (4, 0, N'12.00')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (5, 0, N'12.30')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (6, 1, N'13.00')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (7, 1, N'14.00')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (8, 1, N'14.15')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (9, 0, N'14.30')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (10, 0, N'14.45')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (11, 0, N'15.00')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (12, 0, N'15.15')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (13, 0, N'15.30')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (14, 0, N'16.00')
INSERT [dbo].[tbl_check] ([Id], [Checked], [Time]) VALUES (15, 0, N'17.00')
SET IDENTITY_INSERT [dbo].[tbl_check] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_doctor] ON 

INSERT [dbo].[tbl_doctor] ([Id], [Name], [Surname], [Branch], [TC]) VALUES (61, N'Fikret', N'Hamza', N'Dahiliye', N'11111111111')
INSERT [dbo].[tbl_doctor] ([Id], [Name], [Surname], [Branch], [TC]) VALUES (62, N'Hamza', N'Aktaş', N'Psikoloji', N'22222222222')
INSERT [dbo].[tbl_doctor] ([Id], [Name], [Surname], [Branch], [TC]) VALUES (63, N'Ekin', N'Arda', N'İç Hastalıkları', N'33333333333')
SET IDENTITY_INSERT [dbo].[tbl_doctor] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_patient] ON 

INSERT [dbo].[tbl_patient] ([Id], [Name], [Surname], [TC], [PhoneNumber], [Password], [Gender]) VALUES (104, N'Taha İbrahim', N'Orhan', N'40643152858', N'05060580360', N'taha123', N'Erkek')
SET IDENTITY_INSERT [dbo].[tbl_patient] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_worker] ON 

INSERT [dbo].[tbl_worker] ([Id], [Name], [Surname], [TC], [PhoneNumber], [Password], [Gender]) VALUES (2, N'Aslı', N'Taşpınar', N'12345678901', N'05055055555', N'aslı123', N'Kadın')
SET IDENTITY_INSERT [dbo].[tbl_worker] OFF
GO
