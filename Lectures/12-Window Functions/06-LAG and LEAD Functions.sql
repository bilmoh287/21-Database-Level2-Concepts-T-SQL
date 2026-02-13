SELECT StudentID, 
	Name, 
	Subject,
	LAG(Grade, 1) OVER (ORDER BY Grade DESC) AS PreviosGrade,
	Grade,
	LEAD(Grade, 1) OVER (ORDER BY Grade DESC) AS NextGrade
FROM Students