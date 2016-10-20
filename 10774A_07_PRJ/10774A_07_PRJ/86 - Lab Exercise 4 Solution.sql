---------------------------------------------------------------------
-- LAB 07
--
-- Exercise 4
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------

SELECT
	contactname,
	SUBSTRING(contactname, 0, CHARINDEX(N',', contactname)) AS lastname
FROM Sales.Customers;

---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------

SELECT
	REPLACE(contactname, ',', '') AS newcontactname,
	SUBSTRING(contactname, CHARINDEX(N',', contactname)+1, LEN(contactname)-CHARINDEX(N',', contactname)+1) AS firstname
FROM Sales.Customers;

---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

SELECT 
	custid,
	N'C' + RIGHT(REPLICATE('0', 5) + CAST(custid AS VARCHAR(5)), 5) AS custnewid
FROM Sales.Customers;

-- new function in SQL Server 2012
SELECT
	FORMAT(custid, N'\C00000')
FROM Sales.Customers;

---------------------------------------------------------------------
-- Task 4
---------------------------------------------------------------------

SELECT
	contactname,
	LEN(contactname) - LEN(REPLACE(contactname, 'a', '')) AS numberofa
FROM Sales.Customers
ORDER BY numberofa DESC;

