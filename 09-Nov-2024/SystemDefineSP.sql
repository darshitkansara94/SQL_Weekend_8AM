System Defined Store procedure 
	sp_helptext
		sp_helptext '[sys].[sp_rename]'

		sp_helptext '[tr_categoryinsert]'
	sp_help
		sp_help '[dbo].[sp_InsertOrderMaster]'
	sp_rename
		-- Table rename
		exec sp_rename '[dbo].[[dbo]].[tbl_Binary]]]','[tbl_Binary]'

		-- Column rename
		exec sp_rename '[dbo].[Emp_Sal].Salary','Emp_Salary','column'

	