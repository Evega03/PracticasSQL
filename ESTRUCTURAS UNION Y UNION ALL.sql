SELECT DISTINCT BARRIO FROM tabla_de_clientes;

SELECT DISTINCT BARRIO FROM tabla_de_VENDEDORES;

SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO FROM tabla_de_VENDEDORES;

SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION ALL
SELECT DISTINCT BARRIO FROM tabla_de_VENDEDORES;

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO FROM tabla_de_VENDEDORES;

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO_X FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO_VENDEDOR FROM tabla_de_VENDEDORES;

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO_CLIENTE, DNI FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO_VENDEDOR, MATRICULA FROM tabla_de_VENDEDORES;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.nombre, VACACIONES
FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO
UNION
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.nombre, VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;