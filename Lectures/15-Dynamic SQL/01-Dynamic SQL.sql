CREATE PROCEDURE GenerateDynamicSQL1
    @TableName NVARCHAR(128)
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);
    SET @SQL = 'SELECT * FROM ' + @TableName;
    EXECUTE(@SQL);
END

CREATE PROCEDURE GenerateDynamicSQL2
    @TableName NVARCHAR(128)
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);
    SET @SQL = N'SELECT * FROM ' + QUOTENAME(@TableName);
    EXEC sp_executesql @SQL;
END

--- How to use ----------
DECLARE @RC INT;
DECLARE @Table NVARCHAR(128);
SET @Table = 'Students';

EXECUTE @RC = dbo.GenerateDynamicSQL1
	@Table

EXECUTE @RC = dbo.GenerateDynamicSQL1
	@Table