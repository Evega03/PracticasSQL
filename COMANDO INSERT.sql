/*COMAND INSERT

INSERT INTO <nombre de la tabla> (<campos separados por ",">)
VALUES (<valores de los campos separados por ",">);

O tambien podemos insertar varios registrosa a la vez:

INSERT INTO <nombre de la tabla> (<campos separados por ",">)
VALUES (<valores de los campos separados por ",">),
(<valores de los campos separados por ",">),
(...)
(<valores de los campos separados por ",">);
*/







USE VENTAS_JUGOS;

INSERT INTO tb_producto(CODIGO, DESCRIPCION, SABOR, TAMAÑO, ENVASE, 
PRECIO_LISTA) VALUES (
'1040107', 'LIGHT', 'SANDIA', '350 ML', 'LATA', 4.56
);

SELECT * FROM tb_producto;

INSERT INTO tb_producto(CODIGO, SABOR, DESCRIPCION, TAMAÑO, ENVASE, 
PRECIO_LISTA) VALUES (
'1040108', 'Guanábana', 'Light', '350 ml', 'LATA', 4.00
);
/*se puede quitar ya el nombre de los campos porque se respeta el valor de la tabla*/
INSERT INTO tb_producto VALUES 
('1040109', 'Light', 'Asai', '350 ml', 'Lata', 5.60),
('1040110', 'Light', 'Manzana', '350 ml', 'Lata', 6.00);
/*('1040111', 'Light', 'Mango', '350 ml', 'Lata', 3.5);*/

INSERT INTO tb_producto VALUES 
('1040111', 'Light', 'Mango', '350 ml', 'Lata', 3.5);

/*EJERCICIO:
Incluye los siguientes registros en la tabla de clientes:

DNI: 9283760794, NOMBRE: Edson Calisaya, DIRECCION: Sta Úrsula Xitla, BARRIO: Barrio del Niño Jesús, CIUDAD: Ciudad de México, ESTADO: EM, CP: 22002002, 
FECHA DE NACIMIENTO: 1995-01-07, EDAD: 25, SEXO: M, LIMITE DE CREDITO: 150000, VOLUMEN DE COMPRA: 250000, PRIMERA COMPRA: Sí.

DNI: 7771579779, NOMBRE: Marcelo Perez, DIRECCION: F.C. de Cuernavaca 13, BARRIO: Carola, CIUDAD: Ciudad de México, ESTADO: EM, CP: 88202912, 
FECHA DE NACIMIENTO: 1992-01-25, EDAD: 29, SEXO: M, LIMITE DE CREDITO: 70000, VOLUMEN DE COMPRA: 160000, PRIMERA COMPRA: Sí.

DNI: 5576228758, NOMBRE: Patricia Olivera, DIRECCION: Pachuca 75, BARRIO: Condesa, CIUDAD: Ciudad de México, ESTADO: EM, CP: 88192029, 
FECHA DE NACIMIENTO: 1995-01-14 , EDAD: 25, SEXO: F, LIMITE DE CREDITO: 70000, VOLUMEN DE COMPRA: 160000, PRIMERA COMPRA: Sí.
*/

USE VENTAS_JUGOS;

SELECT * FROM tb_cliente;

INSERT INTO tb_cliente VALUES
('9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', 'Barrio del Niño Jesús', 'Ciudad de México', 'EM' , '22002002',  19950107,  25, 'M', 
  150000, 250000, 1);
  
  INSERT INTO tb_cliente VALUES
('7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', 'Carola', 'Ciudad de México', 'EM', '88202912', 19920125, 29, 'M', 
 70000, 160000, 1),
 ('5576228758', 'Patricia Olivera', 'Pachuca 75', 'Condesa', 'Ciudad de México', 'EM', '88192029', 19950114 , 25, 'F', 
 70000, 160000, 1);


