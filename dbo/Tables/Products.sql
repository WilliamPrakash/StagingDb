CREATE TABLE [dbo].[Products]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	[ModelId] NVARCHAR(50) NOT NULL,
	[Price] DECIMAL(18, 10) NOT NULL,
	[Notes] NVARCHAR(max) NULL,
	CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([Id] ASC)
	--To Do: make a Model table
);