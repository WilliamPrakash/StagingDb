CREATE TABLE [dbo].[Orders]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Volume] INT NOT NULL,
	[Total] DECIMAL(18, 2) NOT NULL,
	[ProductId] INT NOT NULL,
	--ModelId
	[CompanyId] INT NOT NULL,
	[ModelId] INT,
	[OrderDate] DATETIME,
	CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([Id] ASC), 
    CONSTRAINT [FK_Orders_Products] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products]([Id]),
	CONSTRAINT [FK_Orders_Companies] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[Companies]([Id])
)
