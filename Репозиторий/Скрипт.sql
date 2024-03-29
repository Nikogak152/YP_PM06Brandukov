USE [accounting_issued_hours]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 16.11.2022 11:20:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Class] [int] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Days]    Script Date: 16.11.2022 11:20:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Days](
	[Day] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Issued_hours]    Script Date: 16.11.2022 11:20:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Issued_hours](
	[Object] [varchar](50) NOT NULL,
	[Remains] [int] NULL,
 CONSTRAINT [PK_Issued_hours] PRIMARY KEY CLUSTERED 
(
	[Object] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Load]    Script Date: 16.11.2022 11:20:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Load](
	[Object] [varchar](50) NOT NULL,
	[Query_hours] [int] NULL,
 CONSTRAINT [PK_Load] PRIMARY KEY CLUSTERED 
(
	[Object] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Object]    Script Date: 16.11.2022 11:20:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Object](
	[Object] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Object_1] PRIMARY KEY CLUSTERED 
(
	[Object] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 16.11.2022 11:20:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Schedule](
	[Days] [varchar](50) NULL,
	[Class] [int] NULL,
	[Object] [varchar](50) NULL,
	[Teacher] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 16.11.2022 11:20:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[FIO] [varchar](50) NOT NULL,
	[Object] [varchar](50) NOT NULL,
	[Class] [int] NOT NULL,
 CONSTRAINT [PK_Teacher_1] PRIMARY KEY CLUSTERED 
(
	[FIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16.11.2022 11:20:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([Id], [Class]) VALUES (1, 1)
INSERT [dbo].[Class] ([Id], [Class]) VALUES (2, 2)
INSERT [dbo].[Class] ([Id], [Class]) VALUES (3, 3)
INSERT [dbo].[Class] ([Id], [Class]) VALUES (4, 4)
INSERT [dbo].[Class] ([Id], [Class]) VALUES (5, 5)
INSERT [dbo].[Class] ([Id], [Class]) VALUES (6, 6)
INSERT [dbo].[Class] ([Id], [Class]) VALUES (7, 7)
INSERT [dbo].[Class] ([Id], [Class]) VALUES (8, 8)
INSERT [dbo].[Class] ([Id], [Class]) VALUES (9, 9)
SET IDENTITY_INSERT [dbo].[Class] OFF
INSERT [dbo].[Days] ([Day]) VALUES (N'Вторник')
INSERT [dbo].[Days] ([Day]) VALUES (N'Понедельник')
INSERT [dbo].[Days] ([Day]) VALUES (N'Пятница')
INSERT [dbo].[Days] ([Day]) VALUES (N'Среда')
INSERT [dbo].[Days] ([Day]) VALUES (N'Четверг')
INSERT [dbo].[Issued_hours] ([Object], [Remains]) VALUES (N'Информатика', NULL)
INSERT [dbo].[Issued_hours] ([Object], [Remains]) VALUES (N'Математика', NULL)
INSERT [dbo].[Issued_hours] ([Object], [Remains]) VALUES (N'Русский язык', NULL)
INSERT [dbo].[Load] ([Object], [Query_hours]) VALUES (N'Литература ', 350)
INSERT [dbo].[Load] ([Object], [Query_hours]) VALUES (N'Математика', 700)
INSERT [dbo].[Load] ([Object], [Query_hours]) VALUES (N'Русский язык', 500)
INSERT [dbo].[Object] ([Object]) VALUES (N'Информатика')
INSERT [dbo].[Object] ([Object]) VALUES (N'Литература')
INSERT [dbo].[Object] ([Object]) VALUES (N'Математика')
INSERT [dbo].[Object] ([Object]) VALUES (N'Музыка')
INSERT [dbo].[Object] ([Object]) VALUES (N'Русский язык')
INSERT [dbo].[Object] ([Object]) VALUES (N'Технология')
INSERT [dbo].[Object] ([Object]) VALUES (N'Физика')
INSERT [dbo].[Object] ([Object]) VALUES (N'Физ-ра')
INSERT [dbo].[Object] ([Object]) VALUES (N'Химия')
INSERT [dbo].[Schedule] ([Days], [Class], [Object], [Teacher]) VALUES (N'Понедельник', 3, N'Информатика', N'Сидорова С.И.')
INSERT [dbo].[Schedule] ([Days], [Class], [Object], [Teacher]) VALUES (N'Вторник', 5, N'Русский язык', N'Петров П.П.')
INSERT [dbo].[Schedule] ([Days], [Class], [Object], [Teacher]) VALUES (N'Пятница', 8, N'Математика', N'Иванов И.И.')
INSERT [dbo].[Teacher] ([FIO], [Object], [Class]) VALUES (N'Иванов И.И.', N'Математика', 3)
INSERT [dbo].[Teacher] ([FIO], [Object], [Class]) VALUES (N'Петров П.П.', N'Русский язык', 5)
INSERT [dbo].[Teacher] ([FIO], [Object], [Class]) VALUES (N'Сидорова С.И.', N'Информатика', 8)
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Login], [Password]) VALUES (1, N'111', N'111')
INSERT [dbo].[Users] ([Id], [Login], [Password]) VALUES (2, N'222', N'222')
INSERT [dbo].[Users] ([Id], [Login], [Password]) VALUES (3, N'333', N'333')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Load]  WITH CHECK ADD  CONSTRAINT [FK_Load_Object] FOREIGN KEY([Object])
REFERENCES [dbo].[Object] ([Object])
GO
ALTER TABLE [dbo].[Load] CHECK CONSTRAINT [FK_Load_Object]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Days] FOREIGN KEY([Days])
REFERENCES [dbo].[Days] ([Day])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Days]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Issued_hours] FOREIGN KEY([Object])
REFERENCES [dbo].[Issued_hours] ([Object])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Issued_hours]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Object] FOREIGN KEY([Object])
REFERENCES [dbo].[Object] ([Object])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Object]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Teacher] FOREIGN KEY([Teacher])
REFERENCES [dbo].[Teacher] ([FIO])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Teacher]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Class] FOREIGN KEY([Class])
REFERENCES [dbo].[Class] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Class]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Object1] FOREIGN KEY([Object])
REFERENCES [dbo].[Object] ([Object])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Object1]
GO
