SELECT *, dbo.CalculateBonus(PerformanceRating, Salary) AS BonusAmount FROM Employees2

CREATE FUNCTION GetSudentsBySubject(@Subject NVARCHAR(50))
RETURNS TABLE
AS
RETURN
(
	SELECT * FROM Students
	WHERE Subject = @Subject
)

--USAGE---

SELECT * FROM dbo.GetSudentsBySubject('Math')

SELECT AVG(Grade) AS AverageGrade FROM dbo.GetSudentsBySubject('Science')
