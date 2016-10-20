-- Demonstration B

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO
-- Step 2: Use collation in a query
SELECT empid, lastname 
FROM HR.employees
WHERE lastname COLLATE Latin1_General_CS_AS = N'Funk';

-- Step 3: Use concatenation in a query
SELECT empid, lastname, firstname, firstname + N' ' + lastname AS fullname
FROM HR.Employees;

-- Step 4: Use string functions in a query
SELECT SUBSTRING('Microsoft SQL Server',11,3);
SELECT LEFT('Microsoft SQL Server',9);
SELECT RIGHT('Microsoft SQL Server',6);
SELECT LEN('Microsoft SQL Server     ');
SELECT DATALENGTH('Microsoft SQL Server     ');
SELECT CHARINDEX('SQL','Microsoft SQL Server');
SELECT REPLACE('Microsoft SQL Server Denali','Denali','2012');
SELECT UPPER('Microsoft SQL Server');
SELECT LOWER('Microsoft SQL Server');

-- Step 5: Use the LIKE predicate in a query
SELECT categoryid, categoryname, description
FROM Production.Categories
WHERE description LIKE 'Sweet%';

