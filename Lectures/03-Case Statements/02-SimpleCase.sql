SELECT EmployeeID,  
	CASE DepartmentID
		WHEN 1 THEN 'HR'
		WHEN 2 THEN 'Marketing'
		WHEN 3 THEN 'Sales'
		WHEN 4 THEN 'IT'
		ELSE 'Other'
	END AS DepartmentName
FROM Employees