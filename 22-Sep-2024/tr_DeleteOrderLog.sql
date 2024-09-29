Create trigger tr_DeleteOrderLog
on tbl_OrderMaster
For Delete
As
Begin
	Declare @Order_Name nvarchar(50)
	Declare @Order_Id int

	Select @Order_Name = Order_Name from deleted
	Select @Order_Id = Order_Id from deleted

	Insert into tbl_OrderMasterLog(Log_Description,Log_Date)
	Values(CONCAT_WS(' ','Data Deleted with name',@Order_Name,'with order id',@Order_Id),GETDATE())
End