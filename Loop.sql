Loop
	To execute the same / unique statement multiple time we can use loop.
	Loop works on condition / expression.
	Condition return in bool value (true / false).


	--Syntax :
		while condition
		Begin
			Statement

			Incremental operator/value
		End
		
	-- Example 
		declare @Count int = 1

		while @Count <= 5
		Begin
			print(@Count)

			set @Count = @Count + 1
		End

		print('Loop Executed')