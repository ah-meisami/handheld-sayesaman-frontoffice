package dataBase;

import java.util.ArrayList;

import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

//tblProdProperties in db
public class ProductPropertiesValue extends Model {
   
	//private Variables
	private int mProdID;
	private int mPropertiesID;
	private int mPropertiesSelectValue;
	private String mPropertiesVales;
	// table name in DB
	private String mTableName = "tblProdProperties";
	
	//empty Constructor
	public ProductPropertiesValue(){		
	}
	
	//initial Constructor
	public ProductPropertiesValue(int mProdID, int mPropertiesID, int mPropertiesSelectValue,
			String mPropertiesVales){
		this.setProdID(mProdID);
		this.setPropertiesID(mPropertiesID);
		this.setPropertiesSelectValue(mPropertiesSelectValue);
		this.setPropertiesVales(mPropertiesVales);
	}
	
	//initial Id_less Constructor
	public ProductPropertiesValue(int mPropertiesID, int mPropertiesSelectValue,
			String mPropertiesVales){	
		this.setPropertiesID(mPropertiesID);
		this.setPropertiesSelectValue(mPropertiesSelectValue);
		this.setPropertiesVales(mPropertiesVales);
	}
	// Load From DB
	public void load() {
		String[] columns = { "ProdID", "PropertiesID", "PropertiesSelectValue",
				"PropertiesVales", "UserID" };
		String selection = "ProdID = ? and PropertiesID = ?";
		String[] selectionArgs = { String.valueOf(getProdID()),
				String.valueOf(getPropertiesID())};
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
				setPropertiesVales(c.getString(c
						.getColumnIndex("PropertiesVales")));
			}
		} catch (Exception e) {
		} 
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("ProdID", getProdID());
		values.put("PropertiesID", getPropertiesID());
		values.put("PropertiesSelectValue", getPropertiesSelectValue());
		values.put("PropertiesVales", getPropertiesVales());
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
			if (getPropertiesVales() != null
					&& getPropertiesVales() != "")
				values.put("PropertiesVales", getPropertiesVales());		

		} else {
			values.put("ProdID", getProdID());
			values.put("PropertiesID", getPropertiesID());
			values.put("PropertiesSelectValue", getPropertiesSelectValue());
			values.put("PropertiesVales", getPropertiesVales());	
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

	public ArrayList<ProductPropertiesValue> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {
		ArrayList<ProductPropertiesValue> productPropertiesValueList = 
				new ArrayList<ProductPropertiesValue>();
		String selectQuery  = super.gueryBuilder(fields, limits, limitNum, mTableName,sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					ProductPropertiesValue productPropertiesValue = new ProductPropertiesValue();
					// set data row to product group item
					try{
					productPropertiesValue.setProdID(c.getInt(c.getColumnIndex("ProdID")));
					productPropertiesValue.setPropertiesID(c.getInt(c
							.getColumnIndex("PropertiesID")));
					productPropertiesValue.setPropertiesVales(c.getString(c
							.getColumnIndex("PropertiesVales")));
					productPropertiesValue.setPropertiesSelectValue(c.getInt(c
							.getColumnIndex("PropertiesSelectValue")));					
					}catch(Exception ex){						
					}
					// Adding contact to list
					productPropertiesValueList.add(productPropertiesValue);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		} 
		return productPropertiesValueList;
	}

	public int Count(TblFields field, ArrayList<Limit> limits){
		return super.Count(field, mTableName, limits);
	}

	//getting ProdID
	public int getProdID() {
		return mProdID;
	}

	//setting ProdID
	public void setProdID(int mProdID) {
		this.mProdID = mProdID;
	}

	//getting PropertiesID
	public int getPropertiesID() {
		return mPropertiesID;
	}
    //setting PropertiesID
	public void setPropertiesID(int mPropertiesID) {
		this.mPropertiesID = mPropertiesID;
	}

	//getting PropertiesSelectValue
	public int getPropertiesSelectValue() {
		return mPropertiesSelectValue;
	}

	//setting PropertiesSelectValue
	public void setPropertiesSelectValue(int mPropertiesSelectValue) {
		this.mPropertiesSelectValue = mPropertiesSelectValue;
	}

	//getting PropertiesValue
	public String getPropertiesVales() {
		return mPropertiesVales;
	}

	//setting PropertiesValues
	public void setPropertiesVales(String mPropertiesVales) {
		this.mPropertiesVales = mPropertiesVales;
	}
}
