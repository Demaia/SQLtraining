-- Demonstration B

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2: Use WHERE to filter results
-- WHERE clause referencing an expression defined in the SELECT clause
SELECT orderid, custid, YEAR(orderdate) AS ordyear
FROM Sales.Orders
WHERE YEAR(orderdate) = '2006';

-- Step 3: Use WHERE to filter results
-- WHERE clause fails when referencing expression by alias
-- NOTE THIS WILL CAUSE AN ERROR
SELECT orderid, custid, YEAR(orderdate) AS ordyear
FROM Sales.Orders
WHERE ordyear = '2006';

-- Step 4: Use WHERE to filter results
-- Simple WHERE clause
SELECT contactname, country
FROM Sales.Customers
WHERE country = N'Spain';

-- Step 5: Use WHERE to filter results
-- Filter by date
SELECT orderid, orderdate
FROM Sales.Orders
WHERE orderdate > '20070101';

-- Step 6: Use WHERE to filter results
-- Use of OR to check for multiple search values
SELECT custid, companyname, country
FROM Sales.Customers
WHERE country = N'UK' OR country = N'Spain';

-- Step 7: Use WHERE to filter results
-- Use IN operator to evaluate from a list
SELECT custid, companyname, country
FROM Sales.Customers
WHERE country IN (N'UK',N'Spain');

-- Step 8: Use WHERE to filter results
-- Use NOT operator with IN to provide an exclusion list
SELECT custid, companyname, country
FROM Sales.Customers
WHERE country NOT IN (N'UK',N'Spain');

-- Step 9: Use WHERE to filter results
-- Use logical operators to search within a range of dates
SELECT orderid, custid, orderdate
FROM Sales.Orders
WHERE orderdate > '20061231' AND orderdate < '20080101';

-- Step 10: Use WHERE to filter results
-- Use BETWEEN operator to search within a range of dates
SELECT orderid, custid, orderdate
FROM Sales.Orders
WHERE orderdate BETWEEN '20061231' AND '20080101';