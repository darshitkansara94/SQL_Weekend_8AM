Alter procedure sp_InsertcategoryTransaction
(
	@Category_Name nvarchar(100)
)
As
Begin
	Begin try
		Begin transaction tr_InsertCategory
			Insert into tbl_CategoryMaster(Category_Name)
			values(@Category_Name)

			Insert into tbl_CategoryMasterLog(Category_Name,Created_Date)
			values(@Category_Name,'2024-12-12 10:45:25.917')
		Commit transaction tr_InsertCategory
	End try
	Begin catch
		print('Some insertion fail')

		Rollback transaction tr_InsertCategory
	End catch
End