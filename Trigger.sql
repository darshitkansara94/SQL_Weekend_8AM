Trigger :
	Trigger is special type of procedure which generate event on particular operation.
	Trigger can be applied only on Insert/Update/delete statement.
	We can not directly execute trigger like SP.
	Trigger is associate to the table. So single trigger can  perform operation for single table.
	We can not create duplicate trigger in the same database.
	We can not create parameter in trigger.

	Why to use trigger?
		When we need to maintain a log for a particular table or we want to update particular record for
			that table.

	Types of Trigger :
		For
			-- Syntax :
				Create trigger tr_Name
				on Table_Name -- Table name on which we need to create trigger.
				For / After {Insert/Update/Delete}
				As
				Begin
					Statement
				End

	
		After