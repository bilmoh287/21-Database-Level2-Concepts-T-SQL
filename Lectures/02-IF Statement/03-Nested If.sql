Declare @Grade INT;
set @Grade = 75;

IF @Grade >= 90
    BEGIN
        PRINT 'A'
    END
ELSE 
	IF @Grade >= 85
		BEGIN
			PRINT 'B'
		END
	ELSE
		BEGIN
			PRINT 'C'
		END;