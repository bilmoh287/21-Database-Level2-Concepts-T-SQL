DECLARE @Year INT; 
DECLARE @Month INT; 
DECLARE @TotalSales DECIMAL(10, 2); 
DECLARE @TotalTransactions INT; 
DECLARE @AverageSales DECIMAL(10, 2);

SET @Year = 2023;
SET @Month = 6;


SELECT @TotalSales = SUM(SaleAmount)
FROM Sales
WHERE YEAR(SaleDate) = @Year AND MONTH(SaleDate) = @Month;

SELECT @TotalTransactions = COUNT(*) 
FROM Sales 
WHERE YEAR(SaleDate) = @Year AND MONTH(SaleDate) = @Month;

SET @AverageSales = @TotalSales / @TotalTransactions;

PRINT 'Monthly Sales Summery';
PRINT 'Year: ' + CASt(@Year AS VARCHAR) +', Month: ' + CASt(@Month AS VARCHAR);
PRINT 'Total Sales: ' + CAST(@TotalSales AS VARCHAR);
PRINT 'Total Transactions: ' + CAST(@TotalTransactions AS VARCHAR);
PRINT 'Averag Sales: ' + CAST(@AverageSales AS VARCHAR);

