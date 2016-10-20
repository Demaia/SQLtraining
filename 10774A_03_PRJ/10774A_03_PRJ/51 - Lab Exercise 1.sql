---------------------------------------------------------------------
-- LAB 03
--
-- Exercise 1
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Using SQL Server Management Studio (SSMS), connect to Proseware using Windows authentication (if you are connecting to an on-premises instance of SQL Server) or SQL Server authentication (if you are using SQL Azure).
--
-- Create and populate database TSQL2012:
--    For on-premise, database TSQL2012 is already created and populated in the VM so no further steps are needed. However, if the database was damaged and you would like to create it from scratch, follow the step below.
--    For Microsoft SQL Azure, follow the step below if you haven’t done so already in module 02.
--    To create and populate the sample database open the 00 – Setup.sql script file from within Solution Explorer and follow the instruction that are embedded as inline comments.
--
-- Open the project file F:\10774A_Labs\10774A_03_PRJ\10774A_03_PRJ.ssmssln and the T-SQL script 51 - Lab Exercise 1.sql.
---------------------------------------------------------------------



---------------------------------------------------------------------
-- Task 2
-- 
-- Execute the script by clicking Execute on the toolbar (or press F5 on the keyboard). This will execute the whole script.
--
-- Observe the result and the database context. 
--
-- Which database is selected in the Available Databases box?
---------------------------------------------------------------------

SELECT 
	firstname, lastname, city, country
FROM HR.Employees;

---------------------------------------------------------------------
-- Task 3
-- 
-- Highlight the SELECT statement in the T-SQL script under the task 2 description and click Execute.
--
-- Observe the result. You should get the same result as in task 2. 
--
-- Tip: One way to highlight a portion of code is to hold down the Alt key while drawing a rectangle around it with your mouse. The code inside the drawn rectangle will be selected. Try it.
---------------------------------------------------------------------
