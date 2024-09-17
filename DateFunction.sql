Date Function :
	GetDate()
		Used for current date and time.
		Return a time where sql server is installed.

		-- To get a current date and time
		select GETDATE()

	GetUtcDate()
		UTC = Universal Time Coordinates
		Return universal time across the different countries.

		Select GETUTCDATE()
		
	SYSDATETIME
		Return current system date and time.
		No matter either connected with remote SQL.

		Select SYSDATETIME()
	SYSDATETIMEOFFSET
		Return current system date and time with timezone

		Select SYSDATETIMEOFFSET()
	TIMEFROMPARTS
		Return time from value. Expect 5 params.

		Select TIMEFROMPARTS(12,30,25,00,00)
	CURRENT_TIMESTAMP
		Return current system time and date.

		select CURRENT_TIMESTAMP

	DateName
		Return a different part of the date and time as a string.

		select GETDATE()

		Select DATENAME(MONTH,GETDATE())
		Select DATENAME(MM,GETDATE())
		Select DATENAME(YEAR,GETDATE()) -- '2024'
		Select DATENAME(DAY,GETDATE())
		select DATENAME(WEEKDAY,GETDATE())
		select DATENAME(DAYOFYEAR,GETDATE())
		Select DATENAME(WEEK,GETDATE())
		select DATENAME(HOUR,GETDATE())
		Select DATENAME(MINUTE,GETDATE())
		Select DATENAME(SECOND,GETDATE())
		Select DATENAME(MILLISECOND,GETDATE())
	DatePart
		Return a int value as output.
	DATEADD
		Add a incremental value in date

		Select DATEADD(DAY,2,GETDATE())
		Select DATEADD(YEAR,2,GETDATE())
		
	EOMonth
		Return last date of the current/ passed year.
		
		select GETDATE()

		Select EOMONTH('2020-02-17 08:58:13.317')
	DateDiff
		Return a difference between two date.

		Select DATEDIFF(DAY,'2024-03-01 08:58:13.317',getdate())
		Select DATEDIFF(MONTH,'2024-03-01 08:58:13.317',getdate())
		Select DATEDIFF(MONTH,GETDATE(),DATEADD(MONTH,10,getdate()))
	IsDate
		Identify that date is valid or not
		If date is valid then return 1 else return 0.

		Select ISDATE('2024-12-13 08:58:13.317')
	