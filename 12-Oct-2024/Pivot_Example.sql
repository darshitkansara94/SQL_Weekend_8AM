create database SalesDB

create table tbl_Sales
(
	Sales_Id int primary key identity(1,1),
	Region nvarchar(100),
	Sales_Year int,
	Sales decimal(18,2)
)

select * from tbl_Sales

Insert into tbl_Sales(Region,Sales_Year,Sales)
values('North',2019,1000),('South',2020,300),
	('South',2018,600),
	('East',2023,500),('North',2021,600)

Insert into tbl_Sales(Region,Sales_Year,Sales)
values('South',2018,100)

Select Region,ISNULL([2018],0) as [2018],
 isnull([2019],0) as [2019],
 isnull([2020],0) as [2020],
 isnull([2021],0) as [2021],
 isnull([2023],0) as [2023] from 
	(Select Region,Sales_Year,Sales from tbl_Sales) as tbl1
Pivot
	(Sum(Sales) for Sales_Year in ([2018],[2019],[2020],[2021],[2023])) as tbl2
order by tbl2.Region

