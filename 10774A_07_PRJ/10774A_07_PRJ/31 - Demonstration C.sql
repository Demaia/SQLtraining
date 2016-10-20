-- Demonstration C

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2: Display various current date and time functions

SELECT
	GETDATE()			AS [GetDate],
	CURRENT_TIMESTAMP	AS [Current_Timestamp],
	GETUTCDATE()		AS [GetUTCDate],
	SYSDATETIME()		AS [SYSDateTime],
	SYSUTCDATETIME()	AS [SYSUTCDateTime],
	SYSDATETIMEOFFSET()	AS [SYSDateTimeOffset];
	
-- Step 3: Display various functions which return a portion of a date or time
SELECT DATENAME(year,'20120212');
SELECT DAY('20120212') AS [Day], MONTH('20120212') AS [Month],YEAR('20120212') AS [Year];

	
-- Step 4: Display various functions which return a date or time from parts
SELECT DATETIMEFROMPARTS(2012,2,12,8,30,0,0) AS Result; --7 arguments
SELECT DATETIME2FROMPARTS(2012,2,12,8,30,00,0,0) AS Result; -- 8 arguments
SELECT DATEFROMPARTS(2012,2,12) AS Result; -- 3args
SELECT DATETIMEOFFSETFROMPARTS(2012,2,12,8,30,0,0,-7,0,0) AS Result;


-- Step 5: Demonstrate DATEDIFF with  this to show difference in precision:
SELECT DATEDIFF(millisecond, GETDATE(), SYSDATETIME()); 

-- Step 6: Use ISDATE to check validity of inputs:
SELECT ISDATE('20120212'); --is valid
SELECT ISDATE('20120230'); --February doesn't have 30 days