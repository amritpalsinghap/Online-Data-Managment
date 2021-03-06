USE [OnlineDataBase]
GO
/****** Object:  Table [dbo].[Program]    Script Date: 12/10/2019 5:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Program](
	[ProgramID] [int] NOT NULL,
	[ProgramName] [varchar](50) NOT NULL,
	[ProgramCode] [nchar](10) NOT NULL,
	[Overview] [varchar](500) NOT NULL,
	[Requirements] [varchar](50) NOT NULL,
	[DegreeCompeletion] [varchar](50) NOT NULL,
	[Fees] [decimal](4, 2) NOT NULL,
 CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED 
(
	[ProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
