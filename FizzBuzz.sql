use TestDB

--Just a fun silly easy implementation of a fizzbuzz type test in T-SQL

set nocount on
declare @i as int = 1;

while (@i <= 100)
	BEGIN		
			select 		
			 CASE WHEN @i % 3 = 0 AND @i %5 = 0 THEN 'fizzbuzz' 
			 WHEN (@i % 3) = 0 THEN 'fizz' 
			 WHEN @i % 5 = 0 THEN 'buzz'
			 else CAST(@i as Varchar(100))
			 END
		set @i = 1 + @i
	END

