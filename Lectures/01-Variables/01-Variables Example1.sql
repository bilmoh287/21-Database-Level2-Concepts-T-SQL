
use C21_DB1;

-- Step 1: Declare variables
DECLARE @DepartmentID INT; 
DECLARE @StartDate DATE; 
DECLARE @EndDate DATE; 
DECLARE @TotalEmployees INT; 
DECLARE @DepartmentName VARCHAR(50);

-- Step 2: Initialize variables
SET @DepartmentID = 3; 
SET @StartDate = '2023-01-01'; 
SET @EndDate = '2023-12-31';

-- Step 3: Retrieve department name based on department ID
SELECT @DepartmentName = Name FROM Departments WHERE DepartmentID = @DepartmentID;

-- Step 4: Calculate the total number of employees in the specified department
SELECT @TotalEmployees = COUNT(*) 
FROM Employees 
WHERE DepartmentID = @DepartmentID 
AND HireDate BETWEEN @StartDate AND @EndDate;

-- Step 5: Print the report
PRINT 'Department Report';
PRINT 'Department Name: ' + @DepartmentName;
PRINT 'Reporting Period: ' + CAST(@StartDate AS VARCHAR) + ' to ' + CAST(@EndDate AS VARCHAR);
PRINT 'Total Employees Hired in ' + CAST(YEAR(@StartDate) AS VARCHAR) + ': ' + CAST(@TotalEmployees AS VARCHAR);
