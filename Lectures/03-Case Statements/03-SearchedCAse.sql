SELECT SaleID, SaleAmount,
	CASE 
		WHEN SaleAmount <= 100 THEN 'Weak'
		WHEN SaleAmount BETWEEN 101 AND 200 THEN 'Good'
		WHEN SaleAmount BETWEEN 201 AND 300 THEN 'Very Good'
		WHEN SaleAmount > 300 THEN 'Excellent'
		ELSE 'Not Specified'
	END AS SaleLevel1
FROM Sales