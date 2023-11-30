SELECT * FROM tabla_de_productos;

/*
PRECIO >= 12 PRODUCTO COSTOSO
PRECIO >= 7 Y PRECIO < 12 PRODUCTO ASEQUIBLE
PRECIO < 7 PRODUCTO BARATO
*/

SELECT PRECIO_DE_LISTA FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = '1000800';

call precio_producto(1000800);
call precio_producto(1013793);
call precio_producto(1022450);
call precio_producto(1096818);
call precio_producto(812829);

call comparacion_ventas(20160201,20210201);