Create procedure sp_InsertOrderMaster
(
	@Order_Name nvarchar(100),
	@Order_Quantity int,
	@Order_Amount decimal(18,2)
)
As
Begin
	Insert into tbl_OrderMaster(Order_Name,Order_Quantity,Order_Amount)
	values(@Order_Name,@Order_Quantity,@Order_Amount)
End