SELECT PerformanceCatagory, COUNT(*) AS NumberOfEmployees, AVG(Salary) AS AvgSalary
FROM ( SELECT Name, Department, Salary,
	 CASE
		 WHEN PerformanceRating >= 90 THEN 'High'
		 WHEN PerformanceRating >= 60 THEN 'Medium'
		 ELSE 'Low'
	END AS PerformanceCatagory
from Employees2) AS Sub
GROUP BY PerformanceCatagory;