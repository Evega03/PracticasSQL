USE VENTAS_JUGOS;
/*SI QUIERES VER LO QUE HAY EN OTRA TABLA PUEDE SER ASI:*/
SELECT * FROM JUGOS_VENTAS.TABLA_DE_PRODUCTOS;
/*SELECCIONAS AQUI LOS DATOS DE LA TABLA ORIGINAL. Y LE PONES LOS NOMBRES COMO VIENEN  EN LA NUEVA TABLA*/
SELECT CODIGO_DEL_PRODUCTO AS CODIGO, NOMBRE_DEL_PRODUCTO AS DESCRIPCION, 
SABOR, TAMANO AS TAMAÑO, ENVASE, PRECIO_DE_LISTA AS PRECIO_LISTA
 FROM JUGOS_VENTAS.TABLA_DE_PRODUCTOS
 WHERE CODIGO_DEL_PRODUCTO NOT IN (SELECT CODIGO FROM TB_PRODUCTO); /*DONDE TODO LO DE CODIGO DE PRODUCTO NO ESTE EN LA COLUMA CODIGO DE TB_PRODUCTO*/
 /*insertarmos en tb_producto*/
 INSERT INTO tb_producto
 SELECT CODIGO_DEL_PRODUCTO AS CODIGO, NOMBRE_DEL_PRODUCTO AS DESCRIPCION, 
SABOR, TAMANO AS TAMAÑO, ENVASE, PRECIO_DE_LISTA AS PRECIO_LISTA
 FROM JUGOS_VENTAS.TABLA_DE_PRODUCTOS
 WHERE CODIGO_DEL_PRODUCTO NOT IN (SELECT CODIGO FROM TB_PRODUCTO); 
 
 select * from tb_producto;