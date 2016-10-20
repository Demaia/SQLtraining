-- Demonstration A

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2: use a cursor to calculate maximum order date per employee

-- declare local variables for current and previous record elements
DECLARE
  @empid         AS INT      = NULL,
  @orderdate     AS DATETIME = NULL,
  @prevempid     AS INT      = NULL,
  @prevorderdate AS DATETIME = NULL;

-- declare table variables [BG: a table variable] to hold max order date per each employee
DECLARE @T AS TABLE
(
  empid        INT,
  maxorderdate DATETIME
);

-- declare cursor based on query that orders rows by empid and orderdate
DECLARE OrdersCursor CURSOR FAST_FORWARD FOR
  SELECT empid, orderdate
  FROM Sales.Orders
  ORDER BY empid, orderdate;

-- open cursor
OPEN OrdersCursor;

-- fetch first cursor record
FETCH NEXT FROM OrdersCursor INTO @empid, @orderdate;

-- as long as previous fetch found a record
WHILE @@fetch_status = 0
BEGIN
  -- if previous empid is different than current, previous was with the maximum date, then insert a row to @T
  IF @prevempid <> @empid
    INSERT INTO @T(empid, maxorderdate) VALUES(@prevempid, @prevorderdate);
  SELECT @prevempid = @empid, @prevorderdate = @orderdate;
  FETCH NEXT FROM OrdersCursor INTO @empid, @orderdate;
END

-- unless input table was empty (in which case empid is NULL), last record had maximum order date for last employee
IF @empid IS NOT NULL
  INSERT INTO @T(empid, maxorderdate) VALUES(@prevempid, @prevorderdate);

-- close and deallocate cursor
CLOSE OrdersCursor;
DEALLOCATE OrdersCursor;

-- show results
SELECT empid, maxorderdate
FROM @T;
GO

-- Step 3: Use a set-based operation calculate maximum order date per employee
SELECT empid, MAX(orderdate) AS maxorderdate
FROM Sales.Orders
GROUP BY empid
ORDER BY empid;
