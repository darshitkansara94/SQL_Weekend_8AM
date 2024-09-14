select * from tbl_ShoppingCartMaster

select dbo.fn_Addition(10,20) as Addition -- 10 + 10 = 20

--10 * 12 = 120 Total Amount
--120 * 0.9 = 10.8 --GST
--120 + GST - 10 = 100 

select dbo.fn_TotalAmountWithGSTAndDiscount(10, 12, 9, 10) as TotalPrice

Select Cart_Id,ItemQuantity,ItemPrice, 
dbo.fn_TotalAmountWithGSTAndDiscount(ItemQuantity,ItemPrice,9,10) as FinalAmount
from tbl_ShoppingCartMaster