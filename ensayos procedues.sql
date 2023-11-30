call manipulacion;
call incluir_producto;

SELECT * from tabla_de_clientes;
call cambiar_edades;

SELECT * from tabla_de_clientes;

SELECT * from tabla_de_productos;
CALL incluir_producto_parametros ('9990999', 'Sabor Merol', '700 ml', 'Uva negra', 'Botella vidrio', 6.66);


SELECT * FROM tabla_de_vendedores;
call cambio_comision;

SELECT * FROM tabla_de_vendedores;
CALL cambio_comision_profe(0.7);
SELECT * FROM tabla_de_vendedores;
CALL cambio_comision_profe(0.8);
SELECT * FROM tabla_de_vendedores;
/*
DELIMITER $$
CREATE PROCEDURE `reajuste_comision`(vporcentaje FLOAT)
BEGIN
UPDATE tabla_de_vendedores SET PORCENTAJE_COMISION =  PORCENTAJE_COMISION * (1 + vporcentaje);
END $$
*/