Alter procedure sp_CompanyMasterInsert
(
	@Company_Name nvarchar(50),
	@Company_Logo nvarchar(max)
)
As
Begin
	Insert into tbl_CompanyMaster(Company_Name,Company_Logo,IsActive,Ceated_Date)
	values(@Company_Name,@Company_Logo,1,GETDATE())

	declare @Company_Id int

	select @Company_Id = SCOPE_IDENTITY()

	-- print(@Category_Id)

	Select Company_ID,Company_Name,Company_Logo 
		from tbl_CompanyMaster
	where
		Company_ID = @Company_Id
End