IF NOT EXISTS (SELECT * FROM Employees WHERE Name = 'Jane Doe')
	BEGIN
		PRINT 'Yes, Record Exists'
	END
ELSE
	BEGIN
		PRINT 'No, Record Exists'
	END