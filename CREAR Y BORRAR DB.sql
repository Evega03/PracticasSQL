/*CREANDO UNA BASE DE DATOS
CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name
	[create_option]...
create_option: [DEFAULT]{
	CHARACTER SET [=] charset_name
|	COLLATE [=] collation_name
|	ENCRYTION [=] {'Y' | 'N'}    
}

DROP {DATABASE | SCHEMA} [IF EXISTS] db_name}    
*/

create database  ventas_jugos;
create schema if not exists ventas_jugos2;
/* 
si no existiera: 
create schema if not exists  ventas_jugos2;
*/

DROP database ventas_jugos2;
create schema if not exists ventas_jugos2 default charset utf32;
/*CREATE SCHEMA `ventas_jugos2` DEFAULT CHARACTER SET greek ;*/
