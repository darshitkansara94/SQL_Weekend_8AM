Cursor :
	Cursor is fetching row by row data from table.
	It is a similar to loop.
	We need to deallocate memory after execution is completed.
	Cursor is slow in execution and it impact on the performance of output.

	-- Syntax 
		Declare cursor_name cursor
			for select_statement
			Open cursor_name
				fetch next from cursor_name into variable_name
			close cursor_name
		Deallocate cursor_name

		-- With Procedure
		Create procedure sp_Name
		(
			-- Parameters
		)
		As
		Begin
			Declare cursor_name cursor
				for select_statement
				Open cursor_name
					fetch next from cursor_name into variable_name
				close cursor_name
			Deallocate cursor_name
		End

		-- Cursor with Multiple row
		Declare cursor_name cursor
			for Select_Statement
			Open cursor_name
				fetch next from cursor_name into variable_name

				while @@FETCH_STATUS = 0
				Begin
					-- Data manipulation

					fetch next from cursor_name into variable_name
				End
			Close cursor_name
		Deallocate cursor_name
