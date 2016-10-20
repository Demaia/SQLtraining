---------------------------------------------------------------------
-- LAB 04
--
-- Exercise 4
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------

SELECT
	P.categoryid, P.productname
FROM Production.Products AS P;

---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------

SELECT
	P.categoryid, P.productname,
	CASE 
		WHEN P.categoryid = 1 THEN 'Beverages'
		WHEN P.categoryid = 2 THEN 'Condiments'
		WHEN P.categoryid = 3 THEN 'Confections'
		WHEN P.categoryid = 4 THEN 'Dairy Products'
		WHEN P.categoryid = 5 THEN 'Grains/Cereals'
		WHEN P.categoryid = 6 THEN 'Meat/Poultry'
		WHEN P.categoryid = 7 THEN 'Produce'
		WHEN P.categoryid = 8 THEN 'Seafood'
		ELSE 'Other'
	END AS categoryname
FROM Production.Products AS P;

---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

SELECT
	P.categoryid, P.productname,
	CASE 
		WHEN P.categoryid = 1 THEN 'Beverages'
		WHEN P.categoryid = 2 THEN 'Condiments'
		WHEN P.categoryid = 3 THEN 'Confections'
		WHEN P.categoryid = 4 THEN 'Dairy Products'
		WHEN P.categoryid = 5 THEN 'Grains/Cereals'
		WHEN P.categoryid = 6 THEN 'Meat/Poultry'
		WHEN P.categoryid = 7 THEN 'Produce'
		WHEN P.categoryid = 8 THEN 'Seafood'
		ELSE 'Other'
	END AS categoryname,
	CASE 
		WHEN P.categoryid IN (1, 7, 8) THEN 'Campaign Products'
		ELSE 'Non-Campaign Products' 
	END AS iscampaign
FROM Production.Products AS P;