Create function fn_Addition
(
	@Parameter1 int, -- 10
	@Parameter2 int -- 20
)
Returns int
As
Begin
	return @Parameter1 + @Parameter2 
End