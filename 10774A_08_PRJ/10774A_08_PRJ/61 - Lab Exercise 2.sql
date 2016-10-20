---------------------------------------------------------------------
-- LAB 08
--
-- Exercise 2
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_08_PRJ\10774A_08_PRJ.ssmssln and the T-SQL script 61 - Lab Exercise 2.sql. Ensure that you are connected to the TSQL2012 database.
--
-- Write a SELECT statement against the Sales.Customers table and retrieve the custid and contactname columns. Add a calculated column named segmentgroup using a logical function IIF with the value “Target group” for customers that are from Mexico and have in the contact title the value “Owner”. Use the value “Other” for the rest of the customers. 
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 62 - Lab Exercise 2 - Task 1 Result.txt.
---------------------------------------------------------------------


---------------------------------------------------------------------
-- Task 2
-- 
-- Modify the T-SQL statement from task 1 to change the calculated column to show the value “Target group” for all customers without a missing value in the region attribute or with the value “Owner” in the contact title attribute.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 63 - Lab Exercise 2 - Task 2 Result.txt. 
---------------------------------------------------------------------


---------------------------------------------------------------------
-- Task 3
-- 
-- Write a SELECT statement against the Sales.Customers table and retrieve the custid and contactname columns. Add a calculated column named segmentgroup using the logic function CHOOSE with four possible descriptions (“Group One”, “Group Two”, “Group Three”, “Group Four”). Use the modulo operator on the column custid. (Use the expression custid % 4 + 1 to determine the target group.)
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 64 - Lab Exercise 2 - Task 3 Result.txt.
---------------------------------------------------------------------

