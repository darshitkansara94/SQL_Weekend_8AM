Create trigger tr_CategoryMaster
On tbl_CategoryMaster
Instead of Insert
As
Begin
	Declare @Category_Name nvarchar(100)

	Select @Category_Name = Category_Name from inserted

	Insert into tbl_CategoryMasterLog(Category_Name,Company_Id,Created_Date,User_Id,
		Description,Category_Status)
	values(@Category_Name,1,GETDATE(),1,
		'Request for Approval','Pending For Approval')	
End