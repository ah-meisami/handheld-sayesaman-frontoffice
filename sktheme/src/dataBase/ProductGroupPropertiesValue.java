package dataBase;

import java.util.ArrayList;
import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;

public class ProductGroupPropertiesValue extends Model {
	
	//private Variables
	private int mPID;
	private int mProdGrpID;
	private int mValueID;
	// table name in DB
	private String mTableName = "tblProdGrpPeropertiesValue";
	
	//empty Constructor
	public ProductGroupPropertiesValue(){}
	
	//initial Constructor
	public ProductGroupPropertiesValue(int mPID ,int mProdGrpID, int mValueID){
		this.setPID(mPID);
		this.setProdGrpID(mProdGrpID);
		this.setValueID(mValueID);
	}
	
	// Load From DB
	public void load() {
		String[] columns = { "PID", "ProdGrpID", "ValueID" };
		String selection = "PID = ? and ProdGrpID = ? and ValueID = ?";
		String[] selectionArgs = { String.valueOf(getPID()), String.valueOf(getProdGrpID()),
				String.valueOf(getValueID())};
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setPID(c.getInt(c.getColumnIndex("PID")));
				setProdGrpID(c.getInt(c.getColumnIndex("ProdGrpID")));
				setValueID(c.getInt(c.getColumnIndex("ValueID")));				
			}
		} catch (Exception e) {
		} 
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("PID", getPID());
		values.put("ProdGrpID", getProdGrpID());
		values.put("ValueID", getValueID());
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
		} else {
			values.put("PID", getPID());
			values.put("ProdGrpID", getProdGrpID());
			values.put("ValueID", getValueID());
		}

		String whereClause = "PID = ? and ProdGrpID = ? and ValueID = ?";
		String[] whereArgs = { String.valueOf(getPID()), String.valueOf(getProdGrpID()),
				String.valueOf(getValueID())};
		try {
			DataSourceTools.updateObject(mTableName, values, whereClause,
					whereArgs);
		} catch (Exception e) {
		}
	}

	public void delete() {
		String whereClause = "PID = ? and ProdGrpID = ? and ValueID = ?";
		String[] whereArgs = { String.valueOf(getPID()) , String.valueOf(getProdGrpID()),
				String.valueOf(getValueID())};
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {
		}
	}

	public ArrayList<ProductGroupPropertiesValue> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<ProductGroupPropertiesValue> productGroupPropertiesValueList = 
				new ArrayList<ProductGroupPropertiesValue>();	
		String selectQuery  = super.gueryBuilder(fields, limits, limitNum, mTableName,sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					ProductGroupPropertiesValue productGroupPropertiesValue = new ProductGroupPropertiesValue();
					// set data row to product group item
					productGroupPropertiesValue.setPID(c.getInt(c.getColumnIndex("PID")));
					productGroupPropertiesValue.setProdGrpID(c.getInt(c.getColumnIndex("ProdGrpID")));
					productGroupPropertiesValue.setValueID(c.getInt(c.getColumnIndex("ValueID")));
					// Adding contact to list
					productGroupPropertiesValueList.add(productGroupPropertiesValue);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		} 
		return productGroupPropertiesValueList;
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
}
