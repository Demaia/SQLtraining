-- Demonstration B

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2: Using GROUP BY
-- Select this query and execute it to
-- show orders by employee from high to low count
-- (this is the source data before groups created)
SELECT empid, COUNT(*) AS cnt
FROM Sales.Orders
GROUP BY empid
ORDER BY cnt desc;

-- Select this query and execute it to
-- show customer orders per customer and per year 
-- for the top sales rep (per previous query)
SELECT custid, YEAR(orderdate) AS [year], COUNT(*) AS cnt
FROM Sales.Orders
WHERE empid = 4
GROUP BY custid, YEAR(orderdate);

-- Step 3: Workflow of grouping
-- Source queries for workflow slide:
SELECT orderid, empid, custid
FROM Sales.Orders;

SELECT orderid, empid, custid
FROM Sales.Orders
WHERE custid <>3;

SELECT empid, COUNT(*)
FROM Sales.Orders
WHERE CUSTID <>3
GROUP BY empid;

-- Step 4: Using Aggregates with GROUP BY
-- Show an aggregate on the column used to group
SELECT custid, COUNT(*) AS cnt
FROM Sales.Orders
GROUP BY custid;

-- Show an aggregate on a column not in GROUP BY list
SELECT productid, MAX(qty) AS largest_order
FROM Sales.OrderDetails
GROUP BY productid;