-- Demonstration A

-- Step 1: Change database context to the TEMPDB database (on-premise only)

USE TSQL2012;
GO

-- Step 2: Create the dbo.orders table

-- Select and execute the following query to illustrate
-- the use of a DDL command.
-- Point out the use of GO to delimit the batch.

CREATE TABLE dbo.orders
	( 
		orderid int, 
		custid int, 
		orderdate date,
		quantity int,
		amount money
	); 
	GO 

-- Step 3: Inserting values into a table	

-- Select and execute the following query to illustrate
-- a DML command.
-- Point out the use of the SYSDATETIME function and the 
-- row constructors.

INSERT INTO dbo.orders
VALUES(101,774,SYSDATETIME(),100,99.98),(102,775,SYSDATETIME(),32,49.99);

-- Step 4: Querying a table	

-- Select and execute the following query to illustrate 
-- the use of a DML command.
-- Point out that there are 9 rows returned.

SELECT orderid, custid, orderdate, quantity, amount
FROM dbo.orders;

-- Step 5: Querying a table	with expressions

-- Select and execute the following query to illustrate 
-- the use of an expression in the SELECT clause.
-- Note that the use of calculated columns and aliases
-- will be covered in module 3.

SELECT orderid, custid, orderdate, quantity, amount, (quantity * amount) as total_amount
FROM dbo.orders;

-- Step 6: Querying a table	with a WHERE clause

-- Select and execute the following query to illustrate 
-- the use of a comparison operator in the WHERE clause.
-- Note that the use of WHERE clauses
-- will be covered in module 5.

SELECT orderid, custid, orderdate, quantity, amount
FROM dbo.orders
WHERE quantity > 50;

-- Step 7: Querying a table	with a function in the WHERE clause

-- Select and execute the following query to illustrate 
-- the use of a date function in the WHERE clause.
-- Note that the use of WHERE clauses
-- will be covered in module 5 and date functions will
-- be covered in module 6.
-- Point out that SYSDATETIME() evaluates to the current date and time.
-- All rows should be selected.

SELECT orderid, custid, orderdate, quantity, amount
FROM dbo.orders
WHERE orderdate < SYSDATETIME();

-- Step 8: Querying a table	with a variable parameter 

-- Select and execute the following query to illustrate 
-- the use of defined in the batch, then used in the WHERE clause.
-- Note that the use of WHERE clauses will be covered in module 5.

DECLARE @customerid int = 775

SELECT orderid, custid, orderdate, quantity, amount
FROM dbo.orders
WHERE custid = @customerid;


-- Cleanup task if needed.
-- If desired, point out IF statement and use of DDL.
IF OBJECT_ID('dbo.orders') IS NOT NULL DROP TABLE dbo.orders;
