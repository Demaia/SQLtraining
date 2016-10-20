---------------------------------------------------------------------
-- LAB 20
--
-- Exercise 1
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------

IF OBJECT_ID('Sales.TempOrders') IS NOT NULL 
	DROP TABLE Sales.TempOrders;

SELECT
	orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry
INTO Sales.TempOrders
FROM Sales.Orders AS o
CROSS JOIN dbo.Nums AS n
WHERE n.n <= 120;


---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------
SELECT orderid, custid, orderdate
FROM Sales.TempOrders;

---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

SELECT TOP (1) orderid, custid, orderdate
FROM Sales.TempOrders;

---------------------------------------------------------------------
-- Task 4
---------------------------------------------------------------------
SELECT orderid, custid, orderdate
FROM Sales.TempOrders;

SELECT TOP (1) orderid, custid, orderdate
FROM Sales.TempOrders;
