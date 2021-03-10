package dataBase;

import java.util.ArrayList;
import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;


public class ProductGroupPropertiesTempDataEntry extends Model {

	//private variables
	private int mGrpID;
	private int mPropertiesID;
	private int mUserID;
	// table name in DB
	String mTableName = "tblProdGrpPropertiesTempDataEntry";
	//empty Constructor
	public ProductGroupPropertiesTempDataEntry(){}
	
	//initial constructor
	public ProductGroupPropertiesTempDataEntry(int mGrpID, int mPropertiesID,
			int mUserID){
		this.setGrpID(mGrpID);
		this.setPropertiesID(mPropertiesID);
		this.setUserID(mUserID);
	}
	
	//initial Constructor
	public ProductGroupPropertiesTempDataEntry(int mPropertiesID,
			int mUserID){	
		this.setPropertiesID(mPropertiesID);
		this.setUserID(mUserID);
	}
	
	// Load From DB
	public void load() {
		String[] columns = { "GrpID", "PropertiesID","UserID" };
		String selection = "GrpID = ? and PropertiesID = ? and UserID = ?";
		String[] selectionArgs = { String.valueOf(getGrpID()), String.valueOf(getPropertiesID()),
				String.valueOf(getUserID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setGrpID(c.getInt(c.getColumnIndex("GrpID")));
				setPropertiesID(c.getInt(c.getColumnIndex("PropertiesID")));
				setUserID(c.getInt(c.getColumnIndex("UserID")));
			}
		} catch (Exception e) {
		} 
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("GrpID", getGrpID());
		values.put("PropertiesID", getPropertiesID());
		values.put("UserID", getUserID());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		}
	}

	public void update(Boolean checkNullFields) {
		ContentValues values = new ContentValues();
		if (checkNullFields) {
			if (getGrpID() != 0)
				values.put("GrpID", getGrpID());
			if (getPropertiesID() != 0)
				values.put("PropertiesID", getPropertiesID());
			if (getUserID() != 0)
				values.put("UserID", getUserID());
		} else {
			values.put("GrpID", getGrpID());
			values.put("PropertiesID", getPropertiesID());	
			values.put("UserID", getUserID());
		}

		String whereClause = "GrpID = ? and PropertiesID = ? and UserID = ?";
		String[] whereArgs = { String.valueOf(getGrpID()), String.valueOf(getPropertiesID()),
				String.valueOf(getUserID())};
		try {
			DataSourceTools.updateObject(mTableName, values, whereClause,
					whereArgs);
		} catch (Exception e) {
		} 
	}

	public void delete() {
		String whereClause = "GrpID = ? and PropertiesID = ? and UserID = ?";
		String[] whereArgs = { String.valueOf(getGrpID()) , String.valueOf(getPropertiesID()),
				String.valueOf(getUserID())};
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {
		}
	}

	public ArrayList<ProductGroupPropertiesTempDataEntry> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<ProductGroupPropertiesTempDataEntry> productGroupPropertiesTempDataEntryList =
				new ArrayList<ProductGroupPropertiesTempDataEntry>();
		String selectQuery  = super.gueryBuilder(fields, limits, limitNum, mTableName, sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					ProductGroupPropertiesTempDataEntry productGroupPropertiesTempDataEntry =
							new ProductGroupPropertiesTempDataEntry();
					// set data row to product group item
					productGroupPropertiesTempDataEntry.setGrpID(c.getInt(c.getColumnIndex("GrpID")));
					productGroupPropertiesTempDataEntry.setPropertiesID(c.getInt(c.getColumnIndex("PropertiesID")));
					productGroupPropertiesTempDataEntry.setUserID(c.getInt(c.getColumnIndex("UserID")));
					// Adding contact to list
					productGroupPropertiesTempDataEntryList.add(productGroupPropertiesTempDataEntry);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		} 
		return productGroupPropertiesTempDataEntryList;
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

	//getting PropertiesID
	public int getPropertiesID() {
		return mPropertiesID;
	}

	//setting PropertiesId
	public void setPropertiesID(int mPropertiesID) {
		this.mPropertiesID = mPropertiesID;
	}

	//getting UserID
	public int getUserID() {
		return mUserID;
	}

	//setting UserID
	public void setUserID(int mUserID) {
		this.mUserID = mUserID;
	}
}
