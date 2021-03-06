USE [OnlineDataBase]
GO
/****** Object:  Table [dbo].[ProgramCourses]    Script Date: 12/10/2019 5:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramCourses](
	[ProgramCourses] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[ProgramID] [int] NOT NULL,
 CONSTRAINT [PK_ProgramCourses] PRIMARY KEY CLUSTERED 
(
	[ProgramCourses] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProgramCourses]  WITH CHECK ADD  CONSTRAINT [FK_ProgramCourses_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[ProgramCourses] CHECK CONSTRAINT [FK_ProgramCourses_CourseID]
GO
ALTER TABLE [dbo].[ProgramCourses]  WITH CHECK ADD  CONSTRAINT [FK_ProgramCourses_ProgramID] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[Program] ([ProgramID])
GO
ALTER TABLE [dbo].[ProgramCourses] CHECK CONSTRAINT [FK_ProgramCourses_ProgramID]
GO
