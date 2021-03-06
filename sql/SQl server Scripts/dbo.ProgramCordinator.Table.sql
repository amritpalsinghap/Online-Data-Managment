USE [OnlineDataBase]
GO
/****** Object:  Table [dbo].[ProgramCordinator]    Script Date: 12/10/2019 5:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramCordinator](
	[ProgamCordinatorID] [int] NOT NULL,
	[ProgramID] [int] NOT NULL,
	[ProfessorID] [int] NOT NULL,
 CONSTRAINT [PK_ProgramCordinator] PRIMARY KEY CLUSTERED 
(
	[ProgamCordinatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProgramCordinator]  WITH CHECK ADD  CONSTRAINT [FK_ProgramCordinator_ProfessorID] FOREIGN KEY([ProfessorID])
REFERENCES [dbo].[Professors] ([ProfressorID])
GO
ALTER TABLE [dbo].[ProgramCordinator] CHECK CONSTRAINT [FK_ProgramCordinator_ProfessorID]
GO
ALTER TABLE [dbo].[ProgramCordinator]  WITH CHECK ADD  CONSTRAINT [FK_ProgramCordinator_ProgramID] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[Program] ([ProgramID])
GO
ALTER TABLE [dbo].[ProgramCordinator] CHECK CONSTRAINT [FK_ProgramCordinator_ProgramID]
GO
