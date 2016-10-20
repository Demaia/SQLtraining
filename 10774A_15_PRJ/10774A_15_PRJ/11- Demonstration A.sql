-- Demonstration A

-- Step 1: Open a new query window to the TSQL2012 database
USE TSQL2012;
GO

-- Step 2: --System Views and Functions
-- View server settings
SELECT name, value, value_in_use, description
FROM sys.configurations
ORDER BY name;

-- View list of databases on instance
SELECT  name ,
        database_id ,
        create_date ,
        collation_name ,
        user_access ,
        user_access_desc ,
        state ,
        state_desc 
FROM sys.databases;

-- Step 3: Two alternatives to using system views

-- List user-created tables, show that system views 
-- can be joined like user views and tables
SELECT  s.name AS schemaname,
		t.name AS tablename ,
        t.object_id ,
        type_desc ,
        create_date
FROM sys.tables AS t
JOIN sys.schemas AS s
ON t.schema_id = s.schema_id
ORDER BY schemaname, tablename;

-- Step 4: Use a system function to resolve the schema ID
SELECT  SCHEMA_NAME(schema_id) AS schemaname,
		name AS tablename ,
        object_id ,
        type_desc ,
        create_date
FROM sys.tables
ORDER BY schemaname, tablename;

-- Step 5 List data types
SELECT * FROM sys.types
SELECT * FROM sys.columns ORDER BY object_id, column_id

-- Step 6: List columns in a table with corresponding data type names

SELECT  OBJECT_NAME(object_id) AS tablename,
        name AS columnname,
        column_id ,
		TYPE_NAME(user_type_id) AS typename,
        max_length ,
        collation_name        
FROM sys.columns
WHERE object_id = object_id('Sales.Customers');


-- Step 7: Show INFORMATION_SCHEMA views
SELECT  TABLE_CATALOG,TABLE_SCHEMA,TABLE_NAME,TABLE_TYPE
FROM    INFORMATION_SCHEMA.TABLES;

SELECT VIEW_CATALOG, VIEW_SCHEMA, VIEW_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.VIEW_COLUMN_USAGE;

-- Step 8: Common system metadata functions
-- Compare @@VERSION to SERVERPROPERTY
-- Show students other options for SERVERPROPERTY
-- in Books Online: http://msdn.microsoft.com/en-us/library/ms174396.aspx
SELECT @@VERSION AS SQL_Version;
SELECT SERVERPROPERTY('ProductVersion') AS version;
SELECT SERVERPROPERTY('Collation') AS collation;
