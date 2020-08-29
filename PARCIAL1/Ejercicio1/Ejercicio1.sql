use master;

CREATE DATABASE SpaDiego
go

use SpaDiego

CREATE TABLE Sucursales
	(
	id_cliente int IDENTITY(1,1) PRIMARY KEY,
	nombre varchar(200) NOT NULL,
	sexo varchar(25),
	ingresos decimal,
	promedio_visitas decimal,
	edad int,
	sauna tinyint,
	masaje tinyint,
	hidro tinyint,
	yoga tinyint
	)
go

SELECT * FROM Sucursales


--PERSONAS CUYO PROMEDIO DE VISITAS ES MAYOR O IGUAL QUE 4,
--INGRESOS EN EL SPA SEAN MAYORES O IGUALES A 1000
--Y CUENTEN CON ALGUN SERVICIO EXTRA (SAUNA, MASAJE, HIDRO, YOGA)
SELECT * 
FROM Sucursales
WHERE promedio_visitas>=4
AND ingresos >=1000
AND (sauna=1 or masaje=1 or hidro=1 or yoga=1)

--LOS 100 CLIENTES QUE CUMPLEN CON LOS REQUISITOS ANTERIORES
--Y ADEMAS ORDENADOS CON INGRESOS DE MAYOR A MENOR
SELECT TOP 100 *
FROM Sucursales
WHERE promedio_visitas>=4
AND ingresos >=1000
AND (sauna=1 or masaje=1 or hidro=1 or yoga=1)
ORDER BY ingresos DESC

--TODOS LOS REQUISITOS ANTERIORES
--Y ADEMAS QUE ASISTAN AL MENOS A DOS SERVICIOS
SELECT TOP 100 *
FROM Sucursales
WHERE promedio_visitas>=4
AND ingresos >=1000
AND (sauna+masaje+hidro+yoga>=2)
ORDER BY ingresos DESC

--CANTIDAD DE MUJERES QUE CUENTEN CON
--PROMEDIO DE VISITAS ES MAYOR O IGUAL QUE 4,
--INGRESOS EN EL SPA SEAN MAYORES O IGUALES A 1000
--Y CUENTEN CON DOS SERVICIOS EXTRAS (SAUNA, MASAJE, HIDRO, YOGA)
SELECT COUNT(sexo) AS 'MUJERES'
FROM Sucursales
WHERE promedio_visitas>=4
AND ingresos >=1000
AND (sauna+masaje+hidro+yoga>=2)
AND sexo='Femenino'

--CANTIDAD DE HOMBRES QUE CUENTEN CON
--PROMEDIO DE VISITAS ES MAYOR O IGUAL QUE 4,
--INGRESOS EN EL SPA SEAN MAYORES O IGUALES A 1000
--Y CUENTEN CON DOS SERVICIOS EXTRAS (SAUNA, MASAJE, HIDRO, YOGA)
SELECT COUNT(sexo) AS 'HOMBRES'
FROM Sucursales
WHERE promedio_visitas>=4
AND ingresos >=1000
AND (sauna+masaje+hidro+yoga>=2)
AND sexo='Masculino'

--SERVICIO QUE MAS UTILIZAN
SELECT COUNT(sauna) AS 'SAUNA' FROM Sucursales WHERE sauna=1 --284
SELECT COUNT(masaje) AS 'MASAJE' FROM Sucursales where masaje=1 --366
SELECT COUNT(hidro) AS 'HIDRO' FROM Sucursales where hidro=1 --271
SELECT COUNT(yoga) AS 'YOGA' FROM Sucursales where yoga=1 --361

