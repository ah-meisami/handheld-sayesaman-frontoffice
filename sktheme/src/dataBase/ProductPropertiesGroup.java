package dataBase;

import java.util.ArrayList;

import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

public class ProductPropertiesGroup extends Model {

	//private variables
	private int mGrpID;
	private int mGrpParentID;
	private String mGrpPath;
	private String mGrpName;
	private String mGrpDesc;
	private byte[] mGrpLogo;
	private int mSortID;
	// table name in DB
	private String mTableName = "tblProdPropertiesGrpDesc";
	
	//Empty Constructor
	public ProductPropertiesGroup(){}
	
	//initial Constructor
	public ProductPropertiesGroup(int mGrpID, int mGrpParentID, String mGrpPath,
			String mGrpName,String mGrpDesc, byte[] mGrpLogo, int mSortID){
		this.setGrpID(mGrpID);
		this.setGrpParentID(mGrpParentID);
		this.setGrpPath(mGrpPath);
		this.setGrpName(mGrpName);
		this.setGrpDesc(mGrpDesc);
		this.setGrpLogo(mGrpLogo);
		this.setSortID(mSortID);
	}
		
	//initial id_less Constructor
	public ProductPropertiesGroup(int mGrpParentID, String mGrpPath,
			String mGrpName,String mGrpDesc, byte[] mGrpLogo, int mSortID){
		this.setGrpParentID(mGrpParentID);
		this.setGrpPath(mGrpPath);
		this.setGrpName(mGrpName);
		this.setGrpDesc(mGrpDesc);
		this.setGrpLogo(mGrpLogo);
		this.setSortID(mSortID);
	}
	

	// Load From DB
	public void load() {
		String[] columns = { "GrpID", "GrpParentID", "GrpPath",
				"GrpName", "GrpDesc", "GrpLogo", "SortID" };
		String selection = "GrpID = ?";
		String[] selectionArgs = { String.valueOf(getGrpID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName , columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setGrpParentID(c.getInt(c
						.getColumnIndex("GrpParentID")));
				setGrpPath(c.getString(c
						.getColumnIndex("GrpPath")));			
				setGrpName(c.getString(c
						.getColumnIndex("GrpName")));
				setGrpDesc(c.getString(c
						.getColumnIndex("GrpDesc")));
				setGrpLogo(c.getBlob(c
						.getColumnIndex("GrpLogo")));			
				setSortID(c.getInt(c
						.getColumnIndex("SortID")));
			}
		} catch (Exception e) {
		}
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("GrpID", getGrpID());
		values.put("GrpParentID", getGrpParentID());
		values.put("GrpPath", getGrpPath());
		values.put("GrpName", getGrpName());
		values.put("GrpDesc", getGrpDesc());
		values.put("GrpLogo", getGrpLogo());
		values.put("SortID", getSortID());
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
			if (getGrpPath() != null
					&& getGrpPath() != "")
				values.put("GrpPath", getGrpPath());
			if (getGrpName() != null
					&& getGrpName() != "")
				values.put("GrpName", getGrpName());
			if (getGrpDesc() != null
					&& getGrpDesc() != "")
				values.put("GrpDesc", getGrpDesc());
			if (getGrpLogo()!= null)
				values.put("GrpLogo", getGrpLogo());
			if (getSortID() != 0)
				values.put("SortID", getSortID());

		} else {
			values.put("GrpParentID", getGrpParentID());
			values.put("GrpPath", getGrpPath());
			values.put("GrpName", getGrpName());
			values.put("GrpDesc", getGrpDesc());
			values.put("GrpLogo", getGrpLogo());
			values.put("SortID", getSortID());
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

	public ArrayList<ProductPropertiesGroup> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum,  ArrayList<Sort> sorts) {

		ArrayList<ProductPropertiesGroup> productPropertiesGroupList = new ArrayList<ProductPropertiesGroup>();
		String selectQuery  = super.gueryBuilder(fields, limits, limitNum, mTableName,sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					ProductPropertiesGroup productPropertiesGroup = new ProductPropertiesGroup();
					// set data row to product group item
					productPropertiesGroup.setGrpID(c.getInt(c.getColumnIndex("GrpID")));
					productPropertiesGroup.setGrpParentID(c.getInt(c.getColumnIndex("GrpParentID")));
					productPropertiesGroup.setGrpPath(c.getString(c
							.getColumnIndex("GrpPath")));				
					productPropertiesGroup.setGrpName(c.getString(c
							.getColumnIndex("GrpName")));
					productPropertiesGroup.setGrpDesc(c.getString(c
							.getColumnIndex("GrpDesc")));
					productPropertiesGroup.setGrpLogo(c.getBlob(c
							.getColumnIndex("GrpLogo")));
					productPropertiesGroup.setSortID(c.getInt(c
							.getColumnIndex("SortID")));
					// Adding contact to list
					productPropertiesGroupList.add(productPropertiesGroup);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		} 
		return productPropertiesGroupList;
	}
	
	public int Count(TblFields field, ArrayList<Limit> limits){
		return super.Count(field, mTableName, limits);
	}

	//getting GrpID
	public int getGrpID() {
		return mGrpID;
	}

	//setting GrpID
	public void setGrpID(int mGrpID) {
		this.mGrpID = mGrpID;
	}

	public int getGrpParentID() {
		return mGrpParentID;
	}

	public void setGrpParentID(int mGrpParentID) {
		this.mGrpParentID = mGrpParentID;
	}

	public String getGrpPath() {
		return mGrpPath;
	}

	public void setGrpPath(String mGrpPath) {
		this.mGrpPath = mGrpPath;
	}

	public String getGrpName() {
		return mGrpName;
	}

	public void setGrpName(String mGrpName) {
		this.mGrpName = mGrpName;
	}

	public String getGrpDesc() {
		return mGrpDesc;
	}

	public void setGrpDesc(String mGrpDesc) {
		this.mGrpDesc = mGrpDesc;
	}

	public byte[] getGrpLogo() {
		return mGrpLogo;
	}

	public void setGrpLogo(byte[] mGrpLogo) {
		this.mGrpLogo = mGrpLogo;
	}

	public int getSortID() {
		return mSortID;
	}

	public void setSortID(int mSortID) {
		this.mSortID = mSortID;
	}
	@Override
	public boolean equals(Object o) {
		if(o instanceof ProductPropertiesGroup){
			ProductPropertiesGroup ppGroup = (ProductPropertiesGroup)o;
			if(this.getGrpID() == ppGroup.getGrpID()){
				return true;
			}
		}else{
			return false;
		}
		return false;
	}
}
