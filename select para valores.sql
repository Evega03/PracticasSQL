SELECT *  FROM tabla_de_productos;

select sabor from tabla_de_productos where CODIGO_DEL_PRODUCTO = "1078680";

call mostrar_sabor('1101035');

select * from facturas;
select * from facturas where fecha_venta = '2017-01-01';
select fecha_venta, count(*) as numero_ventas from facturas where fecha_venta = '2017-01-01';

call cantidad_facturas;
call mi_cantidad_facturas;


select  * from facturas where fecha_venta = '2017-01-01', COUNT (*) as n_facturas;
