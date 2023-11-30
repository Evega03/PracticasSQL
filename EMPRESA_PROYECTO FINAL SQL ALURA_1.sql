CREATE SCHEMA EMPRESA;

CREATE TABLE `clientes` (
  `DNI` varchar(11) NOT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `DIRECCION` varchar(150) DEFAULT NULL,
  `BARRIO` varchar(50) DEFAULT NULL,
  `CIUDAD` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `CP` varchar(10) DEFAULT NULL,
  `FECHA_NACIMIENTO` date DEFAULT NULL,
  `EDAD` smallint DEFAULT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `LIMITE_CREDITO` int DEFAULT NULL,
  `VOLUMEN_COMPRA` int DEFAULT NULL,
  `PRIMERA_COMPRA` bit(1) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	'
SELECT * FROM CLIENTES;

CREATE TABLE vendedores (
 MATRICULA varchar(10) NOT NULL,
 NOMBRE VARCHAR(100) DEFAULT NULL,
 BARRIO  VARCHAR(50) DEFAULT NULL,
 COMISION FLOAT DEFAULT NULL,
 FECHA_DE_ADMISION DATE DEFAULT NULL,
 VACACIONES BIT(1),

 PRIMARY KEY(MATRICULA)
);

CREATE TABLE productos (
CODIGO VARCHAR(10) NOT NULL,
DESCRIPCION VARCHAR(100) DEFAULT NULL,
SABOR VARCHAR(50),
TAMANO VARCHAR(50),
ENVASE VARCHAR(50),
PRECIO FLOAT,

PRIMARY KEY (CODIGO)
);

CREATE TABLE `facturas` (
  `NUMERO` varchar(5) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `DNI` varchar(11) NOT NULL,
  `MATRICULA` varchar(5) NOT NULL,
  `IMPUESTO` float DEFAULT NULL,
  PRIMARY KEY (`NUMERO`),
  KEY `DNI_idx` (`DNI`),
  KEY `MATRICULA_idx` (`MATRICULA`),
  CONSTRAINT `DNI` FOREIGN KEY (`DNI`) REFERENCES `clientes` (`DNI`),
  CONSTRAINT `MATRICULA` FOREIGN KEY (`MATRICULA`) REFERENCES `vendedores` (`MATRICULA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE items(
NUMERO 	VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
CANTIDAD INT,
PRECIO FLOAT,
PRIMARY KEY (NUMERO, CODIGO),
FOREIGN KEY (NUMERO) REFERENCES facturas(NUMERO),
FOREIGN KEY (CODIGO) REFERENCES productos(CODIGO)
);

/*INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) 
VALUES ('3623344710', 'Marcos Rosas', 'Av. Universidad', 'Del Valle', 'Ciudad de México', 'EM', '22002012', '1995-01-13', 26, 'M', 110000, 220000, 1);*/

INSERT INTO CLIENTES values('3623344710', 'Marcos Rosas', 'Av. Universidad', 'Del Valle', 'Ciudad de México', 'EM', '22002012', '1995-01-13', 26, 'M', 110000, 220000, 1);
SELECT * FROM CLIENTES;
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', 'Barrio del Niño Jesús', 'Ciudad de México', 'EM', '22002002', '1995-01-07', 25, 'M', 150000, 250000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', 'Carola', 'Ciudad de México', 'EM', '88202912', '1992-01-25', 29, 'M', 120000, 200000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5576228758', 'Patricia Olivera', 'Pachuca 75', 'Condesa', 'Ciudad de México', 'EM', '88192029', '1995-01-14', 25, 'F', 70000, 160000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('8502682733', 'Luis Silva', 'Prol. 16 de Septiembre 1156', 'Contadero', 'Ciudad de México', 'EM', '82122020', '1995-01-07', 25, 'M', 110000, 190000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('1471156710', 'Erica Carvajo', 'Heriberto Frías 1107', 'Del Valle', 'Ciudad de México', 'EM', '80012212', '1990-01-01', 30, 'F', 170000, 245000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('2600586709', 'Raúl Meneses', 'Estudiantes 89', 'Centro', 'Ciudad de México', 'EM', '22002012', '1999-08-13', 21, 'M', 120000, 210000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('50534475787', 'Abel Pintos', 'Carr. México-Toluca 1499', 'Cuajimalpa', 'Ciudad de México', 'EM', '22000212', '1995-01-11', 25, 'M', 170000, 260000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5840119709', 'Gabriel Roca', 'Eje Central Lázaro Cárdenas 911', 'Del Valle', 'Ciudad de México', 'EM', '80010221', '1985-01-16', 36, 'M', 140000, 210000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('8719655770', 'Carlos Santivañez', 'Calz. del Hueso 363', 'Floresta Coyoacán', 'Ciudad de México', 'EM', '81192002', '1983-01-20', 37, 'M', 200000, 240000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('19290992743', 'Rodrigo Villa', 'Libertadores 65', 'Héroes', 'Ciudad de México', 'EM', '21002020', '1998-05-30', 22, 'M', 120000, 220000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5648641702', 'Paolo Mendez', 'Martires de Tacubaya 65', 'Héroes de Padierna', 'Ciudad de México', 'EM', '21002020', '1991-01-30', 29, 'M', 120000, 220000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('492472718', 'Jorge Castro', 'Federal México-Toluca 5690', 'Locaxco', 'Ciudad de México', 'EM', '22012002', '1994-01-19', 26, 'M', 75000, 95000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('9275760794', 'Alberto Rodriguez', 'Circunvalación Oblatos 690', 'Oblatos', 'Guadalajara', 'JC', '44700000', '1991-12-28', 26, 'M', 75000, 95000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('94387575700', 'María Jimenez', 'Av. Libertadores 457', 'Barragán Hernández', 'Guadalajara', 'JC', '44469000', '1995-05-13', 26, 'F', 120000, 300000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('95939180787', 'Ximena Gómez', 'Jaguares 822', 'Alcalde Barranquitas', 'Guadalajara', 'JC',	'44270000', '1992-01-05', 16, 'F', 90000, 18000, 0);

insert into items
select NUMERO, CODIGO_DEL_PRODUCTO AS CODIGO, CANTIDAD, PRECIO FROM jugos_ventas.items_facturas;

insert into facturas
select DNI, MATRICULA, FECHA_VENTA AS FECHA, NUMERO, IMPUESTO from jugos_ventas.facturas;

SELECT * FROM empresa.facturas;
select*from jugos_ventas.facturas;

SELECT * FROM empresa.facturas;
select * from empresa.items;
select * from empresa.vendedores;

/*INNER JOIN - ¡APRENDETELO!*/
SELECT * FROM empresa.facturas F
INNER JOIN
empresa.items I
ON F.NUMERO = I.NUMERO;

/*FUNCION RANDOM*/

-- MIN = 20 Y MAX = 250
-- (RAND()*(MAX-MIN+1))+MIN
SELECT rand() AS ALEATORIO_NORMAL;
SELECT (RAND() * (250-20+1))+20 AS ALEATORIO_ALGORITMO;
/*QUIERO UN NUMERO ENTERO SE HACE CON FLOOR()*/
SELECT FLOOR((RAND() * (250-20+1))+20) AS ALEATORIO_ALGORITMO;
SET GLOBAL log_bin_trust_function_creators = 1;
SELECT f_aleatorio(1,10) as numero_aleatorio;
SELECT count(*) FROM empresa.clientes;
/*
CREATE FUNCTION `f_cliente_aleatorio` ()
RETURNS VARCHAR(11)
BEGIN
DECLARE vresultado VARCHAR(11);
DECLARE vmax INT;
DECLARE valeatorio INT;
SELECT count(*) into vmax FROM empresa.clientes;
SET valeatorio = f_aleatorio(1,vmax);
RETURN vresultado;
END
EXPLICACION
Este código SQL define una función llamada f_cliente_aleatorio que tiene la intención de devolver un valor VARCHAR de longitud 11. La función parece estar diseñada para seleccionar
 aleatoriamente un cliente de la tabla clientes en la base de datos empresa. Aquí está una explicación paso a paso de cómo funciona este código:
CREATE FUNCTION: Esto inicia la creación de una nueva función en SQL.
Nombre de la función: La función se llama f_cliente_aleatorio.
Paréntesis vacíos (): En este caso, la función no acepta ningún argumento, ya que los paréntesis están vacíos.
RETURNS VARCHAR(11): Esto especifica que la función devolverá un valor VARCHAR de longitud 11.
BEGIN: Marca el comienzo del bloque de código de la función.
DECLARE vresultado VARCHAR(11);: Aquí se declara una variable llamada vresultado que se utilizará para almacenar el resultado final.
DECLARE vmax INT;: Se declara una variable llamada vmax de tipo INT para almacenar el número máximo de clientes en la tabla.
DECLARE valeatorio INT;: Se declara una variable llamada valeatorio de tipo INT que se utilizará para almacenar el valor aleatorio que se generará.
SELECT count(*) into vmax FROM empresa.clientes;: Esta consulta SQL cuenta el número de registros en la tabla clientes de la base de datos empresa y almacena ese valor en la 
variable vmax. Esto te da el número máximo posible de clientes en la tabla.
SET valeatorio = f_aleatorio(1,vmax);: Aquí parece que intenta generar un valor aleatorio entre 1 y vmax utilizando una función llamada f_aleatorio. Sin embargo, en el código que 
proporcionaste, no se muestra la definición de la función f_aleatorio, por lo que esta parte del código no funcionaría a menos que haya una función f_aleatorio definida en otra parte.
RETURN vresultado;: Finalmente, se devuelve el valor almacenado en vresultado como el resultado de la función. Sin embargo, en el código que proporcionaste, vresultado nunca se 
asigna ni se actualiza con ningún valor, por lo que esta función no devolverá ningún resultado significativo en su estado actual.
Para que esta función funcione correctamente, necesitas definir una función llamada f_aleatorio que genere un número aleatorio entre los valores especificados (1 y vmax). 
Además, deberías considerar asignar vresultado con algún valor basado en el resultado de la consulta a la tabla de clientes para que esta función pueda devolver información útil.
*/
SELECT COUNT(*) FROM empresa.clientes;
SELECT * FROM empresa.clientes;
SELECT * FROM empresa.clientes LIMIT 5;
SELECT * FROM empresa.clientes LIMIT 5,1;
SELECT * FROM empresa.clientes LIMIT 17,1;
select f_cliente_aleatorio() as cliente;

/*FUNCION RANDOM PRODUCTOS y vendedores*/
SELECT * FROM empresa.productos;
SELECT COUNT(*) FROM empresa.productos;
select f_producto_aleatorio() as producto;
select * from empresa.vendedores;
SELECT COUNT(*) FROM empresa.vendedores;
select f_vendedor_aleatorio() as vendedor;

/*ASI PARA QUE SE VEA MAS BONITO*/
SELECT  f_cliente_aleatorio() as cliente, f_producto_aleatorio() as producto, f_vendedor_aleatorio() as vendedor;
/*SET PROCEDURE CHINGON*/
SELECT MAX(NUMERO) FROM FACTURAS;
CALL sp_venta ('20210619', 3, 100);
SELECT MAX(NUMERO) FROM FACTURAS;
select count(*) from facturas;
select NUMERO from empresa.facturas order by numero desc limit 88000;

CALL sp_venta ('20210619', 3, 100);
SELECT MAX(NUMERO) FROM FACTURAS;
CALL sp_venta ('20210619', 3, 100);
SELECT MAX(NUMERO) FROM FACTURAS;

/*/* ERROR DE DUPLICIDAD /*/

SELECT A.FECHA, sum(B.CANTIDAD*B.PRECIO) AS FACTURACION
FROM facturas A 
INNER JOIN
items B 
ON A.NUMERO = B.NUMERO
WHERE A.FECHA = '20210619'
GROUP BY A.FECHA;

call sp_venta ('20210619', 3, 100);


SELECT YEAR(FECHA), CEIL(SUM(IMPUESTO * (CANTIDAD * PRECIO))) 
AS RESULTADO
FROM facturas F
INNER JOIN items I ON F.NUMERO = I.NUMERO
WHERE YEAR(FECHA) = 2021
GROUP BY YEAR(FECHA);

SELECT * FROM facturacion WHERE FECHA = '20210622';

CALL sp_venta('20210622', 15, 100);

DROP TRIGGER TG_FACTURACION_DELETE;
DROP TRIGGER TG_FACTURACION_UPDATE;
DROP TRIGGER TG_FACTURACION_INSERT;

DELIMITER //
CREATE TRIGGER TG_FACTURACION_INSERT 
AFTER INSERT ON items
FOR EACH ROW BEGIN
  CALL sp_triggers;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_DELETE
AFTER DELETE ON items
FOR EACH ROW BEGIN
  CALL sp_triggers;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_UPDATE
AFTER UPDATE ON items
FOR EACH ROW BEGIN
  CALL sp_triggers;
END //

DELIMITER $$
CREATE PROCEDURE `sp_triggers`()
BEGIN
  DELETE FROM facturacion;
  INSERT INTO facturacion
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM facturas A
  INNER JOIN
  items B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;
END $$


