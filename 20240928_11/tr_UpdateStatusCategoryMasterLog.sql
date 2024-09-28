-- Insert value on Main table only status is 'Approved'.
-- This trigger is execute when data is insert into table tbl_CategoryMasterLog 

Create trigger tr_UpdateStatusCategoryMasterLog
On tbl_CategoryMasterLog
For Insert
As
Begin
	Declare @Status nvarchar(100)

	Select @Status = Category_Status from inserted

	If(@Status = 'Approved')
	Begin
		Insert into tbl_CategoryMaster(Category_Name,Company_Id,Created_Date,User_Id,IsActive)
		Select Category_Name,1,GETDATE(),2,1 from inserted
	End
End