create function fn_ReturnTableWithGSTAndDiscountWithJoin
(
	@Cart_Id uniqueidentifier	
)
Returns table
As
	return (select tcm.Company_Name,concat_ws(' ',tur.FirstName,tur.LastName) as FullName,tsc.Cart_Id,tsc.ItemPrice,tsc.ItemQuantity,
	dbo.fn_TotalAmountWithGSTAndDiscount(tsc.ItemPrice,tsc.ItemQuantity,9,10) as FinalAmount
	from tbl_ShoppingCartMaster tsc
		Inner join tbl_CompanyMaster tcm on tsc.Company_Id = tcm.Company_ID 
		Inner join tbl_UserRegistration tur on tsc.Register_Id = tur.Register_Id
	where Cart_Id = @Cart_Id)