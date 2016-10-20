--  Demonstration Cc

--  Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2: Use TOP to filter results
-- Most recent 5 orders
-- This will ignore rows with duplicate order dates
-- which would otherwise qualify
-- compare this to next example
SELECT TOP (5) orderid, custid, orderdate
FROM Sales.Orders
ORDER BY orderdate DESC;

-- Step 3: Use TOP to filter results
-- Most recent 5 orders
-- This will include rows with duplicate order dates
-- which qualify as most recent
SELECT TOP (5) WITH TIES orderid, custid, orderdate
FROM Sales.Orders
ORDER BY orderdate DESC;

-- Step 4: Use TOP to filter results
-- Top ten percent of rowcount by orderdate
SELECT TOP (10) PERCENT orderid, custid, orderdate
FROM Sales.Orders
ORDER BY orderdate DESC;

-- Step 5: Use TOP to filter results
-- Point out that without an ORDER BY clause
-- SQL Server may return any 5 rows
SELECT TOP (5) orderid, custid, orderdate
FROM Sales.Orders;

-- Step 6: Use OFFSET/FETCH to filter results
-- OFFSET/FETCH examples
-- First 50 rows only as
-- alternative to SELECT TOP (50)
SELECT orderid, custid, empid, orderdate
FROM Sales.Orders
ORDER BY orderdate, orderid
OFFSET 0 ROWS FETCH FIRST 50 ROWS ONLY;

-- Step 7: Use OFFSET/FETCH to filter results
-- Skips first 50 rows, returns rows 51-100
SELECT orderid, custid, empid, orderdate
FROM Sales.Orders
ORDER BY orderdate, orderid DESC 
OFFSET 50 ROWS FETCH NEXT 50 ROWS ONLY;

