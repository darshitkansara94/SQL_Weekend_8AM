alter trigger tr_UpdateProduct
On tbl_ProductMaster
For Update
As
Begin
	Declare @Product_Name nvarchar(100)
	Declare @Product_Price decimal(18,2)

	Select @Product_Name = Product_Name from inserted
	Select @Product_Price = Product_Price from inserted

	Insert into tbl_ProductMasterLog(Log_Description,Created_Date)
	values(CONCAT_WS(' ','Updated Prodct name is',@Product_Name, 'And price is',@Product_Price),GETDATE())
End