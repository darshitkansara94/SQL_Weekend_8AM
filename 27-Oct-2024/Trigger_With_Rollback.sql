Alter trigger tr_categoryinsert 
	On tbl_categorymaster
After insert
As
Begin
	Declare @Company_Id int

	Select @Company_Id = Company_Id from inserted	

	 print(@Company_Id)

	if(@Company_Id = 0)
	Begin
		print('Company Id is 0')

		Rollback Transaction

		-- raiserror('Transaction has been terminated',16,2)		
	End

	Insert into tbl_CategoryMasterLog(Category_Name,Company_Id)
	Select Category_Name,Company_Id from inserted

	Insert into tbl_CategoryMaster(Category_Name, Company_Id,Created_Date,User_Id,IsActive)
	values('Test 6',1,GETDATE(),1,1)

	Insert into tbl_CategoryMasterLog(Category_Name,Company_Id)
	Select Category_Name,Company_Id from inserted
End