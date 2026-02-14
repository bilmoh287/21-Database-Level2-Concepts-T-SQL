
----------

CREATE FUNCTION [dbo].[GetStudentsBySubject]
(
@Subject NVARCHAR(50)
)
RETURNS TABLE
AS RETURN
(
SELECT * FROM Students WHERE Subject = @Subject
)

CREATE FUNCTION [dbo].[GetThreeTopStudentBySubject] (@Subject NVARCHAR(50) , @NumberOfStudents INT)
RETURNS @Result TABLE
(
StudentID INT ,
Name NVARCHAR(50) , 
Subject NVARCHAR(50) ,
Grade INT
)
AS
BEGIN
	INSERT INTO @Result(StudentID , Name , Subject , Grade)
	SELECT TOP (@NumberOfStudents) StudentID , Name , Subject , Grade FROM GetStudentsBySubject(@Subject) 
	ORDER BY Grade DESC
	RETURN
END

CREATE FUNCTION dbo.GetThreeTopStudentWithTeacherBySubject (@Subject NVARCHAR(50) , @NumberOfStudents INT)
RETURNS @Result TABLE
(
StudentID INT ,
StudentName NVARCHAR(50) , 
TeacherName NVARCHAR(50) , 
Subject NVARCHAR(50) ,
Grade INT
)
AS
BEGIN
	INSERT INTO @Result(StudentID , StudentName , TeacherName, Subject , Grade)
	SELECT s.StudentID , s.Name AS StudentName , t.Name AS TeacherName , s.Subject  , s.Grade
	FROM GetThreeTopStudentBySubject(@Subject , @NumberOfStudents) INNER JOIN Teachers t 
	ON s.Subject = t.Subject
	ORDER BY s.Grade DESC

	RETURN
END


SELECT StudentID , StudentName , TeacherName , Subject  , Grade
FROM GetTopStudentsWithTeacherNameBySubject('Math' , 2)