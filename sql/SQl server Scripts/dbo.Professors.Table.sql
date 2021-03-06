USE [OnlineDataBase]
GO
/****** Object:  Table [dbo].[Professors]    Script Date: 12/10/2019 5:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professors](
	[ProfressorID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Street] [varchar](50) NOT NULL,
	[AptNoOrHouseNo] [int] NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Prov] [varchar](50) NOT NULL,
	[Postal] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[CollegeEmail] [varchar](50) NOT NULL,
	[PhoneNumber] [nchar](12) NOT NULL,
	[CollegeNumber] [varchar](20) NOT NULL,
	[availability] [datetime] NOT NULL,
	[ProfilePic] [binary](2000) NULL,
 CONSTRAINT [PK_ProfessorID] PRIMARY KEY CLUSTERED 
(
	[ProfressorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_Email_Professors] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_PhoneNumber_Professors] UNIQUE NONCLUSTERED 
(
	[PhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Professors]  WITH CHECK ADD  CONSTRAINT [FK_ProfessorID_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Professors] CHECK CONSTRAINT [FK_ProfessorID_UserID]
GO
