---------------------------------------------------------------------
-- LAB 15
--
-- Exercise 2
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------

SELECT 
	DB_ID() AS databaseid,
	DB_NAME(DB_ID()) AS databasename,
	USER_NAME() as currusername;

---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------

SELECT 
	name, 
	OBJECT_NAME(object_id) AS tablename,
	OBJECT_SCHEMA_NAME(object_id) AS schemaname
FROM sys.columns;

---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

SELECT
	c.name AS columnname,
	OBJECT_NAME (c.object_id) AS tablename,
	OBJECT_SCHEMA_NAME(c.object_id) AS schemaname
FROM sys.columns AS c
WHERE 
	c.name LIKE N'%name%'
	AND OBJECTPROPERTY(c.object_id, N'IsUserTable') = 1;

---------------------------------------------------------------------
-- Task 4
---------------------------------------------------------------------

SELECT OBJECT_DEFINITION(OBJECT_ID(N'Sales.CustOrders'));

