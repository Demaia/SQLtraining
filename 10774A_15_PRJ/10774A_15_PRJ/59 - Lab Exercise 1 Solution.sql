---------------------------------------------------------------------
-- LAB 15
--
-- Exercise 1
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------

SELECT name, dbid, crdate 
FROM sys.sysdatabases;

---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------

SELECT 
  object_id, name, schema_id, type, type_desc, create_date, modify_date
FROM sys.objects;

SELECT DISTINCT 
	type, type_desc
FROM sys.objects
ORDER BY type_desc;

SELECT 
  object_id, name, schema_id, type, type_desc, create_date, modify_date
FROM sys.objects
WHERE type = N'U';

---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

SELECT 
  object_id, name, SCHEMA_NAME(schema_id) AS schemaname, type, type_desc, create_date, modify_date
FROM sys.tables;

SELECT 
  object_id, name, SCHEMA_NAME(schema_id) AS schemaname, type, type_desc, create_date, modify_date
FROM sys.views;

---------------------------------------------------------------------
-- Task 4
---------------------------------------------------------------------

SELECT
	c.name AS columnname, c.column_id, c.system_type_id, c.max_length, c.precision, c.scale, c.collation_name
FROM sys.columns AS c
WHERE object_id = OBJECT_ID('Sales.Customers')
ORDER BY c.column_id;



