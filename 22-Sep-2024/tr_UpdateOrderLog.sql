alter trigger tr_UpdateOrderLog
On tbl_OrderMaster
After Update
As
Begin
	
	Declare @Order_Id int
	Declare @Order_Name nvarchar(50)	
	Declare @User_Id int

	Select @Order_Id = Order_Id from inserted
	Select @Order_Name = Order_Name from inserted
	Select @User_Id = User_Id from inserted

	Insert into tbl_OrderMasterLog(Log_Description,Log_Date,Inserted_by)
	Values(CONCAT_WS(' ','Data Updated with name',@Order_Name,'with order id',@Order_Id),GETDATE(),@User_Id)
End