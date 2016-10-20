---------------------------------------------------------------------
-- LAB 17
--
-- Exercise 4
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_17_PRJ\10774A_17_PRJ.ssmssln and the SQL script 81 - Lab Exercise 4.sql. Ensure that you are connected to the TSQL2012 database.
--
-- Write T-SQL code to create a synonym named dbo.Person for the Person.Person table in the AdventureWorks2008R2 database. Execute the written statement.
--
-- Write a SELECT statement against the dbo.Person synonym and retrieve the FirstName and LastName columns. Execute the SELECT statement.
--
-- Observe and compare the results that you got with the recommended result shown in the file 82 - Lab Exercise 4 - Task 1 Result.txt.
---------------------------------------------------------------------



---------------------------------------------------------------------
-- Task 2
-- 
-- Execute the provided T-SQL code to remove the synonym.
---------------------------------------------------------------------

DROP SYNONYM dbo.Person;