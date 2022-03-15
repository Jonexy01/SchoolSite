SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheSource](
	[SourceId] [int] IDENTITY(1,1) NOT NULL,
	[Class] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Subject] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_TheSource] PRIMARY KEY CLUSTERED 
(
	[SourceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET IDENTITY_INSERT [dbo].[TheSource] ON 

GO
INSERT [dbo].[TheSource] ([SourceId], [Class], [Subject]) VALUES (1, N'Pry 1', N'Mathematics')
GO
INSERT [dbo].[TheSource] ([SourceId], [Class], [Subject]) VALUES (2, N'Pry 2', N'English')
GO
INSERT [dbo].[TheSource] ([SourceId], [Class], [Subject]) VALUES (3, N'Pry 3', N'French')
GO
INSERT [dbo].[TheSource] ([SourceId], [Class], [Subject]) VALUES (4, N'Pry 4', N'Yoruba')
GO
INSERT [dbo].[TheSource] ([SourceId], [Class], [Subject]) VALUES (5, N'Pry 5', N'Science')
GO
INSERT [dbo].[TheSource] ([SourceId], [Class], [Subject]) VALUES (6, N'Pry 6', N'Fine Art')
GO
INSERT [dbo].[TheSource] ([SourceId], [Class], [Subject]) VALUES (7, NULL, N'Music')
GO
INSERT [dbo].[TheSource] ([SourceId], [Class], [Subject]) VALUES (8, NULL, N'Religios studies')
GO
SET IDENTITY_INSERT [dbo].[TheSource] OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentDetail](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LastName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Result] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_StudentDetail] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET IDENTITY_INSERT [dbo].[StudentDetail] ON 

GO
INSERT [dbo].[StudentDetail] ([StudentId], [FirstName], [LastName], [Result]) VALUES (1, N'Student1', N'Student1', N'Excellent')
GO
INSERT [dbo].[StudentDetail] ([StudentId], [FirstName], [LastName], [Result]) VALUES (3, N'Student3', N'Student3', N'Good')
GO
INSERT [dbo].[StudentDetail] ([StudentId], [FirstName], [LastName], [Result]) VALUES (4, N'Student2', N'Student2', N'Very good')
GO
INSERT [dbo].[StudentDetail] ([StudentId], [FirstName], [LastName], [Result]) VALUES (5, N'Student4', N'Student4', N'Excellent')
GO
SET IDENTITY_INSERT [dbo].[StudentDetail] OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachersDetail](
	[TeacherDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmploymentNo] [int] NULL,
	[EmploymentYear] [int] NULL,
 CONSTRAINT [PK_TeachersDetail] PRIMARY KEY CLUSTERED 
(
	[TeacherDetailsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET IDENTITY_INSERT [dbo].[TeachersDetail] ON 

GO
INSERT [dbo].[TeachersDetail] ([TeacherDetailsId], [Name], [EmploymentNo], [EmploymentYear]) VALUES (1, N'Teacher1', 123, 2012)
GO
INSERT [dbo].[TeachersDetail] ([TeacherDetailsId], [Name], [EmploymentNo], [EmploymentYear]) VALUES (2, N'Teacher2', 2, 2012)
GO
INSERT [dbo].[TeachersDetail] ([TeacherDetailsId], [Name], [EmploymentNo], [EmploymentYear]) VALUES (3, N'Teacher4', 4, 2012)
GO
INSERT [dbo].[TeachersDetail] ([TeacherDetailsId], [Name], [EmploymentNo], [EmploymentYear]) VALUES (4, N'Teacher5', 5, 2012)
GO
INSERT [dbo].[TeachersDetail] ([TeacherDetailsId], [Name], [EmploymentNo], [EmploymentYear]) VALUES (5, N'Teacher6', 6, 2011)
GO
SET IDENTITY_INSERT [dbo].[TeachersDetail] OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachersClass](
	[TeacherClassId] [int] IDENTITY(1,1) NOT NULL,
	[TeacherDetailsId] [int] NOT NULL,
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Class] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Subject] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_TeachersClass] PRIMARY KEY CLUSTERED 
(
	[TeacherClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET IDENTITY_INSERT [dbo].[TeachersClass] ON 

GO
INSERT [dbo].[TeachersClass] ([TeacherClassId], [TeacherDetailsId], [Name], [Class], [Subject]) VALUES (1, 1, N'Teacher1', N'Pry 1', N'Maths')
GO
INSERT [dbo].[TeachersClass] ([TeacherClassId], [TeacherDetailsId], [Name], [Class], [Subject]) VALUES (2, 1, N'Teacher1', N'Pry 1', N'Science')
GO
INSERT [dbo].[TeachersClass] ([TeacherClassId], [TeacherDetailsId], [Name], [Class], [Subject]) VALUES (8, 4, N'Teacher5', N'Pry 1', N'English')
GO
INSERT [dbo].[TeachersClass] ([TeacherClassId], [TeacherDetailsId], [Name], [Class], [Subject]) VALUES (9, 4, N'Teacher5', N'Pry 1', N'Yoruba')
GO
INSERT [dbo].[TeachersClass] ([TeacherClassId], [TeacherDetailsId], [Name], [Class], [Subject]) VALUES (10, 4, N'Teacher5', N'Pry 1', N'English')
GO
INSERT [dbo].[TeachersClass] ([TeacherClassId], [TeacherDetailsId], [Name], [Class], [Subject]) VALUES (11, 4, N'Teacher5', N'Pry 1', N'Yoruba')
GO
INSERT [dbo].[TeachersClass] ([TeacherClassId], [TeacherDetailsId], [Name], [Class], [Subject]) VALUES (12, 4, N'Teacher5', N'Pry 1', N'English')
GO
INSERT [dbo].[TeachersClass] ([TeacherClassId], [TeacherDetailsId], [Name], [Class], [Subject]) VALUES (13, 4, N'Teacher5', N'Pry 1', N'Yoruba')
GO
INSERT [dbo].[TeachersClass] ([TeacherClassId], [TeacherDetailsId], [Name], [Class], [Subject]) VALUES (14, 4, N'Teacher5', N'Pry 1', N'English')
GO
INSERT [dbo].[TeachersClass] ([TeacherClassId], [TeacherDetailsId], [Name], [Class], [Subject]) VALUES (15, 4, N'Teacher5', N'Pry 1', N'Yoruba')
GO
INSERT [dbo].[TeachersClass] ([TeacherClassId], [TeacherDetailsId], [Name], [Class], [Subject]) VALUES (16, 5, N'Teacher6', N'Pry 2', N'Mathematics')
GO
INSERT [dbo].[TeachersClass] ([TeacherClassId], [TeacherDetailsId], [Name], [Class], [Subject]) VALUES (17, 5, N'Teacher6', N'Pry 4', N'Mathematics')
GO
SET IDENTITY_INSERT [dbo].[TeachersClass] OFF
GO
ALTER TABLE [dbo].[TeachersClass]  WITH CHECK ADD  CONSTRAINT [FK_TeachersClass_TeachersDetail] FOREIGN KEY([TeacherDetailsId])
REFERENCES [dbo].[TeachersDetail] ([TeacherDetailsId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeachersClass] CHECK CONSTRAINT [FK_TeachersClass_TeachersDetail]
GO
