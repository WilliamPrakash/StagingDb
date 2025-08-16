CREATE TABLE [dbo].[Products]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	[ModelId] INT NOT NULL,
	[Price] DECIMAL(18, 10) NOT NULL,
	[CompanyId] INT NOT NULL,
	[InventoryQuantity] INT NOT NULL,
	[Description] NVARCHAR(max) NULL,
	CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Products_Models] FOREIGN KEY ([ModelId]) REFERENCES [dbo].[Models] ([Id]),
	CONSTRAINT [FK_Products_Companies] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[Companies] ([Id])
)