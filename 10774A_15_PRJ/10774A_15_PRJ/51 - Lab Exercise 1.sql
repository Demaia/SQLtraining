---------------------------------------------------------------------
-- LAB 15
--
-- Exercise 1
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_15_PRJ\10774A_15_PRJ.ssmssln and the T-SQL script 51 - Lab Exercise 1.sql. To set your database context to that of the TSQL2012 database, highlight the statement USE TSQL2012; and execute the highlighted code. After executing this statement, the TSQL2012 database should be selected in the Available Databases box. In subsequent exercises, you will simply be instructed to ensure that you are connected to the TSQL2012 database.
--
-- Write a SELECT statement that will return the name, dbid, and crdate columns from the view sys.sysdatabases. 
--
-- Execute the SELECT statement and compare the results that you got with the desired results shown in the file 52 - Lab Exercise 1 - Task 1 Result.txt. Your result may be different depending on the databases that exist on the server you are connected to and on your user rights. The desired results were produced by a user with a sysadmin server role.
---------------------------------------------------------------------



---------------------------------------------------------------------
-- Task 2
-- 
-- Write a SELECT statement to retrieve all database objects by selecting the object_id, name, schema_id, type, type_desc, create_date, and modify_date columns from the sys.objects table.
--
-- Execute the SELECT statement and compare the results that you got with the desired results shown in the file 53 - Lab Exercise 1 - Task 2_1 Result.txt. 
--
-- Write a SELECT statement to retrieve all the distinct object types by selecting the type and type_desc columns in the sys.objects table. Order the results by the type_desc column.
--
-- Execute the SELECT statement and compare the results that you got with the desired results shown in the file 54 - Lab Exercise 1 - Task 2_2 Result.txt. In the type_desc column, find a row with the value USER_TABLE. In that row, notice the value in the type column.
--
-- Copy the first query in this task and modify it to filter only user-based tables.
--
-- Execute the modified query and compare the results that you got with the desired results shown in the file 55 - Lab Exercise 1 - Task 2_3 Result.txt. 
---------------------------------------------------------------------



---------------------------------------------------------------------
-- Task 3
-- 
-- Write a SELECT statement against the sys.tables view to show all user-defined tables. Retrieve the same columns as in task 2, but use the system function SCHEMA_NAME with the schema_id column. Use the alias schemaname to display the name of the schema.
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 56 - Lab Exercise 1 - Task 3_1 Result.txt. 
--
-- Retrieve all views in the TSQL2012 database by writing a SELECT statement against the sys.views view, using the same columns as in the previous query. 
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 57 - Lab Exercise 1 - Task 3_2 Result.txt. 
---------------------------------------------------------------------



---------------------------------------------------------------------
-- Task 4
-- 
-- Write a SELECT statement to retrieve the columns names from the sys.columns view, using the aliases columnname, column_id, system_type_id, max_length, precision, scale, and collation_name. Filter the result to show only the columns from the Sales.Customers table.
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 58 - Lab Exercise 1 - Task 4 Result.txt. 
---------------------------------------------------------------------






