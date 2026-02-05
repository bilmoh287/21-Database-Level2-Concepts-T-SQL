SELECT *, Bonus = 
	CASE 
		WHEN Department = 'IT' THEN
			CASE
				WHEN PerformanceRating > 90 THEN Salary * 0.15
				WHEN PerformanceRating BETWEEN 75 AND 90 THEN Salary * 0.10
				ELSE Salary * 0.05
			END
		WHEN Department = 'Marketing' THEN
			CASE
				WHEN PerformanceRating > 90 THEN Salary * 0.1
				WHEN PerformanceRating BETWEEN 75 AND 90 THEN Salary * 0.08
				ELSE Salary * 0.04
			END
		ELSE
			CASE
				WHEN PerformanceRating > 90 THEN Salary * 0.08
				WHEN PerformanceRating BETWEEN 75 AND 90 THEN Salary * 0.06
				ELSE Salary * 0.03
			END
	END
FROM Employees2