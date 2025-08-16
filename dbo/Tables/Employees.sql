CREATE TABLE [dbo].[Employees] (
    [Id] INT IDENTITY(1, 1) NOT NULL,
    [EmployerId] INT NOT NULL,
    [FirstName]  VARCHAR(50) NOT NULL,
    [LastName] NVARCHAR(50) NOT NULL,
    [Email] NVARCHAR(50) NOT NULL,
    [Occupation] VARCHAR(50) NOT NULL,
    [Salary] DECIMAL(7, 2) NOT NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Employees_Companies] FOREIGN KEY ([EmployerId]) REFERENCES [dbo].[Companies] ([Id])
);

