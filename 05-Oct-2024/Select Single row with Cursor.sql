-- select * from tbl_OrderMaster

-- Return a value from first row only using cursor
Declare @Order_Name nvarchar(100)
Declare @Order_Amount decimal(18,2)

Declare cr_OrderMaster cursor
	for Select Order_Name,Order_Amount from tbl_OrderMaster
	Open cr_OrderMaster
		fetch next from cr_OrderMaster into @Order_Name, @Order_Amount

		print(concat_ws(' ','Name is',@Order_Name,',Order Amount is', @Order_Amount))		
	Close cr_OrderMaster
Deallocate cr_OrderMaster