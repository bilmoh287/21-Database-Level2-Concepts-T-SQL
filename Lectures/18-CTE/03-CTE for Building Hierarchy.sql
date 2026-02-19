SELECT * FROM Employees7;

WITH EmployeeTreeHierarchy AS
(
	SELECT EmployeeID, ManagerID, Name,
	CAST(Name AS nvarchar(MAX)) AS 'Hierarchy', 0 Level
	FROM Employees7
	WHERE ManagerID IS NULL

	UNION ALL

	SELECT e.EmployeeID, e.ManagerID, e.Name,
	CAST(ETH.Hierarchy + ' -> ' + e.Name AS nvarchar(MAX)),
	ETH.Level + 1 
	FROM Employees7 e
	INNER JOIN EmployeeTreeHierarchy ETH ON e.ManagerID = eth.EmployeeID
)
SELECT * FROM EmployeeTreeHierarchy
ORDER BY Level;
