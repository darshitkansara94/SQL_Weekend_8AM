View :
	View is virtual table.
	Which is not exist as physical table but store in memory.
	View contain rows and column like real table.
	View can use Select statement.
	You can use multiple table and all the clauses or order by, group by in the view.


	-- Syntax :
		create view view_name as
			Select column1,column2,column3...columnN
				from tbl_name

		Select * from view_name


	-- Example :
		Select * from tbl_CategoryMaster

		Create view vw_CategoryDetail as
			Select Category_Id,Category_Name,Company_Id,User_Id,IsActive 
			from tbl_CategoryMaster
				Where IsActive = 1

		Select Category_Id,Category_Name,Company_Id from vw_CategoryDetail
			where Company_Id = 2
		order by Category_Name desc


		-- Modify view
			We can use alter keyword to modify existing view.

			Alter view vw_CategoryDetail as
			Select Category_Id,Category_Name,Company_Id,User_Id,IsActive, Created_Date
			from tbl_CategoryMaster				

			Select * from vw_CategoryDetail

		-- Remove view from Database.
			Drop keyword is use to remove existing view from database

			-- Syntax
				drop view view_name

			-- Example 
				drop view vw_CategoryDetail


select * from tbl_CategoryMaster

exec sp_SelectCategoryFromView
			