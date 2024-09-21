Store Procedure :
	SP is a block of code which allows user to reuse same code and multiple times.
	We can execute SP with the command 'exec sp_name'

	-- Syntax :
		Create procedure sp_Name
		(
			Parameters
		)
		As
		Begin
			SQL Statement (Insert/ Update/ Delete / Select)
		End

	-- Execute SP
		Exec sp_CompanyMasterInsert 'Allscripts',null

		select * from tbl_CompanyMaster		

		exec sp_CRUDCompanyMaster 
			@OperationType ='Insert',		
			@Company_Logo = null,  
			@Company_Name ='veradigm'

		exec sp_CRUDCompanyMaster 
			@OperationType = 'Select'	
			

-- Assignment :
	Declare variable with value 56.
	According to marks we have decide grade.
		>= 90 = 'Grade A'
		Marks >=60 and Marks < 90 = 'Grade B'
		Marks >=50 and Marks < 60 = 'Grade C'
		Marks >= 40 and Marks < 50 = 'Grade D'
		Marks >= 30 and Marks < 40 = 'Grade E'
		Marks < 30 = 'Fail'
		
