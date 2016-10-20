---------------------------------------------------------------------
-- LAB 15
--
-- Exercise 3
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------
SELECT  
	session_id, login_time, host_name, language, date_format
FROM
	sys.dm_exec_sessions;


---------------------------------------------------------------------
-- Task 2
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
---------------------------------------------------------------------

-- System Memory Informations
SELECT 
	total_physical_memory_kb,
    available_physical_memory_kb,
    total_page_file_kb,
    available_page_file_kb,
    system_memory_state_desc
FROM sys.dm_os_sys_memory;

