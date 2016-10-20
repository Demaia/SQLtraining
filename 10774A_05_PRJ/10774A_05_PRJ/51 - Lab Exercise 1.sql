---------------------------------------------------------------------
-- LAB 05
--
-- Exercise 1
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_05_PRJ\10774A_05_PRJ.ssmssln and the T-SQL script 51 - Lab Exercise 1.sql. To set your database context to that of the TSQL2012 database, highlight the statement USE TSQL2012; and execute the highlighted code. After executing this statement, the TSQL2012 database should be selected in the Available Databases box. In subsequent exercises, you will simply be instructed to ensure that you are connected to the TSQL2012 database.
--
-- Write a SELECT statement that will return the productname column from the Production.Products table (use table alias “p”) and the categoryname column from the Production.Categories table (use table alias “c”) using an inner join. 
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 52 - Lab Exercise 1 - Task 1 Result.txt.
--
-- Which column did you specify as a predicate in the ON clause of the join? Why?
--
-- Let us say that there is a new row in the Production.Categories table and this new product category does not have any products associated with it in the Production.Products table. Would this row be included in the result of the SELECT statement written in task 1? Please explain.
---------------------------------------------------------------------


