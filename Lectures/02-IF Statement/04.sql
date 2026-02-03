Declare @Max INT;
Declare @a INT, @b INT;

SET @a = 30; 
SET @b = 20;

IF @a > @b
	SET @Max = @a
ELSE
	SET @Max = @b

PRINT 'Max : ' + CAST(@Max AS VARCHAR)

DECLARE @age INT;
SET @age = 25;


IF @age >= 18
BEGIN
    PRINT 'Adult'
END
ELSE
BEGIN
    PRINT 'Minor'
END