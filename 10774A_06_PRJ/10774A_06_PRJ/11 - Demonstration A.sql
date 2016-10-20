-- Demonstration A

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2: Use ORDER BY to sort results 
-- Sorting by column name
SELECT orderid, custid, orderdate
FROM Sales.Orders
ORDER BY orderdate;

-- Step 3: Use ORDER BY to sort results
-- Sorting by column alias name
SELECT orderid, custid, YEAR(orderdate) AS orderyear
FROM Sales.Orders
ORDER BY orderyear DESC;

-- Step 4: Use ORDER BY to sort results
-- Sorting by column name in descending order
SELECT orderid, custid, orderdate
FROM Sales.Orders
ORDER BY orderdate DESC;

-- Step 5: Use ORDER BY to sort results
-- Changing sort order for multiple columns
SELECT hiredate, firstname, lastname
FROM HR.Employees
ORDER BY hiredate DESC, lastname ASC;