-- Demonstration B

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2: Demonstrate the use of the FOR XML RAW clause
-- Select and execute the following queries to illustrate the use of
-- FOR XML RAW
SELECT orderid, custid, orderdate, shipcountry
FROM Sales.Orders
FOR XML RAW;

-- Select and execute the following query to illustrate the use of
-- adding a named element to row
SELECT orderid, custid, orderdate, shipcountry
FROM Sales.Orders
FOR XML RAW('Order');

-- Select and execute the following query to illustrate the use of
-- FOR XML RAW with ELEMENTS instead of ATTRIBUTES
SELECT orderid, custid, orderdate, shipcountry
FROM Sales.Orders
FOR XML RAW, ELEMENTS;

-- Select and execute the following query to illustrate the use of
-- FOR XML RAW with ELEMENTS and named row
SELECT orderid, custid, orderdate, shipcountry
FROM Sales.Orders
FOR XML RAW('Order'), ELEMENTS;

-- Select and execute the following query to illustrate the use of
-- FOR XML RAW with a named root element and named row
SELECT orderid, custid, orderdate, shipcountry
FROM Sales.Orders
FOR XML RAW('Order'), ROOT('Orders');

-- Step 3: Demonstrate the use of the FOR XML AUTO clause
-- Select and execute the following query to illustrate the use of
-- FOR XML AUTO
SELECT orderid, custid, orderdate, shipcountry
FROM Sales.Orders
FOR XML AUTO;

-- Cannot add named element to row
-- NOTE: THIS WILL FAIL.
SELECT orderid, custid, orderdate, shipcountry
FROM Sales.Orders
FOR XML AUTO('Order');

-- Step 4: Demonstrate the use of FOR XML AUTO with ELEMENTS instead of ATTRIBUTES
SELECT orderid, custid, orderdate, shipcountry
FROM Sales.Orders
FOR XML AUTO, ELEMENTS;

-- Select and execute the following query to illustrate the use of
-- FOR XML AUTO with ELEMENTS and a named root element
SELECT orderid, custid, orderdate, shipcountry
FROM Sales.Orders
FOR XML AUTO, ELEMENTS, ROOT('Orders');

-- Select and execute the following query to illustrate the use of
-- Using XPath to control formatting
SELECT orderid "@OrderID", custid "CustID", orderdate "OrdDate"
FROM Sales.Orders
FOR XML PATH('Order'), ELEMENTS, ROOT('Orders');

-- Compare a JOIN query using RAW versus AUTO
SELECT c.custid, c.companyname, c.country, o.orderid, o.orderdate
FROM Sales.Customers AS c
	JOIN Sales.Orders AS o
	ON c.custid = o.custid
FOR XML RAW, ELEMENTS, ROOT('CustomerOrders')

-- Select and execute the following query to illustrate the use of
-- FOR XML AUTO on a JOIN query
SELECT c.custid, c.companyname, c.country, o.orderid, o.orderdate
FROM Sales.Customers AS c
	JOIN Sales.Orders AS o
	ON c.custid = o.custid
FOR XML AUTO, ELEMENTS, ROOT('CustomerOrders')

-- Select and execute the following query to illustrate the use of
-- Including element placeholders for NULL
SELECT custid, region, country
FROM Sales.Customers
WHERE country IN('Mexico', 'Brazil')
FOR XML AUTO, ELEMENTS XSINIL, ROOT('Customers');


