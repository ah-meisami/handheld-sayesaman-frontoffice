package dataBase;

import java.util.ArrayList;

import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

public class ProductGroupProperties extends Model {
	
	//private Variables
	private int mGrpID;
	private int mPropertiesID;
	// table name in DB
	String mTableName = "tblProdGrpProperties";
	//empty Constructor
	public ProductGroupProperties(){}
	
	//initial Constructor
	public ProductGroupProperties(int mGrpID, int mPropertiesID){
		this.setGrpID(mGrpID);
		this.setPropertiesID(mPropertiesID);
	}
	
	// Load From DB
	public void load() {
		String[] columns = { "GrpID", "PropertiesID" };
		String selection = "GrpID = ? and PropertiesID = ?";
		String[] selectionArgs = { String.valueOf(getGrpID()), String.valueOf(getPropertiesID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setGrpID(c.getInt(c.getColumnIndex("GrpID")));
				setPropertiesID(c.getInt(c.getColumnIndex("PropertiesID")));
			}
		} catch (Exception e) {
		}
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("GrpID", getGrpID());
		values.put("PropertiesID", getPropertiesID());
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
		} else {
			values.put("GrpID", getGrpID());
			values.put("PropertiesID", getPropertiesID());	
		}

		String whereClause = "GrpID = ? and PropertiesID = ?";
		String[] whereArgs = { String.valueOf(getGrpID()), String.valueOf(getPropertiesID()) };
		try {
			DataSourceTools.updateObject(mTableName, values, whereClause,
					whereArgs);
		} catch (Exception e) {
		} 
	}

	public void delete() {
		String whereClause = "GrpID = ? and PropertiesID=?";
		String[] whereArgs = { String.valueOf(getGrpID()) , String.valueOf(getPropertiesID())};
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {
			Log.e("Del Row(s) From DB: ", e.getMessage());
		}
	}

	public ArrayList<ProductGroupProperties> getAll(ArrayList<TblFields> fields, ArrayList<Limit> limits,
			String limitNum, ArrayList<Sort> sorts) {

		ArrayList<ProductGroupProperties> productGroupPropertiesList = new ArrayList<ProductGroupProperties>();
		String selectQuery  = super.gueryBuilder(fields, limits, limitNum, mTableName,sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					ProductGroupProperties productGroupProperties = new ProductGroupProperties();
					// set data row to product group item
					productGroupProperties.setGrpID(c.getInt(c.getColumnIndex("GrpID")));
					productGroupProperties.setPropertiesID(c.getInt(c.getColumnIndex("PropertiesID")));
					// Adding contact to list
					productGroupPropertiesList.add(productGroupProperties);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		} 
		return productGroupPropertiesList;
	}
	public int Count(TblFields field, ArrayList<Limit> limits){
		return super.Count(field, mTableName, limits);
	}

	//getting Group ID
	public int getGrpID() {
		return mGrpID;
	}

	//Setting Group ID
	public void setGrpID(int mGrpID) {
		this.mGrpID = mGrpID;
	}

	//getting Properties ID
	public int getPropertiesID() {
		return mPropertiesID;
	}

	//setting Properties ID
	public void setPropertiesID(int mPropertiesID) {
		this.mPropertiesID = mPropertiesID;
	} 
}
