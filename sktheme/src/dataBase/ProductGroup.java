package dataBase;

import java.util.ArrayList;

import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;

public class ProductGroup extends Model implements Comparable<Object> {

	// private variables
	private int mGrpID=-1;
	private int mGrpParentID=-1;
	private String mGrpPath;
	private String mGrpName;
	private String mGrpDesc;
	private int mSortID;
	private String mImageUrl;
	private String mLogoUrl; 
	// table name in DB
	private String mTableName = "tblProdGrpDesc";

	// empty Constructor
	public ProductGroup() {
	}

	// initial Constructor
	public ProductGroup(int mGrpID, int mGrpParentID, String mGrpPath,
			String mGrpName, String mGrpDesc,
		    int mSortID, String mImageUrl, String mLogoUrl) {
		this.mGrpID = mGrpID;
		this.mGrpParentID = mGrpParentID;
		this.mGrpPath = mGrpPath;
		this.mGrpName = mGrpName;
		this.mGrpDesc = mGrpDesc;
		this.mSortID = mSortID;
		this.mImageUrl = mImageUrl;
		this.mLogoUrl = mLogoUrl;
	}

	// initial ID_less Constructor
	public ProductGroup(int mGrpParentID, String mGrpPath, String mGrpName,
			String mGrpDesc, int mSortID, String mImageUrl, String mLogoUrl) {
		this.mGrpParentID = mGrpParentID;
		this.mGrpPath = mGrpPath;
		this.mGrpName = mGrpName;
		this.mGrpDesc = mGrpDesc;	
		this.mSortID = mSortID;
		this.mImageUrl = mImageUrl;
		this.mLogoUrl = mLogoUrl;
	}

	// Load From DB
	public void load() {
		try{
		String[] columns = { "GrpID", "GrpParentID", "GrpPath", "GrpName",
				"GrpDesc", "SortID" , "ImageUrl", "LogoUrl"};
		String selection = "GrpID = ?";
		String[] selectionArgs = { String.valueOf(getGrpID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setGrpID(c.getInt(c.getColumnIndex("GrpID")));
				setGrpParentID(c.getInt(c.getColumnIndex("GrpParentID")));
				setGrpPath(c.getString(c.getColumnIndex("GrpPath")));
				setGrpName(c.getString(c.getColumnIndex("GrpName")));
				setGrpDesc(c.getString(c.getColumnIndex("GrpDesc")));
				setSortID(c.getInt(c.getColumnIndex("SortID")));
				setImageUrl(c.getString(c.getColumnIndex("ImageUrl")));
				setLogoUrl(c.getString(c.getColumnIndex("LogoUrl")));				
				
			}
		} catch (Exception e) {
		} 
		}catch(Exception ex){}
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("GrpID", getGrpID());
		values.put("GrpParentID", getGrpParentID());
		values.put("GrpPath", getGrpPath());
		values.put("GrpName", getGrpName());
		values.put("GrpDesc", getGrpDesc());
		values.put("SortID", getSortID());
		values.put("ImageUrl", getImageUrl());
		values.put("LogoUrl", getLogoUrl());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		}
	}

	public void update(Boolean checkNullFields) {
		ContentValues values = new ContentValues();
		if (checkNullFields) {
			if (getGrpParentID() != 0)
				values.put("GrpParentID", getGrpParentID());
			if (getGrpPath() != null && getGrpPath() != "")
				values.put("GrpPath", getGrpPath());
			if (getGrpNamehtml() != null && getGrpName() != "")
				values.put("GrpName", getGrpName());
			if (getGrpDesc() != null && getGrpDesc() != "")
				values.put("GrpDesc", getGrpDesc());
			if (getSortID() != 0)
				values.put("SortID", getSortID());
			if(getImageUrl() != "" && getLogoUrl() != null)
				values.put("ImageUrl", getImageUrl());
			if(getLogoUrl() != null && getLogoUrl() != "")
				values.put("LogoUrl", getLogoUrl());
		} else {
			values.put("GrpID", getGrpID());
			values.put("GrpParentID", getGrpParentID());
			values.put("GrpPath", getGrpPath());
			values.put("GrpName", getGrpName());
			values.put("GrpDesc", getGrpDesc());
			values.put("SortID", getSortID());
			values.put("ImageUrl", getImageUrl());
			values.put("LogoUrl", getLogoUrl());
		}

		String whereClause = "GrpID = ?";
		String[] whereArgs = { String.valueOf(getGrpID()) };
		try {
			DataSourceTools.updateObject(mTableName, values, whereClause,
					whereArgs);
		} catch (Exception e) {
		} 
	}

	public void delete() {
		String whereClause = "GrpID = ?";
		String[] whereArgs = { String.valueOf(getGrpID()) };
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {
			Log.e("Del Row(s) From DB: ", e.getMessage());
		}
	}

	public ArrayList<ProductGroup> getAll(ArrayList<TblFields> fields, ArrayList<Limit> limits,
			String limitNum, ArrayList<Sort> sorts) {

		ArrayList<ProductGroup> productGroupList = new ArrayList<ProductGroup>();
		String selectQuery  = super.gueryBuilder(fields, limits, limitNum, mTableName,sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					ProductGroup productGroup = new ProductGroup();
					// set data row to product group item
					try{
					productGroup.setGrpID(c.getInt(c.getColumnIndex("GrpID")));
					productGroup.setGrpParentID(c.getInt(c.getColumnIndex("GrpParentID")));
					productGroup.setGrpPath(c.getString(c.getColumnIndex("GrpPath")));
					productGroup.setGrpName(c.getString(c.getColumnIndex("GrpName")));
					productGroup.setGrpDesc(c.getString(c.getColumnIndex("GrpDesc")));				
					productGroup.setSortID(c.getInt(c.getColumnIndex("SortID")));
					productGroup.setImageUrl(c.getString(c.getColumnIndex("ImageUrl")));
					productGroup.setLogoUrl(c.getString(c.getColumnIndex("LogoUrl")));
					}catch(Exception ex){}
					// Adding contact to list
					productGroupList.add(productGroup);
				} while (c.moveToNext());
			}
		} catch (Exception e) {} 
		return productGroupList;
	}
	public int Count(TblFields field, ArrayList<Limit> limits){
		return super.Count(field, mTableName, limits);
	}

	// get GroupID
	public int getGrpID() {
		return mGrpID;
	}

	// setting GroupID
	public void setGrpID(int mGrpID) {
		this.mGrpID = mGrpID;
	}

	// getting GroupParentID
	public int getGrpParentID() {
		return mGrpParentID;
	}

	// setting GroupParentID
	public void setGrpParentID(int mGrpParentID) {
		this.mGrpParentID = mGrpParentID;
	}

	// getting GroupPath
	public String getGrpPath() {
		return mGrpPath;
	}

	// setting GroupPath
	public void setGrpPath(String mGrpPath) {
		this.mGrpPath = mGrpPath;
	}

	// getting GroupName
	public String getGrpName() {
		return mGrpName;
	}
	// getting GroupNamehtml
	public Spanned getGrpNamehtml() {
		if(getGrpID()==-1)
		return Html.fromHtml(mGrpName);
		else
		{
			String str[]=getGrpNamecount();
			return Html.fromHtml(""+str[0]+"&nbsp;<small><small><small>"+str[1]+"</small></small></small>");

//			
//			Product p=new Product();
//			ArrayList<Limit> a=new ArrayList<Limit>();
//			a.add(new Limit(TblFields.ProdGrpID, getGrpID()+"", LimitType.ItIs, null));
//			int i=p.Count(TblFields.ProdID, a);
//			return mGrpName+"("+i+")";
		}
	}
	public String[] getGrpNamecount() {
		String str[]={mGrpName,""};
		if(getGrpID()==-1)
		return str;
		else
		{
			ArrayList<Limit> limitsArray = new ArrayList<Limit>();
			limitsArray.add(new Limit(dataBase.DBUtil.TblFields.GrpParentID, getGrpID() + "", DBUtil.LimitType.ItIs, DBUtil.LimitTail.AND));
			ArrayList<ProductGroup> result = new ProductGroup().getAll(null,
					limitsArray, null, null);
			ArrayList<Limit> limits = new ArrayList<Limit>();
			limits.add(new Limit(dataBase.DBUtil.TblFields.ProdGrpID, getGrpID() + "", DBUtil.LimitType.ItIs, DBUtil.LimitTail.AND));
			for (int i = 0; i < result.size(); i++)
					limits.add(new Limit(dataBase.DBUtil.TblFields.ProdGrpID,
							result.get(i).getGrpID() + "", DBUtil.LimitType.ItIs,
							DBUtil.LimitTail.OR));
			Product p=new Product();
			int i=p.Count(TblFields.ProdID, limits);
			str[0]=mGrpName;
			str[1]="("+i+")";
			return str;
		}
	}
	// setting GroupName
	public void setGrpName(String mGrpName) {
		this.mGrpName = mGrpName;
	}

	// getting GroupDescription
	public String getGrpDesc() {
		return mGrpDesc;
	}

	// setting GroupDescription
	public void setGrpDesc(String mGrpDesc) {
		this.mGrpDesc = mGrpDesc;
	}

	// getting SortID
	public int getSortID() {
		return mSortID;
	}

	// setting SortID
	public void setSortID(int mSortID) {
		this.mSortID = mSortID;
	}

	public String getImageUrl() {
		return mImageUrl;
	}

	public void setImageUrl(String mImageUrl) {
		this.mImageUrl = mImageUrl;
	}

	public String getLogoUrl() {
		return mLogoUrl;
	}

	public void setLogoUrl(String mLogoUrl) {
		this.mLogoUrl = mLogoUrl;
	}

	@Override
	public int compareTo(Object obj) {
		if(obj != null){
			ProductGroup prodGrpParam = (ProductGroup) obj;
			if(this.getGrpID() != prodGrpParam.getGrpID())
				return 1;
		}else{
			return 1;
		}
		return 0;
	}
	@Override
	public boolean equals(Object obj) {
		if(obj != null){
			ProductGroup prodGrpParam = (ProductGroup) obj;
			if(this.getGrpID() != prodGrpParam.getGrpID())
				return false;
		}else{
			return false;
		}
		return true;
	}
}
