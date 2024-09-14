Functions :
	User Defined functions :
		Scalar valued function
			Return single value as a output

			-- Syntax :
				Create function fn_Function1
				(
					Parameters
				)
				Returns datatype (varchar/nvarchar/int/decimal/bool/float,bit)
				As
				Begin
					Return (Statement)
				End

		Table valued function
			Return a table as a output

			-- Syntax 
				Create function fn_TableFunction
				(
					Parameters
				)
				Returns Table
				As
					Return (Statement)

	System Defined functions :
		Aggregate function
			Max()
			Min()
			Avg()
			Count()
			Sum()
		String function
			len()
			concat()
			concat with +
			concat_ws
			substring()
			char()
			trim()
			ltrim()
			rtrim()
			replace()
		Date function
			getdate()
			getutcdate()
			SYSDATETIMEOFFSET()
			DATEADD()
			DateDiff()
			isdate()
			EOMONTH()
			DATENAME()
			DATEPART()
		Conversion function
			convert()
			cast()
