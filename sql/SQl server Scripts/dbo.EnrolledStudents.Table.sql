USE [OnlineDataBase]
GO
/****** Object:  Table [dbo].[EnrolledStudents]    Script Date: 10/21/2019 4:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnrolledStudents](
	[EnrolledStudentsID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[ProgramID] [int] NOT NULL
) ON [PRIMARY]
GO
