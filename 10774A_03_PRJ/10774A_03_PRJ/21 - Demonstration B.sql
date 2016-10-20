-- Demonstration B

-- Step 1: Change database context to the TSQL2012 database (on-premise only)
-- If using SQL Azure, open a new query window with the connection pointing to the TSQL2012 database

USE TSQL2012;
GO

-- Step 2: Querying a table	 
-- Select and run the completed query to show results
-- Point out that there are 9 rows returned
SELECT empid, YEAR(orderdate) AS orderyear, COUNT(*) as numorders
FROM Sales.Orders
WHERE custid =71
GROUP BY empid,YEAR(orderdate)
HAVING COUNT(*) > 1
ORDER BY empid, orderyear;

-- Step 3: Querying a table	 
-- Select and run the partial query to show results
-- Point out the use of the * as a placeholder since FROM can't be run by itself.
-- Point out that there are 830 rows returned

SELECT *
FROM Sales.Orders;

-- Step 4: Querying a table	 
-- Select and run the partial query to show results
-- Point out that there are 31 rows returned

SELECT * 
FROM Sales.Orders
WHERE custid =71;

-- Step 5: Querying a table	with an invalid SELECT statement
-- Select and run the partial query to show results
-- THIS WILL CAUSE AN ERROR DUE TO THE SELECT LIST

SELECT *
FROM Sales.Orders
WHERE custid =71
GROUP BY empid, YEAR(orderdate);

-- Step 6: Querying a table	 
-- Select and run the partial query to show results
-- Point out that the * in the SELECT list has been 
-- replaced with columns that are either in the GROUP BY expression
-- or are aggregate functions (this will be explained further in Module 9
-- Point out that there are 16 rows returned

SELECT empid, YEAR(orderdate) AS orderyear, COUNT(*) as numorders
FROM Sales.Orders
WHERE custid =71
GROUP BY empid,YEAR(orderdate);

-- Step 7: Querying a table	 
-- Select and run the partial query to show results
-- Point out that a HAVING clause further filters the results
-- based on the groups
-- Point out that there are 9 rows returned and there is no apparently sort order

SELECT empid, YEAR(orderdate) AS orderyear, COUNT(*) as numorders
FROM Sales.Orders
WHERE custid =71
GROUP BY empid,YEAR(orderdate)
HAVING COUNT(*) > 1;

-- Step 8: Querying a table	 
-- Select and run the completed query to show results
-- Point out that the ORDER BY clause further has sorted the results
-- Point out that there are 9 rows returned 

SELECT empid, YEAR(orderdate) AS orderyear, COUNT(*) as numorders
FROM Sales.Orders
WHERE custid =71
GROUP BY empid,YEAR(orderdate)
HAVING COUNT(*) > 1
ORDER BY empid, orderyear;
