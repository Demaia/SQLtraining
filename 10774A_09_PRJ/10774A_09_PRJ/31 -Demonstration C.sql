-- Demonstration C

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2: Using the HAVING clause
-- Select and execute the following query to show
-- The use of a HAVING clause. This query has no HAVING clause:
SELECT custid, COUNT(*) AS count_orders
FROM Sales.Orders
GROUP BY custid;

-- This query uses a HAVING clause to filter out customers with fewer than 10 orders
SELECT custid, COUNT(*) AS count_orders
FROM Sales.Orders
GROUP BY custid
HAVING COUNT(*) >= 10

-- Review the logical order of operations
-- the column alias for COUNT(*) hasn't been processed yet
-- when HAVING refers to it
-- THIS WILL FAIL
SELECT custid, COUNT(*) AS count_orders
FROM Sales.Orders
GROUP BY custid
HAVING count_orders >= 10

-- Select and execute the following queries to show
-- difference between WHERE filter and HAVING filter:
-- The following query uses a WHERE clause to filter
-- orders

SELECT COUNT(*) AS cnt, AVG(qty) AS [avg_qty]
FROM Production.Products AS p
JOIN Sales.OrderDetails AS od
	ON p.productid = od.productid
WHERE od.qty > 20
GROUP BY p.categoryid;

-- This query uses a HAVING clause to filter groups
-- with an average quantity > 20
SELECT COUNT(*) AS cnt, AVG(qty) AS [avg_qty]
FROM Production.Products AS p
JOIN Sales.OrderDetails AS od
	ON p.productid = od.productid
GROUP BY p.categoryid
HAVING AVG(qty) > 20;

-- Select and execute the following query to show
-- All customers and how many orders they have placed
-- 89 rows - note custid 13
SELECT c.custid, COUNT(*) AS cnt
FROM Sales.Customers AS c
JOIN Sales.Orders AS o
ON c.custid = o.custid
GROUP BY c.custid
ORDER BY cnt DESC;

-- Use HAVING to filter only customers who have placed more than one order
SELECT c.custid, COUNT(*) AS cnt
FROM Sales.Customers AS c
JOIN Sales.Orders AS o
ON c.custid = o.custid
GROUP BY c.custid
HAVING COUNT(*) > 1
ORDER BY cnt DESC;

-- Select and execute the following query to show
-- All products and in how many orders they appear
-- 77 rows, note bottom of list
SELECT p.productid, COUNT(*) AS cnt
FROM Production.Products AS p
JOIN Sales.OrderDetails AS od
ON p.productid = od.productid
GROUP BY p.productid
ORDER BY cnt DESC;

-- Use HAVING to filter only products which have been ordered 10 or more times:
-- 71 rows returned
SELECT p.productid, COUNT(*) AS cnt
FROM Production.Products AS p
JOIN Sales.OrderDetails AS od
ON p.productid = od.productid
GROUP BY p.productid
HAVING COUNT(*) >= 10
ORDER BY cnt DESC;