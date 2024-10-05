Declare @xml_Student xml = 
'
	<Students>
		<Student>
			<RollNumber>1</RollNumber>
			<Name>Darshit</Name>
			<Address>Baroda</Address>			
		</Student>
		<Student>
			<RollNumber>2</RollNumber>
			<Name>Mithil</Name>
			<Address>Ahmedabad</Address>
		</Student>
		<Student>
			<RollNumber>3</RollNumber>
			<Name>Pooja</Name>
			<Address>Surat</Address>
		</Student>
	</Students>'

Declare @RollNumber int
Declare @Name nvarchar(100)
Declare @Address nvarchar(100)

Declare cr_Students cursor
	for Select 
			Student.value('(RollNumber)[1]','int') as Student_RollNumber,
			Student.value('(Name)[1]','nvarchar(100)') as Student_Name,
			Student.value('(Address)[1]','nvarchar(100)') as Student_Address
		from @xml_Student.nodes('/Students/Student') as Students(Student)
		Open cr_Students
			fetch next from cr_Students into @RollNumber, @Name, @Address

			while @@FETCH_STATUS = 0
			Begin
				Print(concat_ws(' ',@RollNumber, @Name, @Address))

				fetch next from cr_Students into @RollNumber, @Name, @Address
			End

		Close cr_Students
Deallocate cr_Students
		
--Assignment:
--	Insert a Student data into Student table using cusrsor.
--	Student data must be in XML datatype.