SELECT * FROM tabla_de_clientes;

SELECT DNI, FECHA_DE_NACIMIENTO FROM tabla_de_clientes; /*where DNI = '1471156710';*/

call edad_clientes (5840119709);


SELECT * FROM facturas;
SELECT * FROM facturas WHERE FECHA_VENTA = 20150101;
select fecha_venta, count(*) as numero_ventas from facturas where fecha_venta = '2017-01-01';

call evaluacion_facturas(20190101);