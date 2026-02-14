
---EXECUTE----
CREATE FUNCTION CalculateBonus (@PerformanceRating INT, @Salary INT)
RETURNS INT
AS
BEGIN
	DECLARE @Bonus INT
	IF @PerformanceRating >=  5
		SET @Bonus = @Salary * 0.1
	ELSE
		SET @Bonus = @Salary * 0.05

	RETURN @Bonus 
END;

---Usage--

SELECT *, dbo.CalculateBonus(PerformanceRating, Salary) AS BonusAmount FROM Employees2