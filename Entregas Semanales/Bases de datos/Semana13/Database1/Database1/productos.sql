CREATE TABLE [dbo].[productos]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [nombre] NVARCHAR(50) NULL, 
    [descripcion] TEXT NULL, 
    [precio] MONEY NULL, 
    [stock] INT NULL, 
    [imagen] NVARCHAR(50) NULL
)
