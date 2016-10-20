--  Demonstration D

--  Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

--  Step 2: Returning results including NULL
-- NULL handling examples
-- Show the presence of NULL in the region column
-- and ORDER BY sorting NULL together and first
SELECT custid, city, region, country
FROM Sales.Customers
ORDER BY region;

--  Step 3: Handling NULLs
-- This query eliminates NULLs in region
SELECT custid, city, region, country
FROM Sales.Customers
WHERE region <> N'SP';

--  Step 4:  Handling NULLs
-- This query also eliminates NULLs in region
SELECT custid, city, region, country
FROM Sales.Customers
WHERE region = N'SP';

--  Step 5:  Handling NULLs
-- Show how testing for NULL with an equality will
-- return an empty result set
-- might be misinterpreted as an absence of NULLs
SELECT custid, city, region, country
FROM Sales.Customers
WHERE region = NULL;

--  Step 6:  Handling NULLs
-- This query explicitly includes only NULLs
SELECT custid, city, region, country
FROM Sales.Customers
WHERE region IS NULL;

--  Step 7:  Handling NULLs
-- This query explicitly excludes NULLs
SELECT custid, city, region, country
FROM Sales.Customers
WHERE region IS NOT NULL;

