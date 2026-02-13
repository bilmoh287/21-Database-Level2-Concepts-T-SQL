SELECT 
    StudentID, 
    Name, 
    Subject, 
    Grade,
    RANK() OVER (ORDER BY Grade DESC) AS GradeRank
FROM 
    Students;