call cursor_luping;
select nombre from tabla_de_clientes;



/*
Hallando el valor total del crédito
PRÓXIMA ACTIVIDAD

Crea un Stored Procedure usando un cursor para hallar el valor total de todos los créditos de todos los clientes. Llamaremos este SP como: limite_creditos.

Tips:

Declara dos variables: Una que recibe el límite de crédito del cursor y otra el límite de crédito total; haz un loop en el cursor y ve sumando en la variable límite de crédito total el valor del límite de cada cliente; Exhibe el valor total del límite.

VER OPINIÓN DEL INSTRUCTOR
Opinión del instructor

DELIMITER $$
CREATE PROCEDURE `limite_creditos`()
BEGIN
DECLARE limite_credito FLOAT;
DECLARE limite_credito_acumulado FLOAT;
DECLARE fin_cursor INT;
DECLARE c CURSOR FOR SELECT LIMITE_DE_CREDITO FROM tabla_de_clientes;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin_cursor = 1;
SET fin_cursor = 0;
SET limite_credito_acumulado = 0;
SET limite_credito = 0;
OPEN c;
WHILE fin_cursor = 0
DO
FETCH c INTO limite_credito;
IF fin_cursor = 0 
THEN SET limite_credito_acumulado = limite_credito_acumulado + limite_credito;
END IF;
END WHILE;
SELECT limite_credito_acumulado;
CLOSE c;
END $$


*/