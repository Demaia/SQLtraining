---------------------------------------------------------------------
-- LAB 16
--
-- Exercise 1
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_16_PRJ\10774A_16_PRJ.ssmssln and the T-SQL script 51 - Lab Exercise 1.sql. To set your database context to that of the TSQL2012 database, highlight the statement USE TSQL2012; and execute the highlighted code. After executing this statement, the TSQL2012 database should be selected in the Available Databases box. In subsequent exercises, you will simply be instructed to ensure that you are connected to the TSQL2012 database.
--
-- Execute the provided T-SQL code to create the stored procedure Sales.GetTopCustomers.
--
-- Write a T-SQL statement to execute the created procedure.
--
-- Execute the T-SQL statement and compare the results that you got with the desired results shown in the file 52 - Lab Exercise 1 - Task 1 Result.txt. 
---------------------------------------------------------------------

CREATE PROCEDURE Sales.GetTopCustomers AS
SELECT TOP(10)
	c.custid,
	c.contactname,
	SUM(o.val) AS salesvalue
FROM Sales.OrderValues AS o
INNER JOIN Sales.Customers AS c ON c.custid = o.custid
GROUP BY c.custid, c.contactname
ORDER BY salesvalue DESC;

GO




---------------------------------------------------------------------
-- Task 2
-- 
-- The IT department has changed the stored procedure from task 1 and has supplied you with T-SQL code to apply the needed changes. Execute the provided T-SQL code.
--
-- Write a T-SQL statement to execute the modified stored procedure.
--
-- Execute the T-SQL statement and compare the results that you got with the desired results shown in the file 53 - Lab Exercise 1 - Task 2 Result.txt. 
--
-- What is the difference between the previous T-SQL code and this one?
--
-- If some applications are using the stored procedure from task 1, would they still work properly after the changes you have applied in task 2? 
---------------------------------------------------------------------

ALTER PROCEDURE Sales.GetTopCustomers AS
SELECT 
	c.custid,
	c.contactname,
	SUM(o.val) AS salesvalue
FROM Sales.OrderValues AS o
INNER JOIN Sales.Customers AS c ON c.custid = o.custid
GROUP BY c.custid, c.contactname
ORDER BY salesvalue DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

GO



