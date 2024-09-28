Trigger :
	Instead of :
		Ignore operation on Parent table and perform trigger operation.

		-- Syntax :
			Create trigger tr_Name
			on tbl_Name / vw_name
			Instead of Insert / Update / Delete
			As
			Begin
				Sql Statement
			End

For / After (Insert) :
	Table A -> (Trigger) Name : tr_TableA
		Event inserted data in Table B

 Output :
	1 row affected (Table A)
	1 row affected (Table B)

Instead of(Insert):
	Table A -> (Trigger) Name : tr_TableA
		Event inserted data in Table B

Output :
	1 row affected 
	1 row affected

Table_A
Table_A_Log