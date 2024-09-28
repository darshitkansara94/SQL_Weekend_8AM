--Create table tbl_CategoryMasterLog
--(
--	CategoryLog_Id int primary key identity(1,1),
--	Category_Name nvarchar(150),
--	Company_Id int,
--	Created_Date datetime default getdate(),
--	User_Id int,
--	Description nvarchar(500),
--  Category_Status nvarchar(100)
--)

select * from tbl_CategoryMaster

Select * from tbl_CategoryMasterLog

Insert into vw_CategoryMasterLog(Category_Name,Company_Id,Created_Date,User_Id)
values('Watch',1,GETDATE(),1)

Insert into tbl_CategoryMasterLog(Category_Name,Company_Id,Created_Date,User_id,Description,
Category_Status)
Select Category_Name,1 as Company_Id,GETDATE() as Created_Date,1 as User_id,
'Data is Approved' as Description,'Approved' as Category_Status
from tbl_CategoryMasterLog
where CategoryLog_id = 5


---------------------------------------------------------------------------

Insert into tbl_CategoryMaster(Category_Name,User_Id,Created_Date)
values('AC',1,GETDATE())
