WorkFlow :
	-- 1. Create View for Log table
			Create view vw_CategoryMasterLog As
				Select CategoryLog_Id,Category_Name,Company_Id,Created_Date,User_Id,Description,
				Category_Status
				from tbl_CategoryMasterLog

			Select * from vw_CategoryMasterLog

	-- 2. Create Instead of Trigger on view
		--	Insert data into Log table with status 'Pending for Approval'
			Created trigger tr_CategoryMasterLog

	-- Data is either Approved/ Rejected
	-- If Data is approved then
		-- Insert into Table A
		-- Insert Log into log table with status 'Approve'
	-- Else
		-- Insert Log into log table with status 'Rejected'

	Create After trigger on Log table with type Insert
		Create on Log table
			Enter data with status in log table
			Enter data in Main table if status is 'Approved'
		

