-- Demonstration A

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

--Step 2: Demonstrate basic TRY/CATCH structure
BEGIN TRY
	--do something wrong
	SELECT 100/0 AS 'Problem';
END TRY
BEGIN CATCH
	PRINT 'Code inside CATCH is executing';
END CATCH

--Step 3: Break it down into steps
PRINT 'Code before TRY block is executing';
BEGIN TRY
	PRINT '  The TRY Block is starting'
	--do something wrong
	SELECT 100/0 AS 'Problem';
	PRINT '  If we get here, there was no runtime error'
END TRY
BEGIN CATCH
	PRINT '  Code inside CATCH is starting';
	PRINT '  Code inside CATCH is ending';
END CATCH
PRINT 'Now outside the end of the CATCH block';
