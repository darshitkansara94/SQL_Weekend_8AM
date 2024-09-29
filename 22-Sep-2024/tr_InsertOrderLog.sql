Alter trigger tr_InsertOrderLog
on tbl_OrderMaster
For Insert
As
Begin
	Declare @Order_Quantity int
	Declare @Order_Amount decimal(18,2)
	Declare @Order_Id int
	Declare @Order_Name nvarchar(50)
	Declare @User_Id int

	Select @Order_Quantity = Order_Quantity from inserted
	Select @Order_Amount = Order_Amount from inserted
	Select @Order_Id = Order_Id from inserted
	Select @Order_Name = Order_Name from inserted
	Select @User_Id = User_Id from inserted

	Insert into tbl_OrderMasterLog(Log_Description,Log_Date,Inserted_By)
	Values(CONCAT_WS(' ','Data inserted with the order name', @Order_Name,'with order id',@Order_Id),
		GETDATE(),@User_Id)

	Update tbl_OrderMaster set
		Order_Total = @Order_Quantity * @Order_Amount
	Where
		Order_Id = @Order_Id
End