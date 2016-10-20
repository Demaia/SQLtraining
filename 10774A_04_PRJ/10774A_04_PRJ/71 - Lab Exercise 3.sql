---------------------------------------------------------------------
-- LAB 04
--
-- Exercise 3
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_04_PRJ\10774A_04_PRJ.ssmssln and T-SQL script 71 - Lab Exercise 3.sql. Ensure that you are connected to the TSQL2012 database.
--
-- Write a SELECT statement to return the contactname and contacttitle columns from the Sales.Customers table, assigning “C” as the table alias. Use the table alias C to prefix the names of the two needed columns in the SELECT list. The benefit of using table aliases will become clearer in future modules when topics such as joins and subqueries will be introduced. 
--
-- Execute the written statement and compare the result that you got with the recommended result shown in the file 72 - Lab Exercise 3 - Task 1 Result.txt.
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 2
-- 
-- Write a SELECT statement to return the contactname, contacttitle, and companyname columns from the Sales.Customers table. Assign these columns with the aliases Name, Title, and Company Name, respectively, in order to return more human-friendly column titles for reporting purposes.
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 73 - Lab Exercise 3 - Task 2 Result.txt. Notice specifically the titles of the columns in the desired output.
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 3
-- 
-- Write a query to display the productname column from the Production.Products table using “P” as the table alias and Product Name as the column alias.
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 74 - Lab Exercise 3 - Task 3 Result.txt.
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 4
-- 
-- A developer has written a query to retrieve two columns (city and region) from the Sales.Customers table. When the query is executed, it returns only one column. Your task is to analyze the query, correct it to return two columns, and explain why the query returned only one column.
--
-- Execute the query exactly as written inside a query window and observe the result.
--
-- Correct the query to return the city and country columns from the Sales.Customers table.
--
-- Why did the query return only one column? What was the title of the column in the output? What is the best practice when using aliases for columns to avoid such errors?
---------------------------------------------------------------------

SELECT 
	city country
FROM Sales.Customers;

