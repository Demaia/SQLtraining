---------------------------------------------------------------------
-- LAB Appendix C
--
-- Exercise 3
---------------------------------------------------------------------

USE AdventureWorks2008R2;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_AC_PRJ\10774A_AC_PRJ.ssmssln and the T-SQL script 71 - Lab Exercise 3.sql. Ensure that you are connected to the AdventureWorks2008R2 database.
-- The IT department has provided you with sample code that stores a simple XML structure inside the variable @x. Write a SELECT statement against the XML stored in the variable @x to retrieve columns that contain:
--  The complete sequence. Use the alias completesequence.
--  The customer name element (/root/customer/name). Use the alias elementcustname.
--  The value of the customer name element (/root/customer/name). Use the alias elementcustnamevalue.
--  A new element with an XML based on name and age element. Use the alias newelement.
--  <result>Customer name is Albert and he is 32 years old.</result>
--  Highlight the provided T-SQL code together with the written query and execute them.
--
-- Observe and compare the results that you got with the recommended result shown in the file 72 - Lab Exercise 3 - Task 1 Result.txt. 
---------------------------------------------------------------------

DECLARE @x XML;
SET @x = N'
<root>
	<customer>
		<code>C001</code>
		<name>Albert</name>
		<age>32</age>
	</customer>
</root>';




---------------------------------------------------------------------
-- Task 2
-- 
-- Write a SELECT statement against the HumanResources.JobCandidate table and return the columns: 
--  JobCandidateID
--  Resume
--  A calculated column in which XQuery is used to retrieve only the element ns:Resume/ns:Name/ns:Name.First from the Resume column. Use the alias XMLFirstName. Declare the namespace ns as http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/Resume.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 73 - Lab Exercise 3 - Task 2 Result.txt. Notice that the data type of the calculated column is XML.
---------------------------------------------------------------------





---------------------------------------------------------------------
-- Task 3
-- 
-- Modify the T-SQL statement in task 2 so that the calculated column returns the value of the element ns:Resume/ns:Name/ns:Name.First as a data type NVARCHAR(50).
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 74 - Lab Exercise 3 - Task 3 Result.txt. 
---------------------------------------------------------------------

