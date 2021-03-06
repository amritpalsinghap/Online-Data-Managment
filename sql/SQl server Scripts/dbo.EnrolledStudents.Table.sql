USE [OnlineDataBase]
GO
/****** Object:  Table [dbo].[EnrolledStudents]    Script Date: 12/10/2019 5:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnrolledStudents](
	[EnrolledStudentsID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[ProgramID] [int] NOT NULL,
 CONSTRAINT [PK_EnrolledStudents] PRIMARY KEY CLUSTERED 
(
	[EnrolledStudentsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EnrolledStudents]  WITH CHECK ADD  CONSTRAINT [FK_EnrolledStudents_ProgramID] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[Program] ([ProgramID])
GO
ALTER TABLE [dbo].[EnrolledStudents] CHECK CONSTRAINT [FK_EnrolledStudents_ProgramID]
GO
ALTER TABLE [dbo].[EnrolledStudents]  WITH NOCHECK ADD  CONSTRAINT [PK_EnrolledStudents_StudentID] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[EnrolledStudents] CHECK CONSTRAINT [PK_EnrolledStudents_StudentID]
GO
