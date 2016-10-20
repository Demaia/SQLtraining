-- Demonstration B

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 1: Include duplicate rows
-- Select and execute the following query to show duplicate rows 
-- returned from the Sales.Orders table. You should see 830 rows.

SELECT custid, shipcity, shipcountry
FROM Sales.Orders;

-- Step 2: Filtering out duplicate rows
-- Select and execute the following query to show duplicate rows 
-- filtered from the Sales.OrderDetails table. You should see 89 rows.

SELECT DISTINCT custid, shipcity, shipcountry
FROM Sales.Orders;

-- Step 3: Select Disctinct
-- Select and execute the following query to show that DISTINCT across 
-- a column list that already includes a key will not filter duplicates. 
-- You should see 830 rows. 
-- Point out the orderid key column for the Sales.Orders table in the Object Explorer.
-- You may want to show the same statement without DISTINCT, for comparison.
SELECT DISTINCT orderid, custid, shipcity, shipcountry
FROM Sales.Orders;
