-- Demonstration A

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2: Simple SELECT query
-- Select and execute the following query to retrieve all columns, 
-- all rows from Sales.Shippers table
SELECT shipperid, companyname, phone
FROM Sales.Shippers;
GO

-- Step 3: Simple SELECT query
-- Select and execute the following query to retrieve all columns, 
-- all rows from Sales.Shippers table
SELECT *
FROM Sales.Shippers;
GO

-- Step 4: Simple SELECT query
-- Select and execute the following query to retrieve only empid, lastname, 
-- firstname, title columns from the HR.Employees table
SELECT empid, lastname, firstname, title
FROM HR.Employees;
  
-- Step 5: Simple SELECT query
-- Select and execute the following query to retrieve only productid, productname, 
-- categoryid, unitprice columns from the Production.Products table
SELECT productid, productname, categoryid, unitprice
FROM Production.Products;

-- Step 6: Simple SELECT query with calculated column
-- Select and execute the following query to manipulate columns from Production.Products table. 
-- Note the lack of name for the new calculated column.
SELECT productid, productname, unitprice, (unitprice * 1.1)
FROM Production.Products;

-- Step 7: Simple SELECT query with calculated column
-- Select and execute the following query to manipulate columns from the Sales.OrderDetails table. 
-- Note the lack of name for the new calculated column.
SELECT orderid, productid, unitprice, qty, (unitprice * qty)
FROM Sales.OrderDetails;
