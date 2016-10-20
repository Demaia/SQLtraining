-- Demonstration A

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO
-- Step 1: Scalar subqueres:
-- Select this query and execute it to
-- obtain most recent order
SELECT MAX(orderid) AS lastorder
FROM Sales.Orders;

-- Select this query and execute it to
-- find details in Sales.OrderDetails
-- for most recent order
SELECT orderid, productid, unitprice, qty
FROM Sales.OrderDetails
WHERE orderid = 
	(SELECT MAX(orderid) AS lastorder
	FROM Sales.Orders);

-- THIS WILL FAIL, since
-- subquery returns more than 
-- 1 value
SELECT orderid, productid, unitprice, qty
FROM Sales.OrderDetails
WHERE orderid = 
	(SELECT orderid AS O
	FROM Sales.Orders
	WHERE empid =2);

-- Step 3: Multi-valued subqueries 
-- Select this query and execute it to	
-- return order info for customers in Mexico
SELECT custid, orderid
FROM Sales.orders
WHERE custid IN (
	SELECT custid
	FROM Sales.Customers
	WHERE country = N'Mexico');

-- Same result expressed as a join:
SELECT c.custid, o.orderid
FROM Sales.Customers AS c JOIN Sales.Orders AS o
ON c.custid = o.custid
WHERE c.country = N'Mexico';
