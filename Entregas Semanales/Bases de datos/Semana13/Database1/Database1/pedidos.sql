CREATE TABLE [dbo].[pedidos]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [idcliente] INT NULL, 
    [idproducto] INT NULL, 
    [unidades] INT NULL, 
    [fecha] DATETIME NULL, 
    [numeropedido] NVARCHAR(50) NULL
)
