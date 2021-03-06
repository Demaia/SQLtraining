-- Demonstration A

-- Step 1: Open a new query window to the AdventureWorks2008R2 database
USE AdventureWorks2008R2;
GO

-- Step 2: 
-- Run queries in this section if needed to create FT catalog and indexes before demonstrating queries
/*
-- Create FT Catalog if necessary
CREATE FULLTEXT CATALOG [AW2008FullTextCatalog]WITH ACCENT_SENSITIVITY = ON
AS DEFAULT
AUTHORIZATION [dbo]
GO
-- Create index on Production.Product
CREATE FULLTEXT INDEX ON [Production].[Product] KEY INDEX [PK_Product_ProductID] ON ([AW2008FullTextCatalog]) WITH (CHANGE_TRACKING AUTO)
GO
ALTER FULLTEXT INDEX ON [Production].[Product] ADD ([Name])
GO
ALTER FULLTEXT INDEX ON [Production].[Product] ENABLE
GO

-- Create index on Production.ProductDescription
CREATE FULLTEXT INDEX ON Production.ProductDescription 
KEY INDEX PK_ProductDescription_ProductDescriptionID 
ON (AW2008FullTextCatalog) 
WITH (CHANGE_TRACKING AUTO);
GO

ALTER FULLTEXT INDEX ON Production.ProductDescription ADD (Description);
GO

ALTER FULLTEXT INDEX ON Production.ProductDescription ENABLE;
GO
*/

--  Step 3: Using fulltext queries

SELECT ProductDescriptionID, Description
FROM Production.ProductDescription;
GO
-- Select and execute the following query to illustrate the use of
-- LIKE to find titles with 'bike' in them
-- Starting with 'bike' only
-- Should return 0 rows
SELECT ProductDescriptionID, Description
FROM Production.ProductDescription
WHERE Description LIKE 'bike%';
GO

-- With 'bike' appearing anywhere
-- Should return 16 rows
SELECT ProductDescriptionID, Description
FROM Production.ProductDescription
WHERE Description LIKE '%bike%';

GO
-- Select and execute the following query to illustrate the use of
-- CONTAINS to find all descriptions with 'bike'
-- Should return 14 rows
SELECT ProductDescriptionID, Description
FROM Production.ProductDescription
WHERE CONTAINS(Description,'bike');
GO

-- Show that CONTAINS matches words, not characters
-- This will return 4 rows
SELECT ProductDescriptionID, Description
FROM Production.ProductDescription
WHERE CONTAINS(Description,'bikes');
GO

-- Show the use of FORMSOF to match
-- forms of a search term
-- Should return 8 rows
SELECT ProductDescriptionID, Description
FROM Production.ProductDescription
WHERE CONTAINS(Description,'FORMSOF(INFLECTIONAL,race)');
GO

-- Show the use of NEAR to add functionality 
-- beyond what LIKE could achieve
SELECT ProductDescriptionID
      ,Description
FROM Production.ProductDescription
WHERE CONTAINS(Description,'bike NEAR frame');


-- If time and interest permit, show this example of
-- a word filtered by the stop list
SELECT ProductDescriptionID, Description
FROM Production.ProductDescription
WHERE CONTAINS(Description,'you');
GO


-- execute the following query to show the presence of 
-- the word "you" in the noise list
SELECT * FROM sys.dm_fts_parser (' "you" ', 1033, 0, 0)


-- FREETEXT Example
-- Show how FREETEXT returns rows including any
-- of the input terms, no OR operator required.

SELECT ProductID, Name
FROM Production.Product
WHERE FREETEXT(Name, 'flat nut');


-- Returns instance of "entry", "level" and 
-- "entry-level"
SELECT ProductDescriptionID, Description
FROM Production.ProductDescription
WHERE FREETEXT(Description,'entry level');
