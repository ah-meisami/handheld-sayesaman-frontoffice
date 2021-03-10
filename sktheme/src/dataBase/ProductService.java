package dataBase;

import java.util.ArrayList;

import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

public class ProductService extends Model {

	//private variables
	private int mAID;
	private String mServiceDesc;
	private String mServiceComment;
	private String mTableName = "tblProdServiceDesc";
	
	//empty Constructor
	public ProductService(){}
	
	//initial Constructor
	public ProductService(int mAID,String mServiceDesc,String mServiceComment){
		this.setAID(mAID);
		this.setServiceDesc(mServiceDesc);
		this.setServiceComment(mServiceComment);
	}
	
	//initial id_less Constructor
    public ProductService(String mServiceDesc,String mServiceComment){
    	this.setServiceDesc(mServiceDesc);
		this.setServiceComment(mServiceComment);
	}
    
 // Load From DB
 	public void load() {
 		String[] columns = { "AID", "ServiceDesc", "ServiceComment" };
 		String selection = "AID = ?";
 		String[] selectionArgs = { String.valueOf(getAID()) };
 		Cursor c = null;
 		try {
 			c = DataSourceTools.findObject(mTableName , columns, selection,
 					selectionArgs);
 			if (c.moveToFirst()) {
 				setAID(c.getInt(c.getColumnIndex("AID")));
 				setServiceDesc(c.getString(c.getColumnIndex("ServiceDesc")));
 				setServiceComment(c.getString(c.getColumnIndex("ServiceComment"))); 				
 			}
 		} catch (Exception e) {
 		}
 	}

 	public void save() {
 		
 		ContentValues values = new ContentValues();
 		values.put("AID", getAID());
 		values.put("ServiceDesc", getServiceDesc());
 		values.put("ServiceComment", getServiceComment());
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
 			if (getServiceDesc() != null && getServiceDesc() != "")
 				values.put("ServiceDesc", getServiceDesc());
 			if (getServiceComment() != null && getServiceComment() != "")
 				values.put("ServiceComment", getServiceComment());
 		} else {
 			values.put("AID", getAID());
 			values.put("ServiceDesc", getServiceDesc());
 			values.put("ServiceComment", getServiceComment());
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
 			Log.e("Del Row(s) From DB: ", e.getMessage());
 		}
 	}

 	public ArrayList<ProductService> getAll(ArrayList<TblFields> fields,
 			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

 		ArrayList<ProductService> productServiceList = new ArrayList<ProductService>();
 		String selectQuery  = super.gueryBuilder(fields, limits, limitNum, mTableName,sorts);
 		Cursor c = null;
 		try {
 			c = DataSourceTools.findAllObject(selectQuery);
 			if (c.moveToFirst()) {
 				do {
 					ProductService productService = new ProductService();
 					// set data row to product group item
 					productService.setAID(c.getInt(c.getColumnIndex("AID"))); 					
 					productService.setServiceDesc(c.getString(c.getColumnIndex("ServiceDesc"))); 				
 					productService.setServiceComment(c.getString(c.getColumnIndex("ServiceComment"))); 					
 					// Adding contact to list
 					productServiceList.add(productService);
 				} while (c.moveToNext());
 			}
 		} catch (Exception e) {
 		} 
 		return productServiceList;
 	}

	public int Count(TblFields field, ArrayList<Limit> limits){
		return super.Count(field, mTableName, limits);
	}
    //getting AID
	public int getAID() {
		return mAID;
	}

	//setting AID
	public void setAID(int mAID) {
		this.mAID = mAID;
	}

	//getting ServiceDesc
	public String getServiceDesc() {
		return mServiceDesc;
	}

	//setting ServiceComment
	public void setServiceDesc(String mServiceDesc) {
		this.mServiceDesc = mServiceDesc;
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
