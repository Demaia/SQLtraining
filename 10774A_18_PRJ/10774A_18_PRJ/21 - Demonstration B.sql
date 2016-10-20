-- Demonstration B

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO
-- Step 2: --Returning Error Information
BEGIN TRY
	SELECT 1/0; --generate error
END TRY
BEGIN CATCH
	SELECT 
		ERROR_NUMBER() AS errnum,
		ERROR_MESSAGE() AS errmsg,
		ERROR_SEVERITY() AS errsev,
		ERROR_PROCEDURE() AS errproc,
		ERROR_LINE() AS errline;
END CATCH;
-- Step 3: Use THROW to raise custom error
-- Important: Any previous line in the batch before THROW MUST be terminated
-- with a semicolon.
THROW 55000, 'The object does not exist.', 1;

-- Step 4: Show an error without using THROW
BEGIN TRY
	--do something wrong
	SELECT 100/0 AS 'Problem';
END TRY
BEGIN CATCH
	PRINT 'Code inside CATCH is beginning'
	PRINT 'Error: ' + CAST(ERROR_NUMBER() AS VARCHAR(255));
END CATCH
-- Step 5: Use THROW to re-raise the error.
BEGIN TRY
	--do something wrong
	SELECT 100/0 AS 'Problem';
END TRY
BEGIN CATCH
	PRINT 'Code inside CATCH is beginning'
	PRINT 'Error: ' + CAST(ERROR_NUMBER() AS VARCHAR(255));
	THROW;
END CATCH
