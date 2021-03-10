package dataBase;

import java.util.ArrayList;
import android.content.ContentValues;
import android.database.Cursor;
import dataBase.DBUtil.TblFields;

public class ProductScore extends Model {
	// private Variables
	private int mProdScoreID;
	private int mCustID;
	private int mProdID;
	private short mProdScoreValue;
	private String mProdScoreDateTime;
	private String mTableName = "tblProdScore";

	// empty constructor
	public ProductScore() {
	}

	// initial constructor
	public ProductScore(int mProdScoreID, int mCustID, int mProdID,
			short mProdScoreValue, String mProdScoreDateTime) {
		this.mProdScoreID = mProdScoreID;
		this.mCustID = mCustID;
		this.mProdID = mProdID;
		this.mProdScoreValue = mProdScoreValue;
		this.mProdScoreDateTime = mProdScoreDateTime;
	}

	// initial id_less constructor
	public ProductScore(int mCustID, int mProdID, short mProdScoreValue,
			String mProdScoreDateTime) {
		this.mCustID = mCustID;
		this.mProdID = mProdID;
		this.mProdScoreValue = mProdScoreValue;
		this.mProdScoreDateTime = mProdScoreDateTime;
	}

	// Load From DB
	public void load() {
		String[] columns = { "ProdScoreID", "CustID", "ProdID",
				"ProdScoreValue", "ProdScoreDateTime" };
		String selection = "ProdScoreID = ?";
		String[] selectionArgs = { String.valueOf(getProdScoreID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setCustID(c.getInt(c.getColumnIndex("CustID")));
				setProdID(c.getInt(c.getColumnIndex("ProdID")));
				setProdScoreValue(c
						.getShort(c.getColumnIndex("ProdScoreValue")));
				setProdScoreDateTime(c.getString(c
						.getColumnIndex("ProdScoreDateTime")));
			}
		} catch (Exception e) {
		} 
	}

	public void save() {

		ContentValues values = new ContentValues();
		values.put("CustID", getCustID());
		values.put("ProdID", getProdID());
		values.put("ProdScoreValue", getProdScoreValue());
		values.put("ProdScoreDateTime", getProdScoreDateTime());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		} 
	}

	public void update(boolean checkNullFields) {
		ContentValues values = new ContentValues();
		if (checkNullFields) {
			if (getCustID() != 0)
				values.put("CustID", getCustID());
			if (getProdID() != 0)
				values.put("ProdID", getProdID());
			if (getProdScoreValue() != 0)
				values.put("ProdScoreValue", getProdScoreValue());
			if (getProdScoreDateTime() != null && getProdScoreDateTime() != "")
				values.put("ProdScoreDateTime", getProdScoreDateTime());
		} else {
			values.put("CustID", getCustID());
			values.put("ProdID", getProdID());
			values.put("ProdScoreValue", getProdScoreValue());
			values.put("ProdScoreDateTime", getProdScoreDateTime());
		}

		String whereClause = "ProdScoreID = ?";
		String[] whereArgs = { String.valueOf(getProdScoreID()) };
		try {
			DataSourceTools.updateObject(mTableName, values, whereClause,
					whereArgs);
		} catch (Exception e) {
		} 
	}

	public void delete() {
		String whereClause = "ProdScoreID = ?";
		String[] whereArgs = { String.valueOf(getProdScoreID()) };
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {
		}
	}

	public ArrayList<ProductScore> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<ProductScore> productScoreList = new ArrayList<ProductScore>();
		String selectQuery = super.gueryBuilder(fields, limits, limitNum,
				mTableName, sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					ProductScore productScore = new ProductScore();
					try {
						// set data row to product group item
						productScore.setProdScoreID(c.getInt(c.getColumnIndex("ProdScoreID")));		
						productScore.setCustID(c.getInt(c.getColumnIndex("CustID")));
						productScore.setProdID(c.getInt(c.getColumnIndex("ProdID")));
						productScore.setProdScoreValue(c.getShort(c.getColumnIndex("ProdScoreValue")));
						productScore.setProdScoreDateTime(c.getString(c.getColumnIndex("ProdScoreDateTime")));
					} catch (Exception ex) {
					}
					// Adding contact to list
					productScoreList.add(productScore);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		} 
		return productScoreList;
	}

	public int Count(TblFields field, ArrayList<Limit> limits) {
		return super.Count(field, mTableName, limits);
	}

	// Accessor & Mutator

	public int getProdScoreID() {
		return mProdScoreID;
	}

	public void setProdScoreID(int mProdScoreID) {
		this.mProdScoreID = mProdScoreID;
	}

	public int getCustID() {
		return mCustID;
	}

	public void setCustID(int mCustID) {
		this.mCustID = mCustID;
	}

	public int getProdID() {
		return mProdID;
	}

	public void setProdID(int mProdID) {
		this.mProdID = mProdID;
	}

	public short getProdScoreValue() {
		return mProdScoreValue;
	}

	public void setProdScoreValue(short mProdScoreValue) {
		this.mProdScoreValue = mProdScoreValue;
	}

	public String getProdScoreDateTime() {
		return mProdScoreDateTime;
	}

	public void setProdScoreDateTime(String mProdScoreDateTime) {
		this.mProdScoreDateTime = mProdScoreDateTime;
	}
}
