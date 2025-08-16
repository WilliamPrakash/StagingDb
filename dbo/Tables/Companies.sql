CREATE TABLE [dbo].[Companies]
(
    [Id] INT IDENTITY(1, 1) NOT NULL,
    [Name] NVARCHAR(50) NULL,
    [Ticker] NVARCHAR(25) NULL,
    [Email] VARCHAR(50) NULL,
    [Notes] NVARCHAR(50) NULL,
    CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED ([Id] ASC)
)

