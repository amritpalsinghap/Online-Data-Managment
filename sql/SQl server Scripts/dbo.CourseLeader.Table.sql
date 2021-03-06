USE [OnlineDataBase]
GO
/****** Object:  Table [dbo].[CourseLeader]    Script Date: 12/10/2019 5:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseLeader](
	[CourseLeaderID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[ProfressorID] [int] NOT NULL,
 CONSTRAINT [PK_CourseLeader] PRIMARY KEY CLUSTERED 
(
	[CourseLeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CourseLeader]  WITH CHECK ADD  CONSTRAINT [FK_CourseLeader_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[CourseLeader] CHECK CONSTRAINT [FK_CourseLeader_CourseID]
GO
ALTER TABLE [dbo].[CourseLeader]  WITH CHECK ADD  CONSTRAINT [FK_CourseLeader_ProfessorID] FOREIGN KEY([ProfressorID])
REFERENCES [dbo].[Professors] ([ProfressorID])
GO
ALTER TABLE [dbo].[CourseLeader] CHECK CONSTRAINT [FK_CourseLeader_ProfessorID]
GO
