-- Fetch multiple rows using cursor
--Select * from tbl_OrderMaster

Declare @Order_Name nvarchar(100)
Declare @Order_Quantity int
Declare @Order_id int

Declare cr_OrderMaster cursor
	for Select Order_Name,Order_Quantity,Order_Id from tbl_OrderMaster
	Open cr_OrderMaster
		fetch next from cr_OrderMaster into @Order_Name, @Order_Quantity, @Order_Id

		While @@FETCH_STATUS = 0
		Begin
			
			If(@Order_id = 3)
			Begin
				print(concat_ws(' ','Name is',@Order_Name,',Order Quantity is', @Order_Quantity,'Order id',@order_Id))
			End

			fetch next from cr_OrderMaster into @Order_Name, @Order_Quantity, @Order_Id
		End

	Close cr_OrderMaster
Deallocate cr_OrderMaster