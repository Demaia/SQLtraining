---------------------------------------------------------------------
-- LAB 18
--
-- Exercise 1
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_18_PRJ\10774A_18_PRJ.ssmssln and the T-SQL script 51 - Lab Exercise 1.sql. To set your database context to that of the TSQL2012 database, highlight the statement USE TSQL2012; and execute the highlighted code. After executing this statement, the TSQL2012 database should be selected in the Available Databases box. In subsequent exercises, you will simply be instructed to ensure that you are connected to the TSQL2012 database.
--
-- Execute the provided SELECT statement:
--   SELECT CAST(N'Some text' AS int);
--
-- Notice that you get an error. Write a TRY / CATCH construct by placing the SELECT statement in a TRY block. In the CATCH block, use the PRINT command to display the text “Error”. Execute the T-SQL code.
--
-- Observe and compare the results that you got with the desired results shown in the file 52 - Lab Exercise 1 - Task 1 Result.txt. 
---------------------------------------------------------------------
SELECT CAST(N'Some text' AS int);



---------------------------------------------------------------------
-- Task 2
-- 
-- The IT department has provided T-SQL code that looks like this.
-- Execute the provided T-SQL code. Notice that nothing happens, although based on the @num variable’s value, you should get an error because of the division by zero. Why didn’t you get an error? 
--
-- Modify the CATCH block by adding two PRINT statements. The first statement should display the error number by using the ERROR_NUMBER function. The second statement should display the error message by using the ERROR_MESSAGE function. Also, include a label in each printed message, such as “Error Number:” for the first message and “Error Message:” for the second one.
--
-- Execute and compare the results that you got with the desired results shown in the file 53 - Lab Exercise 1 - Task 2_1 Result.txt. 
--
-- Change the value of the @num variable from 0 to A and execute the T-SQL code.
--
-- Observe and compare the results that you got with the desired results shown in the file 54 - Lab Exercise 1 - Task 2_2 Result.txt.
--
-- Change the value of the @num variable from A to 1000000000 and execute the T-SQL code.
--
-- Observe and compare the results that you got with the desired results shown in the file 55 - Lab Exercise 1 - Task 2_3 Result.txt.
---------------------------------------------------------------------
DECLARE @num varchar(20) = '0';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
END CATCH;



---------------------------------------------------------------------
-- Task 3
-- 
-- Copy the T-SQL code from the previous task and modify it by including an IF statement in the CATCH block before the added PRINT statements. The IF statement should check to see whether the error number is equal to 245 or 8114. If this condition is true, display the message “Handling conversion error…” using a PRINT statement. If this condition is not true, display the message “Handling non-conversion error…”.
--
-- Set the value of the @num variable to A and execute the T-SQL code.
--
-- Observe and compare the results that you got with the desired results shown in the file 56 - Lab Exercise 1 - Task 3_1 Result.txt.
--
-- Change the value of the @num variable to 0 and execute the T-SQL code.
--
-- Observe and compare the results that you got with the desired results shown in the file 57 - Lab Exercise 1 - Task 3_2 Result.txt.
---------------------------------------------------------------------



---------------------------------------------------------------------
-- Task 4
-- 
-- The IT department has provided you with T-SQL code to create a stored procedure named dbo.GetErrorInfo to display different information about the error. Execute the provided T-SQL code.
--
-- Copy the T-SQL code in task 2 and modify it by removing the PRINT statements and writing an EXECUTE statement in the CATCH block to invoke the stored procedure dbo.GetErrorInfo. 
--
-- Set the value of the @num variable to 0 and execute the T-SQL code.
--
-- Observe and compare the results that you got with the desired results shown in the file 58 - Lab Exercise 1 - Task 4 Result.txt.
---------------------------------------------------------------------

CREATE PROCEDURE dbo.GetErrorInfo AS
PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS varchar(10));
PRINT 'Error Message: ' + ERROR_MESSAGE();
PRINT 'Error Severity: ' + CAST(ERROR_SEVERITY() AS varchar(10));
PRINT 'Error State: ' + CAST(ERROR_STATE() AS varchar(10));
PRINT 'Error Line: ' + CAST(ERROR_LINE() AS varchar(10));
PRINT 'Error Proc: ' + COALESCE(ERROR_PROCEDURE(), 'Not within procedure');

GO



