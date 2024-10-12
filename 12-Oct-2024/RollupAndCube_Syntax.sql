Group by Rollup and Cube
	
	-- Syntax
		Select column1,column2,
			AggregateFunction(column)
		from tbl_name
			group by columns
			
	Rollup :
		Calculate the toal and subtotal only not in 
			detail statement

		-- Syntax :
			Select column1,column2,
				AggregateFunction(column)
			from table_Name
				group by
					rollup(column1,column2)


		