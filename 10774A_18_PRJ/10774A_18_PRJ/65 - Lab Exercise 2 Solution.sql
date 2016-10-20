---------------------------------------------------------------------
-- LAB 18
--
-- Exercise 2
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------

DECLARE @num varchar(20) = '0';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
	EXECUTE dbo.GetErrorInfo;
	THROW;
END CATCH;


GO
---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------


DECLARE @num varchar(20) = 'A';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
	EXECUTE dbo.GetErrorInfo;

	IF ERROR_NUMBER() = 8134
	BEGIN
		PRINT 'Handling devision by zero...';
	END
	ELSE 
	BEGIN
		PRINT 'Throwing original error';
		THROW;
	END;

END CATCH;

GO
---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

DECLARE @msg AS varchar(2048);
SET @msg = 'You are doing the exercise for Module 18 on ' + FORMAT(CURRENT_TIMESTAMP, 'MMMM d, yyyy', 'en-US') + '. It''s not an error but it means that you are near the final module!';

THROW 50001, @msg, 1;

---------------------------------------------------------------------
-- Task 4
---------------------------------------------------------------------

DROP PROCEDURE dbo.GetErrorInfo;