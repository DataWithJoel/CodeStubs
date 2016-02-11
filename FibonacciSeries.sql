use TESTDB

--Fun Easy implementation of how to get the all the numbers of the fibonacci series up to the nth term. This implementation just skips 0

DECLARE @v1 as int = 0
DECLARE @v2 as int = 1;
DECLARE @Total as int = 0;
DECLARE @NthNumOfSequence as int = 7;
DECLARE @i as int = 0;

WHILE (@i < @NthNumOfSequence)
	BEGIN
		SET @Total = @v2 + @v1
		IF @i != 0 SET @v1 = @v2
		if @i != 0 SET @v2 = @Total
		SET @i = @i + 1
		PRINT @Total
	END
		


