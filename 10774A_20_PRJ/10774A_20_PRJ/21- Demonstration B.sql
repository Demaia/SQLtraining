USE TSQL2012;
GO
-- Demonstration B
-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO


--Display an estimated plan for a simple query
-- Step 2: Select the following query and click the Display Estimated Execution Plan toolbar button

SELECT orderid, custid, empid, orderdate 
FROM Sales.Orders;

-- Step 3: Point out the elements of the plan, including the Clustered Index Scan and SELECT operators, the arrow and the costs



-- Display the actual execution plan for a simple query
-- Step 4: Select the following query and click the Include Actual Execution Plan toolbar button
SELECT orderid, custid, empid, orderdate 
FROM Sales.Orders;
-- Step 5: Execute the query (press F5 or click the Execute Query toolbar button) and click the Execution Plan tab in the Results pane.
-- Step 6: Point out the elements of the plan, including the Clustered Index Scan and SELECT operators, the arrow and the costs
-- Step 7: Turn off the Actual Execution Plan toggle by clicking the Include Actual Execution Plan toolbar button

--Display Query Performance data
-- Step 8: Enable STATISTICS TIME display by selecting and executing the following batch:
SET STATISTICS TIME ON;
GO
-- Step 9: Execute a simple SELECT query
SELECT orderid, custid, empid, orderdate 
FROM Sales.Orders;
-- Step 10: Click the Messages tab in the Results pane and review the results.
-- Step 11: Disable STATISTICS TIME display by selecting and executing the following batch:
SET STATISTICS TIME OFF;
GO 
-- Step 12: Enable STATISTICS IO display by selecting and executing the following batch:
SET STATISTICS IO ON;
GO
-- Step 13: Execute a simple SELECT query
SELECT orderid, custid, empid, orderdate 
FROM Sales.Orders;
-- Step 14: Click the Messages tab in the Results pane and review the results.
-- Step 15: Disable STATISTICS IO display by selecting and executing the following batch:
SET STATISTICS IO OFF;
GO 