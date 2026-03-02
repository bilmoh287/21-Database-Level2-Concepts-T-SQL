RESTORE DATABASE [StudentDB]
FROM DISK = 'C:\StudentsDB.bak' 
WITH REPLACE,
MOVE 'StudentsDB' TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQL22\MSSQL\DATA\StudentDB.mdf',
MOVE 'StudentsDB_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQL22\MSSQL\DATA\StudentDB_log.ldf';
GO