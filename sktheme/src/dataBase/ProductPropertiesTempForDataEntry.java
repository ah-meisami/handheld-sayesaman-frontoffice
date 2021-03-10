package dataBase;

import java.util.ArrayList;

import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

public class ProductPropertiesTempForDataEntry extends Model {

	//private variables
	private int mProdID;
	private int mPropertiesID;
	private int mPropertiesSelectValue;
	private String mPropertiesValues;
	private int mUserID;
	// table name in DB
	private String mTableName = "tblProdPropertiesTempForDataEntry";
	
	//empty Constructor
	public ProductPropertiesTempForDataEntry(){		
	}
	
	//initial Constructor
	public ProductPropertiesTempForDataEntry(int mProdID, int mPropertiesID,
			int mPropertiesSelectValue, String mPropertiesValue, int mUserID){
		this.setProdID(mProdID);
		this.setPropertiesID(mPropertiesID);
		this.setPropertiesSelectValue(mPropertiesSelectValue);
		this.setPropertiesValues(mPropertiesValue);
		this.setUserID(mUserID);
	}
	

	// Load From DB
	public void load() {
		String[] columns = { "ProdID", "PropertiesID", "PropertiesSelectValue",
				"PropertiesValues", "UserID" };
		String selection = "ProdID = ?";
		String[] selectionArgs = { String.valueOf(getProdID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setProdID(c.getInt(c
						.getColumnIndex("ProdID")));
				setPropertiesID(c.getInt(c
						.getColumnIndex("PropertiesID")));
				setPropertiesSelectValue(c
						.getInt(c.getColumnIndex("PropertiesSelectValue")));
				setPropertiesValues(c.getString(c
						.getColumnIndex("PropertiesValues")));
				setUserID(c.getInt(c
						.getColumnIndex("UserID")));
			}
		} catch (Exception e) {
		} 
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("ProdID", getProdID());
		values.put("PropertiesID", getPropertiesID());
		values.put("PropertiesSelectValue", getPropertiesSelectValue());
		values.put("PropertiesValues", getPropertiesValues());
		values.put("UserID", getUserID());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		} 
	}

	public void update(Boolean checkNullFields) {
		ContentValues values = new ContentValues();
		if (checkNullFields) {
			if (getProdID() != 0)
				values.put("ProdID", getProdID());
			if (getPropertiesID() != 0)
				values.put("PropertiesID", getPropertiesID());
			if (getPropertiesSelectValue() != 0)
				values.put("PropertiesSelectValue", getPropertiesSelectValue());
			if (getPropertiesValues() != null
					&& getPropertiesValues() != "")
				values.put("PropertiesValues", getPropertiesValues());
			if (getUserID() != 0)
				values.put("UserID", getUserID());			

		} else {
			values.put("ProdID", getProdID());
			values.put("PropertiesID", getPropertiesID());
			values.put("PropertiesSelectValue", getPropertiesSelectValue());
			values.put("PropertiesValues", getPropertiesValues());
			values.put("UserID", getUserID());	
		}

		String whereClause = "ProdID = ?";
		String[] whereArgs = { String.valueOf(getProdID()) };
		try {
			DataSourceTools.updateObject(mTableName, values, whereClause,
					whereArgs);
		} catch (Exception e) {
		}
	}

	public void delete() {
		String whereClause = "ProdID = ?";
		String[] whereArgs = { String.valueOf(getProdID()) };
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {
			Log.e("Del Row(s) From DB: ", e.getMessage());
		}
	}

	public ArrayList<ProductPropertiesTempForDataEntry> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<ProductPropertiesTempForDataEntry> productPropertiesTempForDataEntryList = 
				new ArrayList<ProductPropertiesTempForDataEntry>();
		String selectQuery  = super.gueryBuilder(fields, limits, limitNum, mTableName,sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					ProductPropertiesTempForDataEntry productPropertiesTempForDataEntry = new ProductPropertiesTempForDataEntry();
					// set data row to product group item
					productPropertiesTempForDataEntry.setProdID(c.getInt(c.getColumnIndex("ProdID")));
					productPropertiesTempForDataEntry.setPropertiesID(c.getInt(c
							.getColumnIndex("PropertiesID")));
					productPropertiesTempForDataEntry.setPropertiesSelectValue(c.getInt(c
							.getColumnIndex("PropertiesSelectValue")));
					productPropertiesTempForDataEntry.setPropertiesValues(c.getString(c
							.getColumnIndex("PropertiesValues")));
					productPropertiesTempForDataEntry.setUserID(c.getInt(c
							.getColumnIndex("UserID")));
					// Adding contact to list
					productPropertiesTempForDataEntryList.add(productPropertiesTempForDataEntry);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		} 
		return productPropertiesTempForDataEntryList;
	}

	public int Count(TblFields field, ArrayList<Limit> limits){
		return super.Count(field, mTableName, limits);
	}

	//Accessor-Mutator method for private variabels
	
	public int getProdID() {
		return mProdID;
	}

	public void setProdID(int mProdID) {
		this.mProdID = mProdID;
	}

	public int getPropertiesID() {
		return mPropertiesID;
	}

	public void setPropertiesID(int mPropertiesID) {
		this.mPropertiesID = mPropertiesID;
	}

	public int getPropertiesSelectValue() {
		return mPropertiesSelectValue;
	}

	public void setPropertiesSelectValue(int mPropertiesSelectValue) {
		this.mPropertiesSelectValue = mPropertiesSelectValue;
	}

	public String getPropertiesValues() {
		return mPropertiesValues;
	}

	public void setPropertiesValues(String mPropertiesValues) {
		this.mPropertiesValues = mPropertiesValues;
	}

	public int getUserID() {
		return mUserID;
	}

	public void setUserID(int mUserID) {
		this.mUserID = mUserID;
	}
	
}
