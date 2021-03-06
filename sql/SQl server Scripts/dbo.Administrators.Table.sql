USE [OnlineDataBase]
GO
/****** Object:  Table [dbo].[Administrators]    Script Date: 12/10/2019 5:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrators](
	[AdministratorID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[AptNoOrHouseNo] [int] NOT NULL,
	[Street] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Prov] [varchar](50) NOT NULL,
	[Postal] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[CollegeEmail] [varchar](50) NOT NULL,
	[PhoneNumber] [nchar](12) NOT NULL,
	[CollegeNumber] [varchar](20) NOT NULL,
	[availability] [datetime] NOT NULL,
	[ProfilePic] [binary](2000) NULL,
 CONSTRAINT [PK_Administrator] PRIMARY KEY CLUSTERED 
(
	[AdministratorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_Email_Administrators] UNIQUE NONCLUSTERED 
(
	[AdministratorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_PhoneNumber_Administrators] UNIQUE NONCLUSTERED 
(
	[PhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Administrators]  WITH NOCHECK ADD  CONSTRAINT [FK_Administrator_userID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Administrators] CHECK CONSTRAINT [FK_Administrator_userID]
GO
