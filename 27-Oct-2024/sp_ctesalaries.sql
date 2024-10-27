CREATE PROC sp_ctesalaries(@DENSE int)
AS
BEGIN
With  Rank_EmpSal
As
(
	Select DENSE_RANK() over (order by Salary desc) As Ranked_Sal,Emp_SalID,Salary,
	Name from Emp_Sal
)

Select Ranked_Sal,Emp_SalID,Salary from  Rank_EmpSal
where Ranked_Sal= @DENSE ;
end

EXEC sp_ctesalaries 3