-- Demonstration D

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2: Simple CASE Expression
--Select and execute the following query to show the use of a simple CASE expression
--to convert a flag-type column to a label.
SELECT productid, productname, unitprice, 
	CASE discontinued
		WHEN 0 THEN 'Active'
		WHEN 1 THEN 'Discontinued'
	END AS status
FROM Production.Products;

-- Step 3: Simple CASE Expression
--Select and execute the following query to show the use of a simple CASE expression
--to replace an id with a name. Point out that a JOIN to a reference table will be 
--a better solution.

SELECT orderid, custid, orderdate,
	CASE empid
		WHEN 1 THEN 'Buck'
		WHEN 2 THEN 'Cameron'
		WHEN 3 THEN 'Davis'
		WHEN 4 THEN 'Dolgopyatova'
		WHEN 5 THEN 'Funk'
		WHEN 6 THEN 'King'
		WHEN 7 THEN 'Lew'
		WHEN 8 THEN 'Peled'
		WHEN 9 THEN 'Suurs'
		ELSE 'Unknown Sales Rep'
	END AS salesrep
FROM Sales.Orders;