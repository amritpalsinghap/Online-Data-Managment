USE [OnlineDataBase]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 10/23/2019 5:34:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[AptNoOrHouseNo] [int] NULL,
	[Street] [varchar](50) NULL,
	[City] [varchar](50) NOT NULL,
	[Prov] [varchar](50) NOT NULL,
	[Postal] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PhoneNumber] [nchar](12) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Student_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Student_UserID]
GO
