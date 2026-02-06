UPDATE Employees SET DepartmentID = 3 WHERE EmployeeID = 1
IF @@ROWCOUNT > 0
	BEGIN
		PRINT 'Rows Affected'
	END
ELSE
	BEGIN
		PRINT 'No Rows Affected'
	END