Trigger :
	Trigger is a special type of procedure.
	Which execute on specific event.
	Trigger can perform Insert/Update/Delete statement.
	It will execute when some action occur in parent table.
	Trigger is applied on table level.
	we can create only one trigger with the same name in the same DB.
	Trigger is not accepting parameters.

	Two Type of trigger :
		1. For
			Execute trigger with the current execution.
		2. After
			Execute the trigger after all execution done

	-- Syntax
		Create trigger tr_Name
		on table_name
		For / After Insert / Update / Delete
		As
		Begin	
			SQL statement
		End

	