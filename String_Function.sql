Reverse()
	Print output in reverse order.

	Select REVERSE('Hello') as reverseString

	Select REVERSE('Hello World') as reverseString

	select Employee_Name, REVERSE(Employee_Name) as Reverse_Name, Employee_Age 
	from tbl_Employee where Employee_Name is not null

Char()
	Return char from ascii value.

	Select CHAR(41) as charvalue

--Concat :
--	Merge two or more words into a single value / word.

	select concat('Hello ','World') as singlestring

	select * from tbl_Employee

	select Employee_Name,Employee_Id,Employee_Age,
	concat(Employee_Id,'-',Employee_Name,'-', Employee_Age) as MergedValue from tbl_Employee
	where Employee_Name is not null

--Concat with +(plus) :
--	Concat value with + char.

	select 'Hello ' + 'World' as singlevalue

	select Employee_Name,Employee_Id,Employee_Age,
	cast(Employee_Id as varchar(10)) + '-' + Employee_Name + '-' + cast(Employee_Age as varchar(10)) as MergedValue
	--Employee_Id,'-',Employee_Name,'-', Employee_Age as MergedValue 
	from tbl_Employee
	where Employee_Name is not null

Concat_ws
	Concat string with seperator.

	Syntax :
		concat_ws('seperator',string1,string2,..,stringN)

	-- Example
		O/P : www.google.com
		select CONCAT_WS('-','www','google','com') as concatws

		select Employee_Name,Employee_Id,Employee_Age,
		CONCAT_WS(' - ',Employee_Id,Employee_Name,Employee_Age) as concatws
		from tbl_Employee
		where Employee_Name is not null

len() :
	Return a length of string.
	Start with 1.

	-- Syntax:
		Select len('string') as alias_name from table_name

	-- Example :
		Select LEN('This is Computer') as string1

		Select Employee_Id,Employee_Name,LEN(Employee_Name) as length_Employee,Employee_Age 
		from tbl_Employee

Replace :
	Replace a word / char into existing string.

	-- Synatax :
		select REPLACE('string_expression','search_expression','replace_expression') as alias_name

	Example :
		Select REPLACE('Hello World', 'l', 'L') as replacechar