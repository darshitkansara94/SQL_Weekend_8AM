alter procedure sp_SelectCategoryFromView
As
Begin
	select cm.Company_Name,UPPER(vw.Category_Name) as Category_Name,CONCAT_ws(' ',um.User_FirstName,um.User_LastName) as UserName,
	case when vw.IsActive = 1 then 'Active' else 'In Active' end as Active_Status,
	CONVERT(nvarchar(30), vw.Created_Date , 0) as Created_Date	
	from [dbo].[vw_CategoryDetail] vw
	Inner join tbl_CompanyMaster cm on cm.Company_ID = vw.Company_Id
	Inner join tbl_UserMaster um on um.User_Id = vw.User_Id
	where vw.Company_Id <> 0
End