Date Function :
	Getutcdate()
		Universal timezone.

		Select CONVERT(nvarchar(20),GETUTCDATE(),0) as date

		select CONVERT(nvarchar(20),getdate(),0) as date
	Datename()
		Return value in string format.

		Select DATENAME(WEEKDAY,GETDATE()) as CurrentDate
		select DATEPART(WEEKDAY,GETDATE()) as CurrentDate
	
	SYSDATETIMEOFFSET()
		Return current system time with offset

		select SYSDATETIMEOFFSET()
	SYSUTCDATETIME()
		select GETUTCDATE()

		select SYSUTCDATETIME()
	SYSDATETIME
	CURRENT_TIMESTAMP()
	datepart()
	isdate()
	getdate()
	DATEADD()
	EOMONTH()