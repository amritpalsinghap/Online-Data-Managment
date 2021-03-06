USE [OnlineDataBase]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 12/10/2019 5:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [int] NOT NULL,
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
	[ProfilePic] [binary](2000) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_PhoneNumber_Staff] UNIQUE NONCLUSTERED 
(
	[PhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Email_Staff]    Script Date: 12/10/2019 5:38:28 PM ******/
CREATE NONCLUSTERED INDEX [UK_Email_Staff] ON [dbo].[Staff]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_UserID]
GO
