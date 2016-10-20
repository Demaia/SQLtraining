-- Demonstration C

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2: Column Aliases
-- Select and execute the following query to show the use of column aliases
-- in the SELECT clause

SELECT empid as employeeid, firstname as given, lastname as surname
FROM HR.Employees;

-- Step 3: Column Aliases
-- Select and execute the following query to show the use of column aliases
-- to label calculated columns in the SELECT clause

SELECT productid, productname, unitprice, (unitprice * 1.1) as markup
FROM Production.Products;


-- Step 4: Column Aliases
-- Select and execute the following query to show the use of column aliases
-- to label calculated columns in the SELECT clause

SELECT empid, lastname as surname, YEAR(hiredate) as yearhired
FROM HR.Employees;

-- Step 5: Table Aliases
-- Select and execute the following query to show the use of table aliases

SELECT SO.orderid, SO.orderdate, SO.empid
FROM Sales.Orders as SO;
