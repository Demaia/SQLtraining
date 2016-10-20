---------------------------------------------------------------------
-- LAB 15
--
-- Exercise 3
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_15_PRJ\10774A_15_PRJ.ssmssln and the T-SQL script 71 - Lab Exercise 3.sql. Ensure that you are connected to the TSQL2012 database.
--
-- Write a SELECT statement to retrieve the session_id, login_time, host_name, language, and date_format columns from the sys.dm_exec_sessions DMV.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 72 - Lab Exercise 3 - Task 1 Result.txt. 
---------------------------------------------------------------------



---------------------------------------------------------------------
-- Task 2
-- 
-- Execute the provided T-SQL statement to retrieve the information about the computer on which SQL Server is installed. 
--
-- Observe and compare the results that you got with the recommended result shown in the file 73 - Lab Exercise 3 - Task 2 Result.txt. 
---------------------------------------------------------------------

SELECT 
	cpu_count AS 'Logical CPU Count', 
    hyperthread_ratio AS 'Hyperthread Ratio',
    cpu_count/hyperthread_ratio As 'Physical CPU Count', 
    physical_memory_kb/1024 AS 'Physical Memory (MB)',
    sqlserver_start_time AS 'Last SQL Start'
FROM sys.dm_os_sys_info;


---------------------------------------------------------------------
-- Task 3
-- 
-- Write a SELECT statement to retrieve the total_physical_memory_kb, available_physical_memory_kb, total_page_file_kb, available_page_file_kb, and system_memory_state_desc columns from the sys.dm_os_sys_memory DMV.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 74 - Lab Exercise 3 - Task 3 Result.txt.
---------------------------------------------------------------------
