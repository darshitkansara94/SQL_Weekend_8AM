alter trigger tr_CategoryMasterLog
On vw_CategoryMasterLog
Instead of Insert
As
Begin
	Insert into tbl_CategoryMasterLog(Category_Name,Company_Id,Created_Date,User_Id,
		Description,Category_Status)
	Select Category_Name,Company_Id,Created_Date,User_Id,
		Description,'Pending For Approval' 
	from inserted
End