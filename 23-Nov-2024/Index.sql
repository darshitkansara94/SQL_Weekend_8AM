Index :
	Improve retrieval process for select statement.
	We can create multiple index on single table.

	-- Disadvantages :
		Creating multiple index will slow down insert, Update and Delet operation.

	-- Types of index :
	Non-Clustered :
		We can create multiple non clustered index on single table.
			Normal Index :
				Allow duplicate values

				-- Syntax :
					Create index index_name
					on table_name(column_name)

					-- Multiple columns
					Create index index_name
					on table_name(column1,column2...)

				-- Example :
					Create index idx_CategoryName
					on tbl_CategoryMaster(Category_Name)

			Unique Index  :
				Not allowed duplicate value.

				-- Syntax :
					Create unique index index_name
					on table_name(column)

				-- Example
					Create unique index idx_UniqueCategoryName
					on tbl_CategoryMaster(Category_Name)

		Cluster Index :
			We can create only one cluster index on single table.
			Cluster index always applied on PK.

				

		Insert into tbl_CategoryMaster(Category_Name,Company_Id,Created_Date,User_Id,IsActive)
		values('Laptop',2,GETDATE(),1,1)

		-- Remove index :
			-- Syntax :
				drop index index_name
				on table_name

			-- Example 
				Drop index [idx_UniqueCategoryName]
				on tbl_CategoryMaster

	Select * from tbl_CategoryMaster


