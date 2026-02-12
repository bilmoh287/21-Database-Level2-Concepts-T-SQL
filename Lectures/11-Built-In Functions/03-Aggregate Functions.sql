-- Example: Count the number of employees in each department
SELECT Department, COUNT(*) AS EmployeeCount, Max(Salary) AS MaxSalary
FROM Employees2
GROUP BY Department 
ORDER BY MaxSalary DESC

SELECT top 3 Salary FROM Employees2 ORDER BY Salary DESC

SELECT * FROM Employees2  ORDER BY Salary DESC

-- Example: Calculate the total salary for each department
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees2
GROUP BY Department;

-- Example: Calculate the average performance rating for each department
SELECT Department, AVG(PerformanceRating) AS AvgPerformanceRating
FROM Employees2
GROUP BY Department;

-- Example: Find the lowest salary in the company
SELECT MIN(Salary) AS LowestSalary
FROM Employees2;

-- Example: Find the highest salary in the company
SELECT MAX(Salary) AS HighestSalary
FROM Employees2;