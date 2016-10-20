-- Demonstration C (On-premise only due to Azure incompatability)

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2:  List system objects
SELECT  name, type, type_desc
FROM sys.system_objects
WHERE name LIKE 'dm_%'
ORDER BY name;

USE master ;
GO
-- Step 3:  List DMVs
SELECT  name, type, type_desc
FROM sys.system_objects
WHERE name LIKE 'dm_%'
ORDER BY name;

-- Step 4:  Show information about all active user connections and internal tasks.
SELECT  session_id ,
        login_time ,
        host_name ,
        program_name ,
        login_name ,
        status ,
        cpu_time ,
        memory_usage ,
        last_request_start_time ,
        last_request_end_time ,
        reads ,
        writes ,
        logical_reads ,
        is_user_process ,
        language ,
        date_format ,
        row_count
FROM    sys.dm_exec_sessions
WHERE   program_name IS NOT NULL ;


-- Step 5: Display sessions grouped by logged-in users 
SELECT  login_name ,
        COUNT(session_id) AS session_count
FROM    sys.dm_exec_sessions
GROUP BY login_name;

--Step 6: Show dependencies between objects
--Which objects referenced the 
--Sales.Orders table?
USE TSQL2012;
GO
SELECT referencing_schema_name, referencing_entity_name, referencing_class_desc
FROM sys.dm_sql_referencing_entities ('Sales.Orders', 'OBJECT');
