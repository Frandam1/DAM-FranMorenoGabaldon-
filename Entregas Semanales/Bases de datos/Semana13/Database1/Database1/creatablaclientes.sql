
CREATE TABLE [dbo].[clientes]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [nombre] NVARCHAR(50) NULL, 
    [apellidos] NVARCHAR(50) NULL, 
    [email] NVARCHAR(50) NULL, 
    [telefono] NVARCHAR(50) NULL
)