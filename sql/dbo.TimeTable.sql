CREATE TABLE [dbo].[TimeTable] (
    [CourseID]    INT        NOT NULL,
    [ProfessorID] INT        NOT NULL,
    [RoomNumber]  NCHAR (10) NOT NULL,
    [StudentID] INT NOT NULL, 
    FOREIGN KEY ([CourseID]) REFERENCES [dbo].[Course] ([CourseID]),
    FOREIGN KEY ([ProfessorID]) REFERENCES [dbo].[Professor] ([ProfessorID])
);

