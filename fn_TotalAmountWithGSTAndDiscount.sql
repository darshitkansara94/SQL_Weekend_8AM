create function fn_TotalAmountWithGSTAndDiscount
(
	@Quantity int,
	@ItemPrice decimal(18,2),
	@GST int,
	@Discount decimal(18,2)
)
Returns Decimal(18,2)
As
Begin
	Declare @TotalPriceWithoutGST decimal(18,2)
	Declare @TotalPriceWithGST decimal(18,2)
	Declare @TotalWithGSTAndDiscount decimal(18,2)

	-- Total Price without GST and Discount
	Set @TotalPriceWithoutGST = @Quantity * @ItemPrice

	-- Set Total price with GST
	Set @TotalPriceWithGST = ((@TotalPriceWithoutGST * @GST) / 100) + @TotalPriceWithoutGST

	-- Total amount with Discount and GST
	Set @TotalWithGSTAndDiscount = @TotalPriceWithGST - @Discount

	return @TotalWithGSTAndDiscount
End