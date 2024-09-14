create function fn_ReturnTableWithGSTAndDiscount
(
	@Cart_Id uniqueidentifier
)
Returns table
As
	return (select tsc.Cart_Id,tsc.ItemPrice,tsc.ItemQuantity,
	dbo.fn_TotalAmountWithGSTAndDiscount(tsc.ItemPrice,tsc.ItemQuantity,9,10) as FinalAmount
	from tbl_ShoppingCartMaster tsc		
	where Cart_Id = @Cart_Id)