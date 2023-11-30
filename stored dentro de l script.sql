/*CASE CONDICIONAL*/
/*- crear nuevo script. coppiar lo siguiente:*/
SELECT * FROM tabla_de_productos;

CALL precio_producto2('1096818');

/* */
/* */
/* */

/*CASE CONDICIONAL*/

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `v_producto_case` (vproducto varchar (20))

BEGIN
DECLARE vresultado VARCHAR (40);
DECLARE vprecio FLOAT;
SELECT PRECIO_DE_LISTA INTO vprecio FROM tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO = vproducto;

CASE
WHEN vprecio >=12 THEN SET vresultado = 'Producto costoso.';
WHEN vprecio >=7 AND vprecio < 12 THEN SET vresultado = 'Producto asequible.';
WHEN vprecio < 7 THEN SET vresultado = 'Producto barato';
END CASE;
SELECT vresultado;

END

$$

call v_producto_case('1042712');
/* */