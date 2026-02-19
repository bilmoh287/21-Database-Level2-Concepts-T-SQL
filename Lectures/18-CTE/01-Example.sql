---SUBQUERY---
SELECT * FROM
(
	SELECT EmployeeId, Name, Sales FROM Employees6 
	WHERE Department = 'Sales'

) SalesStuff;

----CTE---

WITH SalesStuff AS
(
	SELECT EmployeeId, Name, Sales FROM Employees6 
	WHERE Department = 'Sales'
)
SELECT * FROM SalesStuff;

--SUBQUERY---

SELECT *FROM
(
	SELECT Department, SUM(Sales) AS TotalSales
	FROM Employees6
	GROUP BY Department 
) DepartmentSales
ORDER BY TotalSales DESC

---CTE-------
WITH DepartmentSales AS
(
	SELECT Department, SUM(Sales) AS TotalSales
	FROM Employees6
	GROUP BY Department 
)
SELECT * FROM DepartmentSales
ORDER BY TotalSales DESC