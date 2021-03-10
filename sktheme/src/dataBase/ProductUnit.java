package dataBase;

import java.util.ArrayList;
import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;

public class ProductUnit extends Model {
	// Private Variables
	private int mAID; // auto increment Field
	private int mProdID;
	private String mUnitName;
	private float mUnitQty;
	private short mIsBaseUnit;
	private short mIsAllowToSales;
	private String mTableName = "tblProdUnitDesc";

	// empty Constructor
	public ProductUnit() {
	}

	// initial Constructor
	public ProductUnit(int mAID, int mProdID, String mUnitName, float mUnitQty,
			short mIsBaseUnit, short mIsAllowToSales) {
		this.mAID = mAID;
		this.mProdID = mProdID;
		this.mUnitName = mUnitName;
		this.mUnitQty = mUnitQty;
		this.mIsBaseUnit = mIsBaseUnit;
		this.mIsAllowToSales = mIsAllowToSales;
	}

	// initial ID_less Constructor
	public ProductUnit(int mProdID, String mUnitName, float mUnitQty,
			short mIsBaseUnit, short mIsAllowToSales) {
		this.mProdID = mProdID;
		this.mUnitName = mUnitName;
		this.mUnitQty = mUnitQty;
		this.mIsBaseUnit = mIsBaseUnit;
		this.mIsAllowToSales = mIsAllowToSales;
	}

	// Load From DB
	public void load() {
		String[] columns = { "AID", "ProdID", "UnitName", "UnitQty",
				"IsBaseUnit", "IsAllowToSales" };
		String selection = "AID = ?";
		String[] selectionArgs = { String.valueOf(getAID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setAID(c.getInt(c.getColumnIndex("AID")));
				setProdID(c.getInt(c.getColumnIndex("ProdID")));
				setUnitName(c.getString(c.getColumnIndex("UnitName")));
				setUnitQty(c.getFloat(c.getColumnIndex("UnitQty")));
				setIsBaseUnit(c.getShort(c.getColumnIndex("IsBaseUnit")));
				setIsAllowToSales(c
						.getShort(c.getColumnIndex("IsAllowToSales")));
			}
		} catch (Exception e) {
		}
	}

	public void save() {

		ContentValues values = new ContentValues();
		values.put("AID", getAID());
		values.put("ProdID", getProdID());
		values.put("UnitName", getUnitName());
		values.put("UnitQty", getUnitQty());
		values.put("IsBaseUnit", getIsAllowToSales());
		values.put("IsAllowToSales", getIsAllowToSales());
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
			if (getUnitName() != null && getUnitName() != "")
				values.put("UnitName", getUnitName());
			if (getUnitQty() != 0)
				values.put("UnitQty", getUnitQty());
			if (getIsBaseUnit() != 0)
				values.put("IsBaseUnit", getIsBaseUnit());
			if (getIsAllowToSales() != 0)
				values.put("IsAllowToSales", getIsAllowToSales());
		} else {
			values.put("ProdID", getProdID());
			values.put("UnitName", getUnitName());
			values.put("UnitQty", getUnitQty());
			values.put("IsBaseUnit", getIsBaseUnit());
			values.put("IsAllowToSales", getIsAllowToSales());
		}

		String whereClause = "AID = ?";
		String[] whereArgs = { String.valueOf(getAID()) };
		try {
			DataSourceTools.updateObject(mTableName, values, whereClause,
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
		}
	}

	public ArrayList<ProductUnit> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<ProductUnit> productUnitList = new ArrayList<ProductUnit>();
		String selectQuery = super.gueryBuilder(fields, limits, limitNum,
				mTableName,sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					ProductUnit productUnit = new ProductUnit();
					try{
					// set data row to product group item
					productUnit.setAID(c.getInt(c.getColumnIndex("AID")));
					productUnit.setProdID(c.getInt(c.getColumnIndex("ProdID")));
					productUnit.setUnitName(c.getString(c
							.getColumnIndex("UnitName")));
					productUnit.setUnitQty(c.getFloat(c
							.getColumnIndex("UnitQty")));
					productUnit.setIsBaseUnit(c.getShort(c
							.getColumnIndex("IsBaseUnit")));
					productUnit.setIsAllowToSales(c.getShort(c
							.getColumnIndex("IsAllowToSales")));
					}
					catch(Exception ex){}
					// Adding contact to list
					productUnitList.add(productUnit);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		}
		return productUnitList;
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

	// getting ProductID
	public int getProdID() {
		return mProdID;
	}

	// setting ProductID
	public void setProdID(int mProdID) {
		this.mProdID = mProdID;
	}

	// getting UnitName
	public String getUnitName() {
		return mUnitName;
	}

	// setting UnitName
	public void setUnitName(String mUnitName) {
		this.mUnitName = mUnitName;
	}

	// getting UnitQty
	public float getUnitQty() {
		return mUnitQty;
	}

	// setting UnitQty
	public void setUnitQty(float mUnitQty) {
		this.mUnitQty = mUnitQty;
	}

	// getting IsBaseUnit
	public short getIsBaseUnit() {
		return mIsBaseUnit;
	}

	// setting IsBaseUnit
	public void setIsBaseUnit(short mIsBaseUnit) {
		this.mIsBaseUnit = mIsBaseUnit;
	}

	// getting IsAllowToSales
	public short getIsAllowToSales() {
		return mIsAllowToSales;
	}

	// setting IsAllowToSales
	public void setIsAllowToSales(short mIsAllowToSales) {
		this.mIsAllowToSales = mIsAllowToSales;
	}
}
