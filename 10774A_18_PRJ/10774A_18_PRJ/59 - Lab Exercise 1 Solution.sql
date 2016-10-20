---------------------------------------------------------------------
-- LAB 18
--
-- Exercise 1
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------
SELECT CAST(N'Some text' AS int);

GO

BEGIN TRY
	SELECT CAST(N'Some text' AS int);
END TRY
BEGIN CATCH
	PRINT 'Error';
END CATCH;

---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------
DECLARE @num varchar(20) = '0';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
END CATCH;

GO

DECLARE @num varchar(20) = '0';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
	PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS varchar(10));
	PRINT 'Error Message: ' + ERROR_MESSAGE();
END CATCH;

GO

DECLARE @num varchar(20) = 'A';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
	PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS varchar(10));
	PRINT 'Error Message: ' + ERROR_MESSAGE();
END CATCH;

GO

DECLARE @num varchar(20) = '1000000000';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
	PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS varchar(10));
	PRINT 'Error Message: ' + ERROR_MESSAGE();
END CATCH;

GO

---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------
DECLARE @num varchar(20) = 'A';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
	IF ERROR_NUMBER() IN (245, 8114)
	BEGIN
		PRINT 'Handling conversion error...'
	END
	ELSE
	BEGIN 
		PRINT 'Handling non-conversion error...';
	END;

	PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS varchar(10));
	PRINT 'Error Message: ' + ERROR_MESSAGE();
END CATCH;

GO
---------------------------------------------------------------------
-- Task 4
---------------------------------------------------------------------

CREATE PROCEDURE dbo.GetErrorInfo AS
PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS varchar(10));
PRINT 'Error Message: ' + ERROR_MESSAGE();
PRINT 'Error Severity: ' + CAST(ERROR_SEVERITY() AS varchar(10));
PRINT 'Error State: ' + CAST(ERROR_STATE() AS varchar(10));
PRINT 'Error Line: ' + CAST(ERROR_LINE() AS varchar(10));
PRINT 'Error Proc: ' + COALESCE(ERROR_PROCEDURE(), 'Not within procedure');

GO

DECLARE @num varchar(20) = '0';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
	EXECUTE dbo.GetErrorInfo;
END CATCH;

