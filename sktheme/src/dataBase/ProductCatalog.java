package dataBase;

import java.util.ArrayList;
import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;

public class ProductCatalog extends Model {

	// private Variables
	private int mAID;
	private int mProdID;
	private String mFileName;
	private String mFileType;
	private float mFileSize;
	private String mCatalogComment;
	private String mFileUrl;
	private int mIsProdPic;
	
	// table name in DB
	String mTableName = "tblProdCatalog";

	// empty Constructor
	public ProductCatalog() {
	}

	// initial Constructor
	public ProductCatalog(int mAID, int mProdID, String mFileName,
			String mFileType, float mFileSize, String mCatalogComment,
			int mIsProdPic, String mFileUrl) {
		this.mAID = mAID;
		this.mProdID = mProdID;
		this.mFileName = mFileName;
		this.mFileType = mFileType;
		this.mFileSize = mFileSize;
		this.mCatalogComment = mCatalogComment;
		this.mIsProdPic = mIsProdPic;
	}

	// initial ID_less Constructor
	public ProductCatalog(int mProdID, String mFileName, String mFileType,
			float mFileSize, String mCatalogComment,int mIsProdPic,
			String mFileUrl) {
		this.mProdID = mProdID;
		this.mFileName = mFileName;
		this.mFileType = mFileType;
		this.mFileSize = mFileSize;
		this.mCatalogComment = mCatalogComment;
		this.mIsProdPic = mIsProdPic;
		this.mFileUrl = mFileUrl;
	}

	// Load From DB
	public void load() {
		String[] columns = { "AID", "ProdID", "FileName", "FileType",
				"FileSize", "CatalogComment", "IsProdPic", "FileUrl"};
		String selection = "AID = ?";
		String[] selectionArgs = { String.valueOf(getAID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setAID(c.getInt(c.getColumnIndex("AID")));
				setProdID(c.getInt(c.getColumnIndex("ProdID")));
				setFileName(c.getString(c.getColumnIndex("FileName")));
				setFileType(c.getString(c.getColumnIndex("FileType")));
				setFileSize(c.getFloat(c.getColumnIndex("FileSize")));
				setCatalogComment(c.getString(c
						.getColumnIndex("CatalogComment")));
				setIsProdPic(c.getInt(c.getColumnIndex("IsProdPic")));
				setFileUrl(c.getString(c.getColumnIndex("FileUrl")));
			}
		} catch (Exception e) {
		} 
	}

	public void save() {
		
		ContentValues values = new ContentValues();
		values.put("AID", getAID());
		values.put("ProdID", getProdID());
		values.put("FileName", getFileName());
		values.put("FileType", getFileType());
		values.put("FileSize", getFileSize());
		values.put("CatalogComment", getCatalogComment());
		values.put("IsProdPic", getIsProdPic());
		values.put("FileUrl", getFileUrl());
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
			if (getFileName() != null && getFileName() != "")
				values.put("FileName", getFileName());
			if (getFileType() != null && getFileType() != "")
				values.put("FileType", getFileType());
			if (getCatalogComment() != null && getCatalogComment() != "")
				values.put("CatalogComment", getCatalogComment());
			if (getIsProdPic() != 0)
				values.put("IsProdPic", getIsProdPic());
			if(getFileUrl() != "" && getFileUrl() != null)
				values.put("FileUrl", getFileUrl());
		} else {
			values.put("ProdID", getProdID());
			values.put("FileName", getFileName());
			values.put("FileType", getFileType());
			values.put("FileSize", getFileSize());
			values.put("CatalogComment", getCatalogComment());
			values.put("IsProdPic", getIsProdPic());
			values.put("FileUrl", getFileUrl());
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

	public ArrayList<ProductCatalog> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<ProductCatalog> productCatalogList = new ArrayList<ProductCatalog>();	
		String selectQuery  = super.gueryBuilder(fields, limits, limitNum, mTableName,sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					ProductCatalog productCatalog = new ProductCatalog();
					// set data row to product group item
					productCatalog.setAID(c.getInt(c.getColumnIndex("AID")));
					productCatalog.setProdID(c.getInt(c.getColumnIndex("ProdID")));
					productCatalog.setFileName(c.getString(c.getColumnIndex("FileName")));
					productCatalog.setFileType(c.getString(c.getColumnIndex("FileType")));
					productCatalog.setFileSize(c.getFloat(c.getColumnIndex("FileSize")));
					productCatalog.setCatalogComment(c.getString(c.getColumnIndex("CatalogComment")));
					productCatalog.setIsProdPic(c.getInt(c.getColumnIndex("IsProdPic")));
					productCatalog.setFileUrl(c.getString(c.getColumnIndex("FileUrl")));
					// Adding contact to list
					productCatalogList.add(productCatalog);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		} 
		return productCatalogList;
	}
	public int Count(TblFields field, ArrayList<Limit> limits){
		return super.Count(field, mTableName, limits);
	}

	// getting AutoNumber field
	public int getAID() {
		return mAID;
	}

	// setting AutoNumber Field
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

	// getting File Name
	public String getFileName() {
		return mFileName;
	}

	// setting File Name
	public void setFileName(String mFileName) {
		this.mFileName = mFileName;
	}

	// getting FileType
	public String getFileType() {
		return mFileType;
	}

	// setting FileType
	public void setFileType(String mFileType) {
		this.mFileType = mFileType;
	}

	// getting FileSize
	public float getFileSize() {
		return mFileSize;
	}

	// setting FileSize
	public void setFileSize(float mFileSize) {
		this.mFileSize = mFileSize;
	}

	// getting CatalogComment
	public String getCatalogComment() {
		return mCatalogComment;
	}

	// setting CatalogComment
	public void setCatalogComment(String mCatalogComment) {
		this.mCatalogComment = mCatalogComment;
	}

	// getting IsProdPic
	public int getIsProdPic() {
		return mIsProdPic;
	}

	// setting IsProdPic
	public void setIsProdPic(int mIsProdPic) {
		this.mIsProdPic = mIsProdPic;
	}

	public String getFileUrl() {
		return mFileUrl;
	}

	public void setFileUrl(String mFileUrl) {
		this.mFileUrl = mFileUrl;
	}
}
