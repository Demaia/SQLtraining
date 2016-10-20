---------------------------------------------------------------------
-- LAB Appendix C
--
-- Exercise 3
---------------------------------------------------------------------

USE AdventureWorks2008R2;
GO

---------------------------------------------------------------------
-- Task 1
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

SELECT 
	@x.query('*') AS completesequence,
	@x.query('/root/customer/name') AS elementcustname,
	@x.query('data(/root/customer/name)') AS elementcustnamedata,
	@x.query('<result>Customer name is { string((/root/customer/name)[1]) } and age is { string((/root/customer/age)[1]) }.</result>') AS newelement;

---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------

SELECT 
	JobCandidateID, Resume, 
	Resume.query(
		'declare namespace ns="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/Resume";
		ns:Resume/ns:Name/ns:Name.First'
	) AS XMLFirstName
FROM HumanResources.JobCandidate;


---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

SELECT 
	JobCandidateID, Resume, 
	Resume.value(
		'declare namespace ns="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/Resume";
		(/ns:Resume/ns:Name/ns:Name.First)[1]','NVARCHAR(50)'
	) AS CandidateName
FROM HumanResources.JobCandidate;
