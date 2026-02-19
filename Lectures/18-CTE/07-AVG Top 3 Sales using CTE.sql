WITH SalesTotal As
(
	SELECT EmployeeID, SUM(SaleAmount) AS TotalSales
	FROM SalesRecords
	GROUP BY EmployeeID
),

TopSalesEmployees AS
(
	SELECT TOP 3 EmployeeID, TotalSales
	FROM SalesTotal
	ORDER BY TotalSales DESC
)
SELECT AVG(TotalSales) AS AverageTopSales FROM TopSalesEmployees;