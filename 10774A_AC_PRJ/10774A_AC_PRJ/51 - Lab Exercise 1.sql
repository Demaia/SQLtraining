---------------------------------------------------------------------
-- LAB Appendix C
--
-- Exercise 1
---------------------------------------------------------------------

USE AdventureWorks2008R2;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_AC_PRJ\10774A_AC_PRJ.ssmssln and the T-SQL script 51 - Lab Exercise 1.sql. To set your database context to that of the AdventureWorks2008R2 database, highlight the statement USE AdventureWorks2008R2; and execute the highlighted code. After executing this statement, the AdventureWorks2008R2 database should be selected in the Available Databases box. In subsequent exercises, you will simply be instructed to ensure that you are connected to the AdventureWorks2008R2 database.
--
-- Check to see if the population of the full-text index is complete. Execute the provided T-SQL statement and observe the column has_crawl_completed. The value should be 1 to indicate that the population is complete.
--  SELECT 
--	is_enabled, has_crawl_completed, crawl_type, crawl_start_date, crawl_end_date
--  FROM sys.fulltext_indexes
--  WHERE OBJECT_NAME(object_id) = N'Document';
--
-- Write a SELECT statement against the Production.Document table and retrieve the Title and DocumentSummary columns. Filter the result on the DocumentSummary column to contain the word “Adventure”.
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 52 - Lab Exercise 1 - Task 1 Result.txt. 
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 2
-- 
-- Modify the query in task 1 to filter the DocumentSummary column to contain the words “Adventure Works” and “pedals”.
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 53 - Lab Exercise 1 - Task 2 Result.txt. 
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 3
-- 
-- Write a SELECT statement that uses the CONTAINS function against the DocumentSummary table to retrieve the Title and DocumentSummary columns. Filter the result on the DocumentSummary column to contain the word “component”.
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 54 - Lab Exercise 1 - Task 3_1 Result.txt. 
--
-- Modify the query to use the FREETEXT function instead of the CONTAINS function. 
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 55 - Lab Exercise 1 - Task 3_2 Result.txt. 
--
-- What is the difference between the functions CONTAINS and FREETEXT?
---------------------------------------------------------------------
