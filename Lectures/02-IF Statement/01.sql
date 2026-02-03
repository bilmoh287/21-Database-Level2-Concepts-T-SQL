Declare @a int, @b int;
set @a = 20;
set @b=10;

IF @a > @b
	BEGIN
		PRINT 'Yes A is greater than B'
	END