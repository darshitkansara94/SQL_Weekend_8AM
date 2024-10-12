Create table tbl_ProductMaster
(
	Product_Id int primary key identity(1,1),
	Product_Name nvarchar(100),
	SubProduct_Name nvarchar(100),
	Price decimal(18,2)
)

Insert into tbl_ProductMaster(Product_Name,SubProduct_Name,Price)
values('Electronic','Watch',5000),
('Cloth','Jeans',1500),
('Plant','Snake Plant',150),
('Electronic','Mobile phone',20000),
('Electronic','Speaker',5000),
('Cloth','Tshirt',200),
('Plant','Money Plant',200),
('CLoth','Kurta',300),
('Electronic','Watch',1000)

Select * from tbl_ProductMaster

Select ISNULL(Product_Name,'Total') as Product_Name,
	IsnuLL(SubProduct_Name,'Total Amount') as SubProduct_Name,
	sum(price) as Price
from 
	tbl_ProductMaster
group by 
	rollup(Product_Name,SubProduct_Name)
---- Cube
Select ISNULL(Product_Name,'Total') as Product_Name,
	IsnuLL(SubProduct_Name,'Total Amount') as SubProduct_Name,
	sum(price) as Price
from 
	tbl_ProductMaster
group by 
	cube(Product_Name,SubProduct_Name)
order by Product_Name