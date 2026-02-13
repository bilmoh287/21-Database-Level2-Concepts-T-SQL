

SELECT *, RANK() OVER (ORDER BY Grade Desc) AS GradeRank FROM Students;

-- OR --

SELECT 
    StudentID, 
    Name, 
    Subject, 
    Grade,
    ROW_NUMBER() OVER (ORDER BY Grade DESC) AS GradeRank
FROM 
    Students;