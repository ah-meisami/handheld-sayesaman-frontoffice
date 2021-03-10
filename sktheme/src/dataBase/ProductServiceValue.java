package dataBase;

import java.util.ArrayList;

import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

public class ProductServiceValue extends Model {

	//Private Variables
	private int mProdID;
	private int mServiceID;	
	private String mServiceComment;
	private String mTableName = "tblProdServices";
	
	//empty Constructor
	public ProductServiceValue(){
		
	}
	
	//initial Constructor
	public ProductServiceValue(int mProdID,int mServiceID, String mServiceComment){
		this.setProdID(mProdID);
		this.setServiceID(mServiceID);
		this.setServiceComment(mServiceComment);
	}
	
	//initial id_less Constructor
	public ProductServiceValue(String mServiceComment){
		this.setServiceComment(mServiceComment);
	}
	
    
 // Load From DB
 	public void load() {
 		String[] columns = { "ProdID", "ServiceID", "ServiceComment" };
 		String selection = "ProdID = ? and ServiceID = ?";
 		String[] selectionArgs = { String.valueOf(getProdID()) ,
 				String.valueOf(getServiceID())};
 		Cursor c = null;
 		try {
 			c = DataSourceTools.findObject(mTableName  , columns, selection,
 					selectionArgs);
 			if (c.moveToFirst()) {
 				setProdID(c.getInt(c.getColumnIndex("ProdID")));
 				setServiceID(c.getInt(c.getColumnIndex("ServiceID")));
 				setServiceComment(c.getString(c.getColumnIndex("ServiceComment"))); 				
 			}
 		} catch (Exception e) {
 		}
 	}

 	public void save() {
 		
 		ContentValues values = new ContentValues();
 		values.put("ProdID", getProdID());
 		values.put("ServiceID", getServiceID());
 		values.put("ServiceComment", getServiceComment());
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
 			if (getServiceID() != 0)
 				values.put("ServiceID", getServiceID());
 			if (getServiceComment() != null && getServiceComment() != "")
 				values.put("ServiceComment", getServiceComment());
 		} else {
 			values.put("ProdID", getProdID());
 			values.put("ServiceID", getServiceID());
 			values.put("ServiceComment", getServiceComment());
 		}
 		String whereClause = "ProdID = ? and ServiceID = ?";
 		String[] whereArgs = { String.valueOf(getProdID()),
 				String.valueOf(getServiceID())};
 		try {
 			DataSourceTools.updateObject(mTableName, values, whereClause,
 					whereArgs);
 		} catch (Exception e) {
 		} 
 	}

 	public void delete() {
 		String whereClause = "ProdID = ? and ServiceID = ?";
 		String[] whereArgs = { String.valueOf(getProdID()),
 				String.valueOf(getServiceID())};
 		try {
 			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
 		} catch (Exception e) {
 			Log.e("Del Row(s) From DB: ", e.getMessage());
 		}
 	}

 	public ArrayList<ProductServiceValue> getAll(ArrayList<TblFields> fields,
 			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

 		ArrayList<ProductServiceValue> productServiceValueList = new ArrayList<ProductServiceValue>();
 		String selectQuery  = super.gueryBuilder(fields, limits, limitNum, mTableName, sorts);
 		Cursor c = null;
 		try {
 			c = DataSourceTools.findAllObject(selectQuery);
 			if (c.moveToFirst()) {
 				do {
 					ProductServiceValue productServiceValue = new ProductServiceValue();
 					// set data row to product group item
 					productServiceValue.setProdID(c.getInt(c.getColumnIndex("ProdID"))); 					
 					productServiceValue.setServiceID(c.getInt(c.getColumnIndex("ServiceID")));
 					productServiceValue.setServiceComment(c.getString(c.getColumnIndex("ServiceComment"))); 					
 					// Adding contact to list
 					productServiceValueList.add(productServiceValue);
 				} while (c.moveToNext());
 			}
 		} catch (Exception e) {
 		}
 		return productServiceValueList;
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

	//getting ServiceID
	public int getServiceID() {
		return mServiceID;
	}

	//setting ServiceID	
	public void setServiceID(int mServiceID) {
		this.mServiceID = mServiceID;
	}

	//getting ServiceComment
	public String getServiceComment() {
		return mServiceComment;
	}

	//setting ServiceComment
	public void setServiceComment(String mServiceComment) {
		this.mServiceComment = mServiceComment;
	}
}
