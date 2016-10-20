---------------------------------------------------------------------
-- LAB 20
--
-- Exercise 2
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_20_PRJ\10774A_20_PRJ.ssmssln and the T-SQL script 61 - Lab Exercise 2.sql. Ensure that you are connected to the TSQL2012 database.
--
-- Execute the statement that the IT department provided. This T-SQL code generates a clustered index on top of the Sales.TempOrders table.
--
-- After the provided T-SQL code, write a SELECT statement to retrieve the orderid, custid, and orderdate columns from the Sales.TempOrders table. Filter the result to include only the rows with the order year equal to 2007 and the order month equal to 6 by executing the YEAR and MONTH functions against the orderdate column. Execute the SELECT statement.
--
-- Observe and compare the results that you got with the desired results shown in the file 62 - Lab Exercise 2 - Task 1 Result.txt. 
--
-- Show the execution plan. Notice the operator “Clustered Index Scan” and remember that this is the same operation as a table scan. (Do not worry if some concepts are hard to grasp at this point. They will become clearer when you work more with SQL Server, gain experience, and attend more advanced training courses.)
--
-- Note that although you created an index on the orderdate column, the whole table was scanned in search of rows that matched your predicate in the WHERE clause.
---------------------------------------------------------------------
CREATE CLUSTERED INDEX CX_Sales_TempOrders_orderdate ON Sales.TempOrders (orderdate ASC);

GO

---------------------------------------------------------------------
-- Task 2
-- 
-- Enable I/O statistics by executing the SET STATISTICS IO statement.
--
-- Copy the written query in task 1 and execute it. 
--
-- Notice the number of logical reads displayed in the Messages tab. This number is based on I/O statistics.  
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 3
-- 
-- Copy the written SELECT statement in task 1 and modify it by replacing the existing predicates in the WHERE clause with a range predicate based on the orderdate column. Of course, the result must be the same. Execute the SELECT statement. 
--
-- Observe and compare the results that you got with the recommended result shown in the file 63 - Lab Exercise 2 - Task 3 Result.txt. Notice the number of logical reads displayed in the Messages tab. It is more than 25 times lower than the previous SELECT statement.
--
-- Show the query execution plan. Notice a new operator named “Clustered Index Seek”.
---------------------------------------------------------------------





---------------------------------------------------------------------
-- Task 4
-- 
-- Copy the written SELECT statement in task 1.
--
-- Copy the written SELECT statement in task 3, putting it after the first copied SELECT statement.
--
-- Highlight both statements and execute them.
--
-- Notice the difference in logical reads. Although the result set is the same, the SELECT statement from task 3 scans 25 times less data than the SELECT statement from task 1.
--
-- Highlight both statements and show their estimated execution plans. Notice the query cost (relative to batch) between the statements.
--
-- Why is the SELECT statement from task 3 so much faster?
---------------------------------------------------------------------





---------------------------------------------------------------------
-- Task 5
-- 
-- Execute the provided T-SQL code.
---------------------------------------------------------------------
SET STATISTICS IO OFF;

IF OBJECT_ID('Sales.TempOrders') IS NOT NULL 
	DROP TABLE Sales.TempOrders;
