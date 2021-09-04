USE [READB]
GO
/****** Object:  Table [dbo].[tblFaqs]    Script Date: 07/15/2015 23:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFaqs](
	[f_id] [int] IDENTITY(1,1) NOT NULL,
	[f_parent_id] [int] NULL,
	[f_description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[f_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblFaqs] ON
INSERT [dbo].[tblFaqs] ([f_id], [f_parent_id], [f_description]) VALUES (2, 0, N'How to download the assignment? ')
INSERT [dbo].[tblFaqs] ([f_id], [f_parent_id], [f_description]) VALUES (3, 0, N'How to submit the assignment?')
INSERT [dbo].[tblFaqs] ([f_id], [f_parent_id], [f_description]) VALUES (4, 0, N'How to check the marks?')
INSERT [dbo].[tblFaqs] ([f_id], [f_parent_id], [f_description]) VALUES (5, 0, N'How to post a Query?')
INSERT [dbo].[tblFaqs] ([f_id], [f_parent_id], [f_description]) VALUES (7, 2, N'Click on download link')
SET IDENTITY_INSERT [dbo].[tblFaqs] OFF
/****** Object:  Table [dbo].[tblUsers]    Script Date: 07/15/2015 23:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsers](
	[user_id] [bigint] IDENTITY(100,1) NOT NULL,
	[name] [varchar](50) NULL,
	[user_type] [varchar](10) NULL,
	[course_name] [varchar](20) NULL,
	[batch_no] [varchar](50) NULL,
	[course_year] [varchar](5) NULL,
	[course_semester] [varchar](20) NULL,
	[student_roll_no]  AS ('rea-'+CONVERT([varchar],[user_id],(0))),
	[user_name] [varchar](20) NULL,
	[user_password] [varchar](20) NULL,
	[user_status] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblUsers] ON
INSERT [dbo].[tblUsers] ([user_id], [name], [user_type], [course_name], [batch_no], [course_year], [course_semester], [user_name], [user_password], [user_status]) VALUES (100, N'Raza', N'Admin', NULL, NULL, NULL, NULL, N'Admin', N'Admin', N'true')
INSERT [dbo].[tblUsers] ([user_id], [name], [user_type], [course_name], [batch_no], [course_year], [course_semester], [user_name], [user_password], [user_status]) VALUES (101, N'Muhammad Farooq', N'Staff', NULL, NULL, NULL, NULL, N'farooq', N'123', N'true')
INSERT [dbo].[tblUsers] ([user_id], [name], [user_type], [course_name], [batch_no], [course_year], [course_semester], [user_name], [user_password], [user_status]) VALUES (102, N'Mufasil', N'Student', N'B.TECH', N'201001a', N'2010', N'Semester-1', N'mufasil201001a', N'123', N'true')
INSERT [dbo].[tblUsers] ([user_id], [name], [user_type], [course_name], [batch_no], [course_year], [course_semester], [user_name], [user_password], [user_status]) VALUES (103, N'hassan', N'Student', N'B.TECH', N'201001a', N'2010', N'Semester-1', N'hassan201001a', N'123', N'true')
INSERT [dbo].[tblUsers] ([user_id], [name], [user_type], [course_name], [batch_no], [course_year], [course_semester], [user_name], [user_password], [user_status]) VALUES (104, N'shahzaib', N'Student', N'B.TECH', N'201501a', N'2015', N'Semester-1', N'shazi201501a', N'123', N'true')
INSERT [dbo].[tblUsers] ([user_id], [name], [user_type], [course_name], [batch_no], [course_year], [course_semester], [user_name], [user_password], [user_status]) VALUES (106, N'Farhan', N'Student', N'B.Pharmacy', N'201101a', N'2011', N'Semester-2', N'farhan201101a', N'123', N'true')
SET IDENTITY_INSERT [dbo].[tblUsers] OFF
/****** Object:  Table [dbo].[tblQueries]    Script Date: 07/15/2015 23:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblQueries](
	[q_id] [bigint] IDENTITY(10000,1) NOT NULL,
	[q_parent_id] [bigint] NULL,
	[user_id] [bigint] NULL,
	[q_description] [varchar](200) NULL,
	[q_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[q_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblQueries] ON
INSERT [dbo].[tblQueries] ([q_id], [q_parent_id], [user_id], [q_description], [q_date]) VALUES (10000, 0, 102, N'Hi Sir,

I am very impressed with your Institute

Thanks
Mufasil.', CAST(0x0000A4D400A57930 AS DateTime))
INSERT [dbo].[tblQueries] ([q_id], [q_parent_id], [user_id], [q_description], [q_date]) VALUES (10001, 10000, 101, N'Thank you.', CAST(0x0000A4D400A5A3D7 AS DateTime))
INSERT [dbo].[tblQueries] ([q_id], [q_parent_id], [user_id], [q_description], [q_date]) VALUES (10002, 0, 102, N'hello ', CAST(0x0000A4D400C0635E AS DateTime))
SET IDENTITY_INSERT [dbo].[tblQueries] OFF
/****** Object:  Table [dbo].[tblAssignments]    Script Date: 07/15/2015 23:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAssignments](
	[a_id] [bigint] IDENTITY(10000,1) NOT NULL,
	[a_name] [varchar](50) NULL,
	[a_description] [varchar](100) NULL,
	[a_file_name] [varchar](100) NULL,
	[course_name] [varchar](20) NULL,
	[batch_no] [varchar](50) NULL,
	[course_year] [varchar](5) NULL,
	[course_semester] [varchar](20) NULL,
	[a_assigned_by] [varchar](50) NULL,
	[user_id] [bigint] NULL,
	[a_assigned_date] [datetime] NULL,
	[a_submit_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[a_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblAssignments] ON
INSERT [dbo].[tblAssignments] ([a_id], [a_name], [a_description], [a_file_name], [course_name], [batch_no], [course_year], [course_semester], [a_assigned_by], [user_id], [a_assigned_date], [a_submit_date]) VALUES (10006, N'PHP', N'PHP', N'150715232403abc.txt', N'B.TECH', N'201501a', N'2015', N'Semester-1', N'Muhammad Farooq', 101, CAST(0x0000A4D60181A33A AS DateTime), CAST(0x0000A4E500000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblAssignments] OFF
/****** Object:  Table [dbo].[tblAssignmentDetails]    Script Date: 07/15/2015 23:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAssignmentDetails](
	[ad_id] [bigint] IDENTITY(10000,1) NOT NULL,
	[a_id] [bigint] NULL,
	[user_id] [bigint] NULL,
	[student_roll_no] [varchar](100) NULL,
	[a_file_name] [varchar](100) NULL,
	[ad_uploaded_date] [datetime] NULL,
	[ad_marks] [decimal](6, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ad_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblAssignmentDetails] ON
INSERT [dbo].[tblAssignmentDetails] ([ad_id], [a_id], [user_id], [student_roll_no], [a_file_name], [ad_uploaded_date], [ad_marks]) VALUES (10006, 10006, 104, N'rea-104', N'150715232441abc.txt', CAST(0x0000A4D60181CFA5 AS DateTime), CAST(80.00 AS Decimal(6, 2)))
SET IDENTITY_INSERT [dbo].[tblAssignmentDetails] OFF
/****** Object:  ForeignKey [FK__tblAssign__user___0AD2A005]    Script Date: 07/15/2015 23:27:49 ******/
ALTER TABLE [dbo].[tblAssignmentDetails]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[tblUsers] ([user_id])
GO
/****** Object:  ForeignKey [FK__tblAssignm__a_id__09DE7BCC]    Script Date: 07/15/2015 23:27:49 ******/
ALTER TABLE [dbo].[tblAssignmentDetails]  WITH CHECK ADD FOREIGN KEY([a_id])
REFERENCES [dbo].[tblAssignments] ([a_id])
ON DELETE CASCADE
GO
/****** Object:  ForeignKey [FK__tblAssign__user___0519C6AF]    Script Date: 07/15/2015 23:27:49 ******/
ALTER TABLE [dbo].[tblAssignments]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[tblUsers] ([user_id])
GO
/****** Object:  ForeignKey [FK__tblQuerie__user___0F975522]    Script Date: 07/15/2015 23:27:49 ******/
ALTER TABLE [dbo].[tblQueries]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[tblUsers] ([user_id])
ON DELETE CASCADE
GO
