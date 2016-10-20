-- Demonstration A

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2: Using built-in Aggregate functions

-- Select and execute the following query to show
-- the use of aggregate functions in the SELECT clause:

-- THIS WILL FAIL, since some columns are not aggregated
-- and there is no explicit GROUP BY clause
SELECT orderid, productid, AVG(unitprice), MAX(qty), MAX(discount)
FROM Sales.OrderDetails;

-- Select and execute the following query to show
-- This will succeed and return the AVG/MIN/MAX of all rows:
SELECT AVG(unitprice) AS avg_price, MIN(qty)AS min_price, MAX(discount) AS max_discount
FROM Sales.OrderDetails;

-- Select and execute the following query to show
-- The use of aggregates with non-numeric data types:
SELECT MIN(companyname) AS first_customer, MAX(companyname) AS last_customer
FROM Sales.Customers;

-- Select and execute the following query to show
-- The use of aggregates with non-numeric data types:
SELECT MIN(orderdate)AS earliest,MAX(orderdate) AS latest
FROM Sales.Orders;

-- Select and execute the following query to show
-- the use of DISTINCT with aggregate functions:
SELECT empid, YEAR(orderdate) AS orderyear,
COUNT(custid) AS all_custs,
COUNT(DISTINCT custid) AS unique_custs
FROM Sales.Orders
GROUP BY empid, YEAR(orderdate);

-- Select and execute the following query to show
-- the impact of NULL on aggregate functions
-- First, show the existence of NULLs in Sales.Orders
SELECT DISTINCT shippeddate
FROM Sales.Orders
ORDER BY shippeddate;

-- Then show that MIN, MAX and COUNT ignore NULL, COUNT(*) doesn't.
-- Show the messages tab in the SSMS results pane
-- for Warning: Null value is eliminated by an aggregate or other SET operation.
SELECT MIN(shippeddate) AS earliest, MAX(shippeddate) AS latest, COUNT(shippeddate) AS [count_shippeddate], COUNT(*) AS COUNT_all
FROM Sales.Orders;

-- Step 3: (optional) The following section may be used to illustrate
-- the behavior of NULLs in aggregate functions:

-- Create an example table
CREATE TABLE dbo.t1(
	c1 INT IDENTITY NOT NULL PRIMARY KEY,
	c2 INT NULL);
-- Populate it	
INSERT INTO dbo.t1(c2)
VALUES(NULL),(10),(20),(30),(40),(50);
-- View the contents. Note the NULL
SELECT c1, c2
FROM dbo.t1;
-- Execute this query to compare the behavior of AVG to an aritmetic average (SUM/COUNT)
SELECT SUM(c2) AS sum_nonnulls, COUNT(*)AS count_all_rows, COUNT(c2)AS count_nonnulls, AVG(c2) AS [avg], (SUM(c2)/COUNT(*))AS arith_avg
FROM dbo.t1;

-- Execute this query to demonstrate replacement of NULL before aggregating
-- Create test table
CREATE TABLE dbo.t2
    (
      c1 INT IDENTITY NOT NULL PRIMARY KEY,
      c2 INT NULL
    ) ;
GO
-- Populate test table
INSERT INTO dbo.t2
VALUES(1),(10),(1),(NULL),(1),(10),(1),(NULL),(1),(10),(1),(10);
GO
-- Show table contents
SELECT c1, c2
FROM dbo.t2;
-- Show standard AVG versus replacement of NULL with zero
SELECT AVG(c2) AS AvgWithNULLs, AVG(COALESCE(c2,0)) AS AvgWithNULLReplace
FROM dbo.t2;

-- clean up
DROP TABLE dbo.t1;
DROP TABLE dbo.t2;