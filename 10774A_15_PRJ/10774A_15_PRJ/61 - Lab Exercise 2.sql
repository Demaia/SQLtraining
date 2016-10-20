---------------------------------------------------------------------
-- LAB 15
--
-- Exercise 2
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_15_PRJ\10774A_15_PRJ.ssmssln and the T-SQL script 61 - Lab Exercise 2.sql. Ensure that you are connected to the TSQL2012 database.
--
-- Write a SELECT statement to retrieve some calculated columns using different system functions: 
--  Use the DB_ID function to retrieve the current database identification number. Give this calculated column the alias databaseid.
--  Use the DB_NAME function to retrieve the current database name. Give this calculated column the alias databasename.
--  Use the USER_NAME function to retrieve the current database user name. Give this calculated column the alias currusername.
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 62 - Lab Exercise 2 - Task 1 Result.txt.

---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 2
-- 
-- Write a SELECT statement to retrieve the name column and two calculated columns from the sys.columns view. To retrieve the first calculated column, use the OBJECT_NAME function with the object_id column as a parameter. Give it the alias tablename. To retrieve the second calculated column, use the OBJECT_SCHEMA_NAME function with the object_id column as a parameter. Give it the alias schemaname.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 63 - Lab Exercise 2 - Task 2 Result.txt. 
---------------------------------------------------------------------



---------------------------------------------------------------------
-- Task 3
-- 
-- Write a SELECT statement to retrieve the name column and two calculated columns from the sys.columns view. Give the name column the alias columnname. Use the OBJECT_NAME function to retrieve the first calculated column, giving it the alias tablename. Use the OBJECT_SCHEMA_NAME function to retrieve the second calculated column, giving it the alias schemaname. Filter the result to include only columns that contain the word “name” in the column name and belong to user-defined tables. To do this, use the OBJECTPROPERTY function, passing it two parameters: object_id and IsUserTable with the value 1.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 64 - Lab Exercise 2 – Task 3 Result.txt. 
---------------------------------------------------------------------



---------------------------------------------------------------------
-- Task 4
-- 
-- Write a SELECT statement to retrieve the view definition for the Sales.CustOrders view using the OBJECT_DEFINITION function. You will have to pass an object id to the function, so you can use the OBJECT_ID function to get the needed information.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 65 - Lab Exercise 2 - Task 4 Result.txt. 
---------------------------------------------------------------------


