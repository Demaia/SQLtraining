---------------------------------------------------------------------
-- LAB Appendix C
--
-- Exercise 2
---------------------------------------------------------------------

USE AdventureWorks2008R2;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------

SELECT  
	BusinessEntityID, SalesQuota, Bonus, CommissionPct, SalesYTD, SalesLastYear 
FROM Sales.SalesPerson
FOR XML AUTO;

---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------

SELECT  
	BusinessEntityID, SalesQuota, Bonus, CommissionPct, SalesYTD, SalesLastYear 
FROM Sales.SalesPerson
FOR XML AUTO, ELEMENTS;

---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

SELECT  
	BusinessEntityID, SalesQuota, Bonus, CommissionPct, SalesYTD, SalesLastYear 
FROM Sales.SalesPerson
FOR XML RAW('Employee'), ROOT('SalesPersons');

---------------------------------------------------------------------
-- Task 4
---------------------------------------------------------------------

SELECT  
	BusinessEntityID, SalesQuota, Bonus, CommissionPct, SalesYTD, SalesLastYear 
FROM Sales.SalesPerson
FOR XML RAW('Employee'), ROOT('SalesPersons'), ELEMENTS XSINIL;


---------------------------------------------------------------------
-- Task 5
---------------------------------------------------------------------

SELECT
	OrderHeader.SalesOrderNumber,
	OrderHeader.OrderDate,
	OrderHeader.CustomerID,
	OrderDetail.SalesOrderDetailID,
	OrderDetail.ProductID,
	OrderDetail.OrderQty,
	OrderDetail.UnitPrice
FROM Sales.SalesOrderHeader AS OrderHeader
INNER JOIN Sales.SalesOrderDetail AS OrderDetail ON OrderDetail.SalesOrderID = OrderHeader.SalesOrderID
WHERE OrderHeader.OrderDate = '20080731'
ORDER BY OrderHeader.SalesOrderNumber
FOR XML AUTO, ROOT('Orders');


SELECT
	OrderDetail.SalesOrderDetailID,
	OrderDetail.ProductID,
	OrderDetail.OrderQty,
	OrderDetail.UnitPrice,
	OrderHeader.SalesOrderNumber,
	OrderHeader.OrderDate,
	OrderHeader.CustomerID
FROM Sales.SalesOrderHeader AS OrderHeader
INNER JOIN Sales.SalesOrderDetail AS OrderDetail ON OrderDetail.SalesOrderID = OrderHeader.SalesOrderID
WHERE OrderHeader.OrderDate = '20080731'
ORDER BY OrderHeader.SalesOrderNumber
FOR XML AUTO, ROOT('Orders');
