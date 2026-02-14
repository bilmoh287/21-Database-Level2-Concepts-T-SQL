CREATE FUNCTION dbo.GetAverageGrade(@Subject NVARCHAR(50))
RETURNS INT
AS
BEGIN
	DECLARE @AverageGrade INT
	SELECT @AverageGrade = AVG(Grade) 
	FROM Students WHERE Subject = @Subject

	RETURN @AverageGrade
END;

---USAGE OF Scaler Functions

--- Normal Way----
SELECT Name, Subject, (SELECT AVG(Grade) FROM Students WHERE Subject = T.Subject) FROM Teachers T;

--- Scaler Function Way
SELECT Name, Subject, dbo.GetAverageGrade(Subject) FROM Teachers;