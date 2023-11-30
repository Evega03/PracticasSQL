
SELECT CURDATE();

SELECT current_timestamp();

SELECT YEAR(current_timestamp());
SELECT month(current_timestamp());
SELECT monthname(current_timestamp());

select datediff(current_timestamp(), "1984-11-16") AS DIAS_TRANSCURRIDOS;

select current_timestamp() AS DIA_HOY, DATE_SUB(current_timestamp(), INTERVAL 1 MONTH) AS RESULTADO;



SELECT distinct FECHA_VENTA, 
dayname(FECHA_VENTA) AS DIA, monthname(FECHA_VENTA) AS MES, YEAR(FECHA_VENTA) AS AÑO
FROM facturas;

SELECT NOMBRE, TIMESTAMPDIFF(YEAR, FECHA_DE_NACIMIENTO, CURDATE()) AS    EDAD
, TIMESTAMPDIFF(MONTH, FECHA_DE_NACIMIENTO, CURDATE()) AS    EDAD_MESES
, timestampdiff(DAY, FECHA_DE_NACIMIENTO, CURDATE()) AS    EDAD_DIAS
FROM  tabla_de_clientes;

