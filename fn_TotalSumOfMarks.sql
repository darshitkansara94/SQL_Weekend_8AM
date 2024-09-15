create function fn_TotalSumOfMarks
(
	@Subject1 int,
	@Subject2 int,
	@Subject3 int,
	@Subject4 int
)
Returns int
As
Begin
	return @Subject1 + @Subject2 + @Subject3 + @Subject4
End