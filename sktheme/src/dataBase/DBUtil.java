package dataBase;

public final class DBUtil {
	
	public static String LimitNum(int startNum, int endNum){
		
		String limitNumQuery = " LIMIT "+String.valueOf(startNum)  + " , " + String.valueOf(endNum);
		return limitNumQuery;
	}
	public enum TblFields{
		
		// customer
		CustID, CustType, FirstName, LastName,
		FatherName, PlaceSodor, DateSodor, ShomareSabt,
		CodeMeli, CodePosti, AddressPath, Address, Tel,
		Mobile, Web, Email, CompanyName, CompanyType,
		IsSupplier, DSID, /*CreateDate,*/ CustState,/* UserID,*/
		MalekiatType, SamanehCode, LogoImage, Sex,
		TahsilatID, ReshteTahsili, EsteghrarPlace,
		AboutCustomer, CountPerson, WorkTime, IranPerent,
		CustTypeID,
		
		// product
		ProdID, ProdName, ProdGrpID, IranCode,
		ProdImage, ProdState, ProdBarcode, CreateDate,
		ProdShortName, ProdComment, UserID,BrandID,
		TolidiID, CountryID, ProdInfoComment, SupplierID,	
		
		// product catalog
		AID,/*ProdID,*/FileName,FileType,
		FileSize,FileData,CatalogComment,
		IsProdPic,
		
		// product group
		GrpID,GrpParentID,GrpPath,GrpName,
		GrpDesc,GrpImage,GrpLogo,SortID,
					
		// product group properties
		/*GrpID,*/ PropertiesID,
		
		// ProductGroupPropertiesTempDataEntry
		/*GrpID, /*PropertiesID,/*UserID*/ 
		
		// ProductGroupPropertiesValue
		PID, /*ProdGrpID,*/ ValueID,
		
		// ProductGroupPropertiesValueTempDataEntry
		/*PID, ProdGrpID, ValueID, UserID */
		
		// ProductOrderProperties
		/*AID, ProdID, PropertiesID,*/ PropertiesTitle,
		
		// ProductProperties
		/*AID,*/ ProdPropertiesDesc, ValueSelectType,
		/*GrpID,*/ ProdPropertiesComment, PropertiesImage, 
		
		// ProductPropertiesGroup
		/*GrpID, GrpParentID, GrpPath,
		GrpName, GrpDesc, GrpLogo, SortID*/		
		
		// ProductPropertiesTempForDataEntry
		/*ProdID, PropertiesID,*/ PropertiesSelectValue,
		PropertiesVales, /*UserID*/
		
		// ProductPropertiesValue
		/*ProdID, PropertiesID, PropertiesSelectValue,
		PropertiesValues, UserID*/
		
		// ProductService
		/*AID,*/ ServiceDesc, ServiceComment,
		
		// ProductServiceValue
		/*ProdID,*/ ServiceID, /*ServiceComment*/
		
		// ProductUnit
		/*AID, ProdID,*/ UnitName, UnitQty,
			IsBaseUnit, IsAllowToSales
		
	}
	public enum LimitType{
		ItIs,
		ItIsNot,
		Like,
		UnLike,
		HeadLike,
		TailLike
	}
	public enum LimitTail{
		OR,
		AND,
		NONE
	}
	public enum SortType{
		Desc,
		Asc,
		None
	}
}
