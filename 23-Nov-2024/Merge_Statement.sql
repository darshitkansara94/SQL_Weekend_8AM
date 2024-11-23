Merge Statement:
	Merge statement is used for Insert. Update and delete operation.
	It makes simpler for Insert. Update and delete.
	Working mechanism is similar to Exists and Not Exists condition.

	-- Syntax :
		Merge into target_table
		using source_table
		on merge_condition
			When Matched then
				Update
			When not matched then
				Insert
			When not matched by source
				then Delete;

	-- Example :
		-- Target table -> tbl_Product
		-- Source table -> tbl_ProductUpdated

		Create table tbl_Product
		(
			P_Id int primary key identity(1,1),
			P_Name nvarchar(15),
			P_Price decimal(18,2)
		)

		Create table tbl_ProductUpdated
		(
			P_Id int primary key identity(1,1),
			P_Name nvarchar(15),
			P_Price decimal(18,2)
		)

		Insert into tbl_Product(P_Name,P_Price)
		values('Laptop',10000),('Tablet',6000),('AC',45000)

		Insert into tbl_ProductUpdated(P_Name,P_Price)
		values('Laptop',10000),('Tablet',8000),('TV',15000)

		Insert into tbl_ProductUpdated(P_Name,P_Price)
		values('Washing Machine',25000),('Tablet',8000),('TV',15000)

		Update tbl_ProductUpdated set P_Price = '20000' where P_Id = 3

		Select * from tbl_Product
		Select * from tbl_ProductUpdated

		-- Merge data into taregt table from source table
		Merge into tbl_Product as target
		using tbl_ProductUpdated as source
		on (target.P_Id = source.P_Id)
			When matched then
				Update set target.P_Name = source.P_Name, target.P_Price = source.P_Price
			When not matched then
				Insert (P_Name,P_price)
				values(source.P_Name,source.P_Price);

		-- Condition on name
		Merge into tbl_Product as target
		using tbl_ProductUpdated as source
		on (target.P_Name = source.P_Name)
			When matched then
				Update set target.P_Name = source.P_Name, target.P_Price = source.P_Price
			When not matched then
				Insert (P_Name,P_price)
				values(source.P_Name,source.P_Price);

		-- Condition on name with delete
		Merge into tbl_Product as target
		using tbl_ProductUpdated as source
		on (target.P_Name = source.P_Name)
			When matched then
				Update set target.P_Name = source.P_Name, target.P_Price = source.P_Price
			When not matched then
				Insert (P_Name,P_price)
				values(source.P_Name,source.P_Price)
			When not matched by source then
				Delete;



