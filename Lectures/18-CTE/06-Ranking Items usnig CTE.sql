WITH SalesTotal As
(
	SELECT EmployeeID, SUM(SaleAmount) AS TotalSales
	FROM SalesRecords
	GROUP BY EmployeeID
),

RankedSales AS
(
	SELECT EmployeeID, TotalSales,
	RANK() OVER (ORDER BY TotalSales DESC) AS SalesRank
	FROM SalesTotal
)
SELECT * FROM RankedSales;