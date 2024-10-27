Ranking function with BLOB:

Table
Files
BLOB

Varbinary
	Declare @VarBinaryVar varbinary(200)

	set @VarBinaryVar = CONVERT(varbinary,'This is Text')

	print(@VarBinaryVar)

	Select CAST(@VarBinaryVar as varchar(100)) as  VarBinaryText

	Select CONVERT(nvarchar(100),'This is Text') as  VarBinaryText

	Select * from tbl_UserRegistration

	Select CAST(Password as varchar(100)) from tbl_UserRegistration
	
	Ranking functions:
		-- Row Number
			use CrystalAndStone

			Select * from tbl_Employees

			Select ROW_NUMBER() over(order by Employee_id) as SrNo,
			Employee_Id,Employee_Name,Employee_Age,Employee_Address from tbl_Employees

		-- Dense Rank
		with cte_Employee as(
			Select  DENSE_RANK() over(order by Employee_Age) as Employee_AgeByOrder,
			Employee_Id,Employee_Name,Employee_Age,Employee_Address from tbl_Employees
			)

		Select Employee_AgeByOrder, Employee_Age from cte_Employee
		Group by Employee_Age
		having count(Employee_AgeByOrder) > 1

		Select Employee_Name,Employee_Age,Employee_Address from tbl_Employees		
		Group by Employee_Age,Employee_Address,Employee_Name
		having count(Employee_Age) = 1 
		(
			Select DENSE_RANK() over(order by Employee_Age) Employee_AgeCount,Employee_Age
			from tbl_Employees
			Group by Employee_Age
		)

		Select Employee_Age from tbl_Employees		
		Group by Employee_Age
		having count(Employee_Age) > 1		

		Select * from tbl_Employees

		Select  DENSE_RANK() over(order by Employee_Age) as Employee_AgeByOrder,
		Employee_Id,Employee_Name,Employee_Age,Employee_Address from tbl_Employees
		Where Employee_AgeByOrder = 2
			
		
		-- Rank