Alter trigger tr_InsertProduct
on tbl_ProductMaster
For Insert
As
Begin
	-- Maintain a log for productMaster

	Declare @Product_Name nvarchar(100)
	Declare @Created_By int
	Declare @Product_Id int

	Select @Product_Name = Product_Name from inserted
	Select @Created_By = User_Id from inserted
	Select @Product_Id = Product_Id from inserted	

	Insert into tbl_ProductMasterLog(Log_Description,Created_Date, Inserted_By)
	values(CONCAT_WS(' ','executed through SP. Insert product name is',@Product_Name),getdate(),@Created_By)

	--Update tbl_ProductMaster
	--	set Created_Date = GETDATE()
	--where Product_Id = @Product_Id
End