Alter procedure sp_CRUDCompanyMaster
(
	@OperationType nvarchar(20),
	@Company_Id int = null,
	@Company_Name nvarchar(100) = null, 
	@Company_Logo nvarchar(max) = null
)
As
Begin
	if(@OperationType = 'Select')
	Begin
		Select Company_ID,Company_Name,Company_Logo,Created_Date 
			from tbl_CompanyMaster
		where IsActive = 1
	End
	else if(@OperationType = 'Insert')
	Begin
		Insert into tbl_CompanyMaster(Company_Name,Company_Logo,IsActive,Created_Date)
		values(@Company_Name,@Company_Logo,1,GETDATE())
	End
	else if(@OperationType = 'Update')
	Begin
		Update tbl_CompanyMaster
			set Company_Name = @Company_Name,
				Company_Logo = @Company_Logo,
				Modified_Date = GETDATE()
		where
			Company_ID = @Company_Id
	End
	else if(@OperationType = 'Delete')
	Begin
		Update tbl_CompanyMaster
			set IsActive = 0,
			Deleted_Date = GETDATE()
		where
			Company_ID = @Company_Id
	End
	else if(@OperationType = 'SelectByCompanyId')
	Begin
		Select Company_ID,Company_Name,Company_Logo,Created_Date 
			from tbl_CompanyMaster
		where IsActive = 1 and Company_ID = @Company_Id
	End
	else
	Begin
		select 'Invalid Choice' as InvalidChoice
	End
End