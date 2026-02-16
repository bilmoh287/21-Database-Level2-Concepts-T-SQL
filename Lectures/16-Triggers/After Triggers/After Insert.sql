CREATE TRIGGER trg_AfterInsertStudent ON Students
AFTER INSERT

AS
BEGIN
  
    INSERT INTO StudentInsertLog(StudentID, Name, Subject, Grade)
    SELECT StudentID, Name, Subject, Grade FROM inserted;

END;

-- Inserting a new student
INSERT INTO Students (StudentID, Name, Subject, Grade)
VALUES (110, 'ALi Doe', 'Mathematics', 75);

-- Checking the log table
SELECT * FROM StudentInsertLog;