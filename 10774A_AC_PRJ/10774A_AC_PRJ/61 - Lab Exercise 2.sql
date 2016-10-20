---------------------------------------------------------------------
-- LAB Appendix C
--
-- Exercise 2
---------------------------------------------------------------------

USE AdventureWorks2008R2;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_AC_PRJ\10774A_AC_PRJ.ssmssln and the T-SQL script 61 - Lab Exercise 2.sql. Ensure that you are connected to the AdventureWorks2008R2 database.
--
-- Write a SELECT statement to retrieve the BusinessEntityID, SalesQuota, Bonus, CommissionPct, SalesYTD, and SalesLastYearcustid columns from the Sales.SalesPerson table. Return the result as an XML using the AUTO option.
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 62 - Lab Exercise 2 - Task 1 Result.txt. You can display the XML structure if you click the column in the query result pane.
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 2
-- 
-- Modify the SELECT statement in task 1 to include each column as a separate element inside the XML.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 63 - Lab Exercise 2 - Task 2 Result.txt. 
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 3
-- 
-- Modify the SELECT statement in task 2 to include a root element named SalesPersons. Also modify it so that each row has the XML element “Employee”.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 64 - Lab Exercise 2 - Task 3 Result.txt. 
--
-- Execute the T-SQL statement without the FOR XML output. Observe the missing values in the specific columns. Are these columns present in the XML output?
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 4
-- 
-- Modify the SELECT statement in task 3 to include the information about the NULLs in the XML output.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 65 - Lab Exercise 2 - Task 4 Result.txt.
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 5
-- 
-- Write a SELECT statement against the Sales.SalesOrderHeader and Sales.SalesOrderDetail tables to retrieve the SalesOrderNumber, OrderDate, CustomerID, SalesOrderDetailID, ProductID, OrderQty, and UnitPrice columns. Use the aliases OrderHeader and OrderDetails for needed tables. Filter the query to include only the orders with the document date 31 July 2008. Order the result by the SalesOrderNumber column and return it as an XML using the AUTO option. Add a root element called Orders.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 66 - Lab Exercise 2 - Task 5_1 Result.txt.
--
-- Change the order of the columns in the SELECT clause by specifying first the columns from the Sales.SalesOrderDetails table and then the columns from the Sales.SalesOrderHeader table. 
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 67 - Lab Exercise 2 - Task 5_2 Result.txt. 
--
-- Is the order of the columns in the SELECT clause important when returning the result using FOR XML AUTO?
---------------------------------------------------------------------
