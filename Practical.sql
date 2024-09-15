With cte_StudentDetails as
(
	Select StudentDetail_Id,Student_Name,Student_Age,Student_Address,
	StudentDetail_Standard,StudentDetail_Maths,StudentDetail_ss,StudentDetail_Science,
	StudentDetail_Computer,
	dbo.fn_TotalSumOfMarks(StudentDetail_Maths,StudentDetail_ss,StudentDetail_Science,StudentDetail_Computer) as TotalMarks
	from tbl_StudentsMaster 
	Inner join tbl_StudentDetails 
		on tbl_StudentsMaster.Student_Id = tbl_StudentDetails.Student_Id
)

--Select Student_Name,Student_Age,Student_Address,
--	StudentDetail_Standard,StudentDetail_Maths,StudentDetail_ss,StudentDetail_Science,
--	StudentDetail_Computer,TotalMarks,
--	case 
--		when TotalMarks >= 350 Then 'Grade A'
--		When TotalMarks >= 300 And TotalMarks < 350 Then 'Grade B'
--		When TotalMarks >= 250 And TotalMarks < 300 Then 'Grade C'
--		When TotalMarks >= 200 And TotalMarks < 250 Then 'Grade D'
--		When TotalMarks >= 150 And TotalMarks < 200 Then 'Grade E'
--		Else 'Grade F' 
--	End as Grade
--	from cte_StudentDetails

Insert into #tbl_StudentDetail(StudentDetail_Id,Grade)
Select StudentDetail_Id,
	case 
		when TotalMarks >= 350 Then 'Grade A'
		When TotalMarks >= 300 And TotalMarks < 350 Then 'Grade B'
		When TotalMarks >= 250 And TotalMarks < 300 Then 'Grade C'
		When TotalMarks >= 200 And TotalMarks < 250 Then 'Grade D'
		When TotalMarks >= 150 And TotalMarks < 200 Then 'Grade E'
		Else 'Grade F' 
	End as Grade
	from cte_StudentDetails

Create table #tbl_StudentDetail
(
	StudentDetail_Id int,
	Grade nvarchar(20)
)

Update sd
	set StudentDetail_Grade = sdtemp.Grade
	from tbl_StudentDetails sd
		inner join #tbl_StudentDetail sdtemp
			on sdtemp.StudentDetail_Id = sd.StudentDetail_Id