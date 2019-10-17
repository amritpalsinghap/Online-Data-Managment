CREATE TABLE [dbo].[Student] (
    [StudentID]  INT          NOT NULL,
    [FirstName]  VARCHAR (20) NOT NULL,
    [LastName]   VARCHAR (20) NOT NULL,
    [Email]      VARCHAR (25) NOT NULL,
    [Phone]      NCHAR (10)   NOT NULL,
    [Street]     VARCHAR (20) NOT NULL,
    [City]       VARCHAR (20) NOT NULL,
    [Province]   VARCHAR (2)  NOT NULL,
    [PostalCode] VARCHAR (8)  NOT NULL,
    [ProgramID]   NCHAR (10)   NOT NULL,
    [Password]   NCHAR (10)   NOT NULL,
    PRIMARY KEY CLUSTERED ([StudentID] ASC)
);

