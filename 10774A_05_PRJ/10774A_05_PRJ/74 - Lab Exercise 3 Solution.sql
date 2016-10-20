---------------------------------------------------------------------
-- LAB 05
--
-- Exercise 3
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------

SELECT
	e.empid, e.lastname, e.firstname, e.title, e.mgrid
FROM HR.Employees AS e;

---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------

SELECT
	e.empid, e.lastname, e.firstname, e.title, e.mgrid,
	m.lastname AS mgrlastname, m.firstname AS mgrfirstname
FROM HR.Employees AS e
INNER JOIN HR.Employees AS m ON e.mgrid = m.empid;



