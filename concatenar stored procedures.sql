/* SINTAXIS PARA NOMBRAR LOS STORED PROCEDURES
DEBE DE TENER LETRAS, NUMEROS, $ Y _ .
TAMAÑO MAXIMO DE 64 CARACTERES.
NOMBRE DEBE SER UNICO.
CASE SENSITIVE 
*/




CALL hola_mundo;

call muestra_numero;
/*
USE `jugos_ventas`;
DROP procedure IF EXISTS `muestra_numero`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `muestra_numero` ()
BEGIN
SELECT (9+5)*2 AS RESULTADO;
END$$

DELIMITER ;

*/

call concatenar;
/*
USE `jugos_ventas`;
DROP procedure IF EXISTS `concatenar`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `concatenar` ()
BEGIN
SELECT concat('hOLA mundo', '  ', '!!! !') AS RESULTADO;
END$$

DELIMITER ;
*/

call concatenar_con_comentarios;


/*
USE `jugos_ventas`;
DROP procedure IF EXISTS `concatenar_con_comentarios`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `concatenar_con_comentarios` ()
BEGIN
/*
Este es un ejemplo de comentario
al interior de un procedure
*/
-- asi se comenta un stored procedure
# Asi tambien.

/*select CONCAT ("Hola a todos!!", ' ', 'Este procedure concatena strings');
END$$
*/

call concatenar_2;