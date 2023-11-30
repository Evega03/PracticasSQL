/* Declarando variables.

DECLArE <nombre de la variable> <datatype> DEFAULT <value>;
Datatype es obligatorio. Default es opcional.
debe tener letras, numeros, $ y ' '. Se ueden declarar varias siempre y cuando sean del mismo tipo.
Tamaño maximo de 255 caracteres.
Nombre debe ser unico en el SP - Case Sensitive.
Si no tiene default, sera NULL.
La linea de declaracion finaliza con ';'.

Algunos tipos de variables.
VARCHAR(n) Caracteres de texto con tamaño maximo de n caracteres.
INTEGER. Tipo entero.
DECIMAL(p,s) Variable decimal con p digitos y s casillas decimales.
DATE para almacenar una fecha.
TIMESTAMP Para almacenar fecha y horario.



*/

call exhibir_variable;

call declaracion;

call sin_declaracion;

call atribuir_valores;

call informacion_clientes;
