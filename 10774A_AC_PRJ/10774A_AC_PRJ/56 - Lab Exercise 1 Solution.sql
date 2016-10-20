---------------------------------------------------------------------
-- LAB Appendix C
--
-- Exercise 1
---------------------------------------------------------------------

USE AdventureWorks2008R2;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------

SELECT 
	Title,
	DocumentSummary
FROM Production.Document
WHERE CONTAINS(DocumentSummary, N'Adventure');

---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------

SELECT 
	Title,
	DocumentSummary
FROM Production.Document
WHERE CONTAINS(DocumentSummary, N'"Adventure Works" AND pedals');


---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

SELECT 
	Title,
	DocumentSummary
FROM Production.Document
WHERE CONTAINS(DocumentSummary, N'component');

SELECT 
	Title,
	DocumentSummary
FROM Production.Document
WHERE FREETEXT(DocumentSummary, N'component');
