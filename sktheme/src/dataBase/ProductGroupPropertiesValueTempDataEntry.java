package dataBase;

import java.util.ArrayList;

import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

public class ProductGroupPropertiesValueTempDataEntry extends Model{
	//private Variables
	private int mPID;
	private int mProdGrpID;
	private int mValueID;
	private int mUserID;
	
	// table name in DB
	private String mTableName = "tblProdGrpPeropertiesValueTempDataEntry";
	
	//empty Constructor
	public ProductGroupPropertiesValueTempDataEntry(){}
	
	//initial Constructor
	public ProductGroupPropertiesValueTempDataEntry(int mPID,
			int mProdGrpID, int mValueID, int mUserID){
		this.setPID(mPID);
		this.setProdGrpID(mProdGrpID);
		this.setValueID(mValueID);
		this.setUserID(mUserID);
	}


	// Load From DB
	public void load() {
		String[] columns = { "PID", "ProdGrpID", "ValueID", "UserID" };
		String selection = "PID = ? and ProdGrpID = ? and ValueID = ? and UserID = ?";
		String[] selectionArgs = { String.valueOf(getPID()), String.valueOf(getProdGrpID()),
				String.valueOf(getValueID()), String.valueOf(getUserID())};
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setPID(c.getInt(c.getColumnIndex("PID")));
				setProdGrpID(c.getInt(c.getColumnIndex("ProdGrpID")));
				setValueID(c.getInt(c.getColumnIndex("ValueID")));
				setUserID(c.getInt(c.getColumnIndex("UserID")));				
			}
		} catch (Exception e) {	
		} 
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("PID", getPID());
		values.put("ProdGrpID", getProdGrpID());
		values.put("ValueID", getValueID());
		values.put("UserID", getUserID());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		}
	}

	public void update(Boolean checkNullFields) {
		ContentValues values = new ContentValues();
		if (checkNullFields) {
			if (getPID() != 0)
				values.put("PID", getPID());
			if (getProdGrpID() != 0)
				values.put("ProdGrpID", getProdGrpID());
			if (getValueID() != 0)
				values.put("ValueID", getValueID());
			if (getUserID() != 0)
				values.put("UserID", getUserID());
		} else {
			values.put("PID", getPID());
			values.put("ProdGrpID", getProdGrpID());
			values.put("ValueID", getValueID());
			values.put("UserID", getUserID());
		}

		String whereClause = "PID = ? and ProdGrpID = ? and ValueID = ? and UserID = ?";
		String[] whereArgs = { String.valueOf(getPID()), String.valueOf(getProdGrpID()),
				String.valueOf(getValueID()), String.valueOf(getUserID())};
		try {
			DataSourceTools.updateObject(mTableName, values, whereClause,
					whereArgs);
		} catch (Exception e) {
		}
	}

	public void delete() {
		String whereClause = "PID = ? and ProdGrpID = ? and ValueID = ? and UserID";
		String[] whereArgs = { String.valueOf(getPID()) , String.valueOf(getProdGrpID()),
				String.valueOf(getValueID()), String.valueOf(getUserID())};
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {
		}
	}

	public ArrayList<ProductGroupPropertiesValueTempDataEntry> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {
		
		ArrayList<ProductGroupPropertiesValueTempDataEntry> productGroupPropertiesValueTempDataEntryList = 
				new ArrayList<ProductGroupPropertiesValueTempDataEntry>();
		String selectQuery  = super.gueryBuilder(fields, limits, limitNum, mTableName,sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					ProductGroupPropertiesValueTempDataEntry productGroupPropertiesValueTempDataEntry = 
							new ProductGroupPropertiesValueTempDataEntry();
					// set data row to product group item
					productGroupPropertiesValueTempDataEntry.setPID(c.getInt(c.getColumnIndex("PID")));
					productGroupPropertiesValueTempDataEntry.setProdGrpID(c.getInt(c.getColumnIndex("ProdGrpID")));
					productGroupPropertiesValueTempDataEntry.setValueID(c.getInt(c.getColumnIndex("ValueID")));
					productGroupPropertiesValueTempDataEntry.setUserID(c.getInt(c.getColumnIndex("UserID")));
					// Adding contact to list 
					productGroupPropertiesValueTempDataEntryList.add(productGroupPropertiesValueTempDataEntry);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
			Log.e("DB Load: ", e.getMessage());
		}
		return productGroupPropertiesValueTempDataEntryList;
	}

	public int Count(TblFields field, ArrayList<Limit> limits){
		return super.Count(field, mTableName, limits);
	}
	
	//getting PID
	public int getPID() {
		return mPID;
	}

	//setting PID
	public void setPID(int mPID) {
		this.mPID = mPID;
	}

	//getting ProdGrpID
	public int getProdGrpID() {
		return mProdGrpID;
	}

	//setting ProdGrpID
	public void setProdGrpID(int mProdGrpID) {
		this.mProdGrpID = mProdGrpID;
	}

	//getting ValueID
	public int getValueID() {
		return mValueID;
	}

	//setting ValueID
	public void setValueID(int mValueID) {
		this.mValueID = mValueID;
	}

	//getting User ID
	public int getUserID() {
		return mUserID;
	}

	//setting User ID
	public void setUserID(int mUserID) {
		this.mUserID = mUserID;
	}
}
