Database Transaction :
	Commit
		When we wna to insert a data into table permenant then we need to use commit.
		Commit is one type of DB transaction which maintain the state of the insert. Update or delete 
			statement.
		Once commit is done we can only update or delete data using sql statement.

		-- Syntax
			
			Begin transaction tr_name
				Insert/ Update / Delete statement
			Commit transaction tr_name

		-- Example :
			Select * from tbl_CategoryMaster

			Begin transaction tr_Insertcategory
				Insert into tbl_CategoryMaster(Category_Name)
				values('Transaction Check 1')
			Commit transaction tr_Insertcategory
	Rollback :
		Rollback reverse the previous transactin and remove all the data from
			affected tables.
		once commit is done we can not rollback data.

		-- Synatx :
			Begin Transaction tr_name
				Insert/ Update / Delete statement
			Rollback transaction tr_name

		-- Example
			Prefer SP

			exec sp_InsertcategoryTransaction
				@Category_Name = 'Test5'

			select * from tbl_CategoryMaster
			select * from tbl_CategoryMasterLog
		
		