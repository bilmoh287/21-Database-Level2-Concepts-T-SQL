DECLARE @Row INT = 1;
DECLARE @Col INT;
DECLARE @Res INT;

WHILE @Row <= 10
	BEGIN
		SET @Col = 1;
		WHILE @Col <= 10
			BEGIN
				SET @Res = @Row * @Col;
				PRINT CAST(@Row AS VARCHAR) + ' * ' + CAST(@Col AS VARCHAR) + ' = ' + CAST(@Res AS VARCHAR)
				SET @Col = @Col + 1;
			END
		SET @Row = @Row + 1;
	END;	