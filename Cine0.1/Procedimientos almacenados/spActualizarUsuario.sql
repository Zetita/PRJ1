USE CineFrenz
GO

CREATE PROCEDURE spActualizarUsuario
(
@USUARIO CHAR(40),
@CONTRASENIA VARBINARY(MAX),
@EMAIL CHAR(40),
@APELLIDOS CHAR(40),
@NOMBRES CHAR(40),
@DNI CHAR(8),
@TELEFONO CHAR(15),
@FECHANAC DATE,
@ADMINISTRADOR BIT,
@ACTIVO BIT
)
AS
UPDATE Usuarios
SET
Contrasenia=@CONTRASENIA,
Email_Usuario=@EMAIL,
Apellidos_Usuario=@APELLIDOS,
Nombres_Usuario=@NOMBRES,
DNI_Usuario=@DNI,
Telefono_Usuario=@TELEFONO,
FechaNac_Usuario=@FECHANAC,
Administrador=@ADMINISTRADOR
WHERE Usuario=@USUARIO
RETURN
