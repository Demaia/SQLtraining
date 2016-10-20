---------------------------------------------------------------------
-- LAB 20
--
-- Exercise 1
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_20_PRJ\10774A_20_PRJ.ssmssln and the T-SQL script 51 - Lab Exercise 1.sql. To set your database context to that of the TSQL2012 database, highlight the statement USE TSQL2012; and execute the highlighted code. After executing this statement, the TSQL2012 database should be selected in the Available Databases box. In subsequent exercises, you will simply be instructed to ensure that you are connected to the TSQL2012 database.
--
-- The IT department has provided the following T-SQL code that creates and populates a sample table named Sales.TempOrders.
--
-- Execute the provided T-SQL code. 
---------------------------------------------------------------------

IF OBJECT_ID('Sales.TempOrders') IS NOT NULL 
	DROP TABLE Sales.TempOrders;

SELECT
	orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry
INTO Sales.TempOrders
FROM Sales.Orders AS o
CROSS JOIN dbo.Nums AS n
WHERE n.n <= 120;




---------------------------------------------------------------------
-- Task 2
-- 
-- Write a SELECT statement to return the orderid, custid, and orderdate columns from the Sales.TempOrders table.
--
-- Highlight the written statement and show an estimated execution plan. Observe the elements displayed in the execution plan.
--
-- Hover your mouse pointer over the Table Scan operator in the execution plan and look at the properties displayed in the yellow tooltip box. Notice the word “estimated” in the various properties.
--
-- Position your mouse pointer over the arrow between the SELECT operator and the Table Scan operator in the execution plan. Which properties are displayed?
--
-- Show all the properties of the SELECT operator in the execution plan by right-clicking the operator and choosing Properties from the context menu.
--
-- Click the Include Actual Execution Plan button in the SQL Editor Toolbar (or press Ctrl+M on the keyboard) and execute the SELECT query.
--
-- Analyze the actual execution plan. Notice that there are a few new properties with the word “Actual”. They represent the actual values gathered during execution.
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 3
-- 
-- Copy the previous SELECT statement and modify it to retrieve only one row using a TOP clause.
--
-- Show the estimated execution plan.
--
-- Compare this execution plan with the one in the previous task. Which operator is new?
--
-- Notice the size of the arrows, as the size reflects the number of rows being passed from one operator to another in the execution plan.
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 4
-- 
-- Copy the written SELECT statement in task 2.
--
-- Copy the modified SELECT statement in task 3, putting it after the first copied SELECT statement.
--
-- Highlight both statements and show first an estimated and then show an actual execution plan.
--
-- Observe the results. Compare the query cost information provided for the SELECT statements.
---------------------------------------------------------------------


