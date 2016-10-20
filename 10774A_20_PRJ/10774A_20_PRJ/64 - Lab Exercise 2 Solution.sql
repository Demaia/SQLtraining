---------------------------------------------------------------------
-- LAB 20
--
-- Exercise 2
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------
CREATE CLUSTERED INDEX CX_Sales_TempOrders_orderdate ON Sales.TempOrders (orderdate ASC);

GO

SELECT orderid, custid, orderdate
FROM Sales.TempOrders
WHERE YEAR(orderdate) = 2007 AND MONTH(orderdate) = 6;


---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------
SET STATISTICS IO ON;

SELECT orderid, custid, orderdate
FROM Sales.TempOrders
WHERE YEAR(orderdate) = 2007 AND MONTH(orderdate) = 6;

---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

SELECT orderid, custid, orderdate
FROM Sales.TempOrders
WHERE orderdate >= '20070601' AND orderdate < '20070701';

---------------------------------------------------------------------
-- Task 4
---------------------------------------------------------------------

SELECT orderid, custid, orderdate
FROM Sales.TempOrders
WHERE YEAR(orderdate) = 2007 AND MONTH(orderdate) = 6;

SELECT orderid, custid, orderdate
FROM Sales.TempOrders
WHERE orderdate >= '20070601' AND orderdate < '20070701';

---------------------------------------------------------------------
-- Task 5
---------------------------------------------------------------------
SET STATISTICS IO OFF;

IF OBJECT_ID('Sales.TempOrders') IS NOT NULL 
	DROP TABLE Sales.TempOrders;
