---------------------------------------------------------------------
-- LAB 18
--
-- Exercise 2
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_18_PRJ\10774A_18_PRJ.ssmssln and the SQL script 61 - Lab Exercise 2.sql. Ensure that you are connected to the TSQL2012 database.
--
-- Copy the T-SQL code from exercise 1, task 4 and modify it to include the THROW statement in the CATCH block after the EXECUTE statement. Execute the T-SQL code.
--
-- Observe and compare the results that you got with the desired results shown in the file 62 - Lab Exercise 2 - Task 1 Result.txt.
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 2
-- 
-- Copy the T-SQL code in the previous task and modify it by replacing a THROW statement with an IF statement. Write a condition to compare the error number to the value 8134. If this condition is true, display the message “Handling division by zero…”.  Otherwise, display the message “Throwing original error” and add a THROW statement.
--
-- Set the value of the @num variable to A and execute the T-SQL code.
--
-- Observe and compare the results that you got with the recommended result shown in the file 63 - Lab Exercise 2 - Task 2 Result.txt. 
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 3
-- 
-- The IT department has provided you with T-SQL code to create a new variable named @msg and set its value.
--
-- Write a THROW statement and specify the message id of 50001 for the first argument, the @msg variable for the second argument, and the value 1 for the third argument. Highlight the complete T-SQL code and execute it.
--
-- Observe and compare the results that you got with the recommended result shown in the file 64 - Lab Exercise 2 - Task 3 Result.txt.
---------------------------------------------------------------------

DECLARE @msg AS varchar(2048);
SET @msg = 'You are doing the module 18 on ' + FORMAT(CURRENT_TIMESTAMP, 'MMMM d, yyyy', 'en-US') + '. It''s not an error but it means that you are near the final module!';



---------------------------------------------------------------------
-- Task 4
-- 
-- Execute the provided T-SQL code to remove the stored procedure dbo.GetErrorInfo.
---------------------------------------------------------------------

DROP PROCEDURE dbo.GetErrorInfo;