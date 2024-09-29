Create table tbl_OrderMaster
(
	Order_Id int primary key identity(1,1),
	Order_Name nvarchar(50),
	Order_Quantity int,
	Order_Amount decimal(18,2),
	Order_Total decimal(18,2),
	User_id int
)

create table tbl_OrderMasterLog
(
	Log_Id int primary key identity(1,1),
	Log_Description nvarchar(500),
	Log_Date datetime,
	Inserted_By int
)

select * from tbl_OrderMaster
select * from tbl_OrderMasterLog

Insert into tbl_OrderMaster(Order_Name,Order_Quantity,Order_Amount,User_id)
values('Noise Watch',10,4000,1)

Update tbl_OrderMaster set Order_Name = 'Beat Watch'
where Order_Id = 2

exec sp_InsertOrderMaster
	@Order_Name = 'Crossbeat',
	@Order_Quantity = 1,
	@Order_Amount = 4000

	Delete from tbl_OrderMaster where Order_Id = 5

Select * from tbl_UserMaster

Insert into tbl_OrderMaster(Order_Name,Order_Amount,Order_Quantity,User_Id)
values('Apple IPhone',15,100000,2)