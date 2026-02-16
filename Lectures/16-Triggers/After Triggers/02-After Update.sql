CREATE TRIGGER trg_AfterUpdateStudent ON Students
AFTER UPDATE
AS
IF UPDATE(Grade)
BEGIN
	INSERT INTO	StudentUpdateLog(StudentID, OldGrade, NewGrade)
	SELECT i.StudentID, d.Grade AS OldGrade, i.Grade AS NewGrade
	FROM inserted i
	INNER JOIN deleted d ON i.StudentID = d.StudentID
END;

--- Usage---

UPDATE Students
SET Grade = 88
WHERE StudentID = 1;

SELECT * FROM StudentUpdateLog;