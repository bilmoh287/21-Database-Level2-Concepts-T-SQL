SELECT s.Name, s.Name, s.StudentID, t.Name, s.Grade
FROM dbo.GetSudentsBySubject('Math') s
JOIN Teachers t ON s.Subject = t.Subject
WHERE Grade >= 80