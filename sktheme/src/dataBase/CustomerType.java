package dataBase;

import java.util.ArrayList;

import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

public class CustomerType extends Model {

	// private variables
	private int mAID;
	private String mCustTypeDesc;
	private int mIsSupplier;
		
	// table name in DB
	String mTableName = "tbl_B_CustTypeDesc";

	// Empty constructor
	public CustomerType() {
	}

	// initial constructor
	public CustomerType(int mAID, String mCustTypeDesc, int mIsSupplier) {
		this.mAID = mAID;
		this.mCustTypeDesc = mCustTypeDesc;
		this.mIsSupplier = mIsSupplier;
	}

	// initial id_less constructor
	public CustomerType(String mCustTypeDesc, int mIsSupplier) {
		this.mCustTypeDesc = mCustTypeDesc;
		this.mIsSupplier = mIsSupplier;
	}

	// Load From DB
	public void load() {
		String[] columns = { "AID", "CustTypeDesc", "IsSupplier" };
		String selection = "AID = ?";
		String[] selectionArgs = { String.valueOf(getAID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setAID(c.getInt(c.getColumnIndex("AID")));
				setCustTypeDesc(c.getString(c.getColumnIndex("CustTypeDesc")));				
				setIsSupplier(c.getInt(c.getColumnIndex("IsSupplier")));				
			}
		} catch (Exception e) {
			Log.e("DB Load: ", e.getMessage());
		} 
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("AID", getAID());
		values.put("CustTypeDesc", getCustTypeDesc());
		values.put("IsSupplier", getIsSupplier());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		} 
	}

	public void update(Boolean checkNullFields) {
		ContentValues dataToUpdate = new ContentValues();
		if (checkNullFields) {
			if (getCustTypeDesc() != null && getCustTypeDesc() != "")
				dataToUpdate.put("CustTypeDesc", getCustTypeDesc());
			if (getIsSupplier() != 0)
				dataToUpdate.put("IsSupplier", getIsSupplier());		
		} else {
			dataToUpdate.put("CustTypeDesc", getCustTypeDesc());
			dataToUpdate.put("IsSupplier", getIsSupplier());
		}

		String whereClause = "AID = ?";
		String[] whereArgs = { String.valueOf(getAID()) };
		try {
			DataSourceTools.updateObject(mTableName, dataToUpdate, whereClause,
					whereArgs);
		} catch (Exception e) {
		} 
	}

	public void delete() {
		String whereClause = "AID = ?";
		String[] whereArgs = { String.valueOf(getAID()) };
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {
			Log.e("Del Row(s) From DB: ", e.getMessage());
		}
	}

	@Override
	public ArrayList<CustomerType> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<CustomerType> customerTypeList = new ArrayList<CustomerType>();
		String selectQuery = super.gueryBuilder(fields, limits, limitNum,
				mTableName, sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					// set data row to product item
					CustomerType customerType = new CustomerType();
					customerType.setAID(c.getInt(c.getColumnIndex("AID")));
					customerType.setCustTypeDesc(c.getString(c.getColumnIndex("CustTypeDesc")));
					customerType.setIsSupplier(c.getInt(c.getColumnIndex("IsSupplier")));
					// Adding contact to list
					customerTypeList.add(customerType);
				} while (c.moveToNext());
			}
		} catch (Exception e) {			
		}
		return customerTypeList;
	}

	public int Count(TblFields field, ArrayList<Limit> limits) {
		return super.Count(field, mTableName, limits);
	}	

	public int getAID() {
		return mAID;
	}

	public void setAID(int mAID) {
		this.mAID = mAID;
	}

	public String getCustTypeDesc() {
		return mCustTypeDesc;
	}

	public void setCustTypeDesc(String mCustTypeDesc) {
		this.mCustTypeDesc = mCustTypeDesc;
	}

	public int getIsSupplier() {
		return mIsSupplier;
	}

	public void setIsSupplier(int mIsSupplier) {
		this.mIsSupplier = mIsSupplier;
	}
}
