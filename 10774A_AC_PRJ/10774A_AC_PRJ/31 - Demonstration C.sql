-- Demonstration A

-- Step 1: Open a new query window to the AdventureWorks2008R2 database
USE AdventureWorks2008R2;
GO
--Select and execute the following queries to illustrate 
--simple XQuery expressions


--Show JobCandidate table
--Click through into a Resume to show the XML
SELECT JobCandidateID, Resume
FROM HumanResources.JobCandidate;

--Extract email from each candidate
SELECT JobCandidateID, Resume.value('declare namespace ns="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/Resume";
	(/ns:Resume/ns:EMail)[1]','nvarchar(20)') AS [email]
FROM HumanResources.JobCandidate;

--Use XQuery Query method to return
--Exmployment location data in XML format
--for candidates with experience in WA.
select JobCandidateID, Resume.query('declare namespace ns="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/Resume";
/ns:Resume/ns:Employment/ns:Emp.Location/ns:Location[ns:Loc.State="WA "]') AS WA_Emps
FROM HumanResources.JobCandidate;

