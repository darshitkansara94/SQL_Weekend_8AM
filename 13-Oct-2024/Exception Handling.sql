Exception Handling :
	
	try:
		try contains actual code block which we need to execute.
		Once code throw error then compiler move to catch block and stop execution in try block.

	catch :
		catch block contains error handling.

	-- Syntax :
		Begin try
			 -- Actual logic
		End try
		Begin catch
			-- Error handling
		End catch

	-- Example
		Begin try
			Insert into tbl_CategoryMaster(Category_Name,IsActive)
			values('Test',1)

			print('Execution success')
		End try
		Begin catch			
			print('Insertion failed')
		End catch

		-- Example
		Begin try
			declare @name nvarchar(50) = 'Test'
			
			if(@name = 1)
			Begin
				print('Value matched')
			End
			Else
			Begin
				print('Value not matched')
			End
		End try
		Begin catch
			print('Error occured')
		End catch
		
	

	truncate table tbl_CategoryMaster



	