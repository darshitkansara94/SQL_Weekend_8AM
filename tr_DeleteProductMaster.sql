create trigger tr_DeleteProductMaster
On tbl_ProductMaster
for Delete
As
Begin
	Declare @Product_Name nvarchar(100)

	Select @Product_Name = Product_name from deleted

	Insert into tbl_ProductMasterLog(Log_Description,Created_Date)
	values(CONCAT_WS(' ','Deleted Prodct name is',@Product_Name),GETDATE())
End