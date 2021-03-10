package dataBase;

import java.util.ArrayList;

import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

public class ProductOrderProperties extends Model {

	// private Variables
	private int mAID;
	private int mProdID;
	private int mPropertiesID;
	private String mPropertiesTitle;
	// table name in DB
	private String mTableName = "tblProdOrderProperties";

	// empty Constructor
	public ProductOrderProperties() {
	}

	// initial Constructor
	public ProductOrderProperties(int mAID, int mProdID, int mPropertiesID,
			String mPropertiesTitle) {
		this.setAID(mAID);
		this.setProdID(mProdID);
		this.setPropertiesID(mPropertiesID);
		this.setPropertiesTitle(mPropertiesTitle);
	}

	// initial id_less Constructor
	public ProductOrderProperties(int mProdID, int mPropertiesID,
			String mPropertiesTitle) {
		this.setProdID(mProdID);
		this.setPropertiesID(mPropertiesID);
		this.setPropertiesTitle(mPropertiesTitle);
	}

	// Load From DB
	public void load() {
		String[] columns = { "AID", "ProdID", "PropertiesID", "PropertiesTitle" };
		String selection = "AID = ? and ProdID = ? and PropertiesID = ? and PropertiesTitle = ?";
		String[] selectionArgs = { String.valueOf(getAID()),
				String.valueOf(getProdID()), String.valueOf(getPropertiesID()),
				getPropertiesTitle() };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setAID(c.getInt(c.getColumnIndex("AID")));
				setProdID(c.getInt(c.getColumnIndex("ProdID")));
				setPropertiesID(c.getInt(c.getColumnIndex("PropertiesID")));
				setPropertiesTitle(c.getString(c
						.getColumnIndex("PropertiesTitle")));
			}
		} catch (Exception e) {
		} 
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("AID", getAID());
		values.put("ProdID", getProdID());
		values.put("PropertiesID", getPropertiesID());
		values.put("PropertiesTitle", getPropertiesTitle());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		} 
	}

	public void update(Boolean checkNullFields) {
		ContentValues values = new ContentValues();
		if (checkNullFields) {
			if (getAID() != 0)
				values.put("AID", getAID());
			if (getProdID() != 0)
				values.put("ProdID", getProdID());
			if (getPropertiesID() != 0)
				values.put("PropertiesID", getPropertiesID());
			if (getPropertiesTitle() != null & getPropertiesTitle() != "")
				values.put("PropertiesTitle", getPropertiesTitle());
		} else {
			values.put("AID", getAID());
			values.put("ProdID", getProdID());
			values.put("PropertiesID", getPropertiesID());
			values.put("PropertiesTitle", getPropertiesTitle());
		}

		String whereClause = "AID = ? and ProdID = ? and PropertiesID = ? and PropertiesTitle = ?";
		String[] whereArgs = { String.valueOf(getAID()),
				String.valueOf(getProdID()), String.valueOf(getPropertiesID()),
				getPropertiesTitle() };
		try {
			DataSourceTools.updateObject(mTableName, values, whereClause,
					whereArgs);
		} catch (Exception e) {
		} 
	}

	public void delete() {
		String whereClause = "AID = ? and ProdID = ? and PropertiesID = ? and PropertiesTitle = ?";
		String[] whereArgs = { String.valueOf(getAID()),
				String.valueOf(getProdID()), String.valueOf(getPropertiesID()),
				getPropertiesTitle() };
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {
			Log.e("Del Row(s) From DB: ", e.getMessage());
		}
	}

	public ArrayList<ProductOrderProperties> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<ProductOrderProperties> productOrderPropertiesList = new ArrayList<ProductOrderProperties>();
		String selectQuery  = super.gueryBuilder(fields, limits, limitNum, mTableName,sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					ProductOrderProperties productOrderProperties = new ProductOrderProperties();
					// set data row to product group item
					productOrderProperties.setAID(c.getInt(c
							.getColumnIndex("AID")));
					productOrderProperties.setProdID(c.getInt(c
							.getColumnIndex("ProdID")));
					productOrderProperties.setPropertiesID(c.getInt(c
							.getColumnIndex("PropertiesID")));
					productOrderProperties.setPropertiesTitle(c.getString(c
							.getColumnIndex("PropertiesTitle")));
					// Adding contact to list
					productOrderPropertiesList.add(productOrderProperties);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		} 
		return productOrderPropertiesList;
	}
	
	public int Count(TblFields field, ArrayList<Limit> limits){
		return super.Count(field, mTableName, limits);
	}

	// getting AID
	public int getAID() {
		return mAID;
	}

	// setting AID
	public void setAID(int mAID) {
		this.mAID = mAID;
	}

	// getting ProdID
	public int getProdID() {
		return mProdID;
	}

	// setting ProdID
	public void setProdID(int mProdID) {
		this.mProdID = mProdID;
	}

	// getting PropertiesID
	public int getPropertiesID() {
		return mPropertiesID;
	}

	// setting PropertiesID
	public void setPropertiesID(int mPropertiesID) {
		this.mPropertiesID = mPropertiesID;
	}

	// getting PropertiesTitle
	public String getPropertiesTitle() {
		return mPropertiesTitle;
	}

	// setting PropertiesTitle
	public void setPropertiesTitle(String mPropertiesTitle) {
		this.mPropertiesTitle = mPropertiesTitle;
	}
}
