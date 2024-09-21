alter procedure sp_InsertProduct
(
	@Product_Name nvarchar(100),
	@Product_Price decimal(18,2),
	@Product_Quantity int,
	@User_Id int
)
As
Begin
	Declare @Product_Id int

	Insert into tbl_ProductMaster(Product_Name,Product_Price,Product_Qunatity,User_Id,Created_Date)
	values(@Product_Name,@Product_Price,@Product_Quantity,@User_Id,GETDATE())

	Select @Product_Id = SCOPE_IDENTITY()

	print(@Product_Id)

	Update tbl_ProductMaster
		set Product_Price = 4000,
			Product_Name = @Product_Name
	where Product_Id = @Product_Id
End