Create Table Emp_Sal ( Emp_SalID int Primary Key Identity(1,1),
Salary Decimal(18,2), Name nVarchar(50));

Select * from Emp_Sal

Insert into Emp_Sal(Salary,Name) values (15000,'F'),
(10000,'H'),
(46000,'D'),
(46000,'B'),
(48000,'A'),
(20000,'E'),
(15000,'G'),
(46000,'C');

With  Rank_EmpSal
As
(
	Select DENSE_RANK() over (order by Salary desc) As Ranked_Sal,Emp_SalID,Salary,
	Name from Emp_Sal
)

Select Ranked_Sal,Emp_SalID,Salary from  Rank_EmpSal
where Ranked_Sal=2;