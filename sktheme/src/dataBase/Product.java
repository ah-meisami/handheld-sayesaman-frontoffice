package dataBase;

import java.util.ArrayList;
import dataBase.DBUtil.LimitType;
import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;

public class Product extends Model {

	// private variables
	private int mProdID;
	private String mProdName;
	private int mProdGrpID;
	private String mIranCode;
	private int mProdState;
	private String mProdBarcode;
	private String mCreateDate;
	private String mProdShortName;
	private String mProdComment;
	private int mUserID;
	private int mBrandID;
	private int mTolidiID;
	private int mCountryID;
	private String mProdInfoComment;
	private int mSupplierID;
	private String mThumbImage;
	private String mMediumImage;
	private String mActualImage;
	
	// table name in DB
	String mTableName = "tblProductDesc";

	// Empty constructor
	public Product() {
	}

	// initial constructor
	public Product(int mProdID, String mProdName, int mProdGrpID,
			String mIranCode, int mProdState, String mProdBarcode,
			String mCreateDate, String mProdShortName, String mProdComment,
			int mUserID, int mBrandID, int mTolidiID, int mCountryID,
			String mProdInfoComment, int mSupplierID, String mThumbImage,
			String mMediumImage, String mActualImage) {
		this.mProdID = mProdID;
		this.mProdName = mProdName;
		this.mProdGrpID = mProdGrpID;
		this.mIranCode = mIranCode;
		this.mProdState = mProdState;
		this.mProdBarcode = mProdBarcode;
		this.mCreateDate = mCreateDate;
		this.mProdShortName = mProdShortName;
		this.mProdComment = mProdComment;
		this.mUserID = mUserID;
		this.mBrandID = mBrandID;
		this.mTolidiID = mTolidiID;
		this.mCountryID = mCountryID;
		this.mProdInfoComment = mProdInfoComment;
		this.mSupplierID = mSupplierID;
		this.mThumbImage = mThumbImage;
		this.mMediumImage = mMediumImage;
		this.mActualImage = mActualImage;
	}

	// initial id_less constructor
	public Product(String mProdName, int mProdGrpID, String mIranCode,
			int mProdState, String mProdBarcode, String mCreateDate,
			String mProdShortName, String mProdComment, int mUserID,
			int mBrandID, int mTolidiID, int mCountryID,
			String mProdInfoComment, int mSupplierID, String mThumbImage,
			String mMediumImage, String mActualImage) {
		this.mProdName = mProdName;
		this.mProdGrpID = mProdGrpID;
		this.mIranCode = mIranCode;
		this.mProdState = mProdState;
		this.mProdBarcode = mProdBarcode;
		this.mCreateDate = mCreateDate;
		this.mProdShortName = mProdShortName;
		this.mProdComment = mProdComment;
		this.mUserID = mUserID;
		this.mBrandID = mBrandID;
		this.mTolidiID = mTolidiID;
		this.mCountryID = mCountryID;
		this.mProdInfoComment = mProdInfoComment;
		this.mSupplierID = mSupplierID;
		this.mThumbImage = mThumbImage;
		this.mMediumImage = mMediumImage;
		this.mActualImage = mActualImage;
	}

	// Load From DB
	public void load() {
		String[] columns = { "ProdID", "ProdName", "ProdGrpID", "IranCode",
				"ProdState", "ProdBarcode", "CreateDate", "ProdShortName",
				"ProdComment", "UserID", "BrandID", "TolidiID", "CountryID",
				"ProdInfoComment", "SupplierID", "ThumbImage", "MediumImage",
				"ActualImage" };
		String selection = "ProdID = ?";
		String[] selectionArgs = { String.valueOf(getProdID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setProdID(c.getInt(c.getColumnIndex("ProdID")));
				setProdName(c.getString(c.getColumnIndex("ProdName")));
				setProdGrpID(c.getInt(c.getColumnIndex("ProdGrpID")));
				setIranCode(c.getString(c.getColumnIndex("IranCode")));
				setProdState(c.getInt(c.getColumnIndex("ProdState")));
				setProdBarcode(c.getString(c.getColumnIndex("ProdBarcode")));
				setCreateDate(c.getString(c.getColumnIndex("CreateDate")));
				setProdShortName(c.getString(c.getColumnIndex("ProdShortName")));
				setProdComment(c.getString(c.getColumnIndex("ProdComment")));
				setUserID(c.getInt(c.getColumnIndex("UserID")));
				setBrandID(c.getInt(c.getColumnIndex("BrandID")));
				setTolidiID(c.getInt(c.getColumnIndex("TolidiID")));
				setCountryID(c.getInt(c.getColumnIndex("CountryID")));
				setProdInfoComment(c.getString(c
						.getColumnIndex("ProdInfoComment")));
				setSupplierID(c.getInt(c.getColumnIndex("SupplierID")));
				setThumbImage(c.getString(c.getColumnIndex("ThumbImage")));
				setMediumImage(c.getString(c.getColumnIndex("MediumImage")));
				setActualImage(c.getString(c.getColumnIndex("ActualImage")));
			}
		} catch (Exception e) {
		}
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("ProdID", getProdID());
		values.put("ProdName", getProdName());
		values.put("ProdGrpID", getProdGrpID());
		values.put("IranCode", getIranCode());
		values.put("ProdState", getProdState());
		values.put("ProdBarcode", getProdBarcode());
		values.put("CreateDate", getCreateDate());
		values.put("ProdShortName", getProdShortName());
		values.put("ProdComment", getProdComment());
		values.put("UserID", getUserID());
		values.put("BrandID", getBrandID());
		values.put("TolidiID", getTolidiID());
		values.put("CountryID", getCountryID());
		values.put("ProdInfoComment", getProdInfoComment());
		values.put("SupplierID", getSupplierID());
		values.put("ThumbImage", getThumbImage());
		values.put("MediumImage", getMediumImage());
		values.put("ActualImage", getActualImage());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		}
	}

	public void update(Boolean checkNullFields) {
		ContentValues dataToUpdate = new ContentValues();
		if (checkNullFields) {
			if (getProdName() != null && getProdName() != "")
				dataToUpdate.put("ProdName", getProdName());
			if (getProdGrpID() != 0)
				dataToUpdate.put("ProdGrpID", getProdGrpID());
			if (getIranCode() != null && getIranCode() != "")
				dataToUpdate.put("IranCode", getIranCode());
			if (getProdState() != 0)
				dataToUpdate.put("ProdShortName", getProdShortName());
			if (getCreateDate() != null && getCreateDate() != "")
				dataToUpdate.put("CreateDate", getCreateDate());
			if (getProdShortName() != null && getProdShortName() != "")
				dataToUpdate.put("ProdShortName", getProdShortName());
			if (getProdComment() != null && getProdShortName() != "")
				dataToUpdate.put("ProdComment", getProdShortName());
			if (getUserID() != 0)
				dataToUpdate.put("UserID", getUserID());
			if (getBrandID() != 0)
				dataToUpdate.put("BrandID", getBrandID());
			if (getTolidiID() != 0)
				dataToUpdate.put("TolidiID", getTolidiID());
			if (getCountryID() != 0)
				dataToUpdate.put("CountryID", getCountryID());
			if (getProdInfoComment() != null && getProdInfoComment() != "")
				dataToUpdate.put("ProdInfoComment", getProdInfoComment());
			if (getSupplierID() != 0)
				dataToUpdate.put("SupplierID", getSupplierID());
			if (getThumbImage() != "" && getThumbImage() != null)
				dataToUpdate.put("ThumbImage", getThumbImage());
			if (getMediumImage() != "" && getMediumImage() != null)
				dataToUpdate.put("MediumImage", getMediumImage());
			if (getActualImage() != "" && getActualImage() != null)
				dataToUpdate.put("ActualImage", getActualImage());
		} else {
			dataToUpdate.put("ProdName", getProdName());
			dataToUpdate.put("ProdGrpID", getProdGrpID());
			dataToUpdate.put("IranCode", getIranCode());
			dataToUpdate.put("ProdShortName", getProdShortName());
			dataToUpdate.put("CreateDate", getCreateDate());
			dataToUpdate.put("ProdShortName", getProdShortName());
			dataToUpdate.put("ProdComment", getProdShortName());
			dataToUpdate.put("UserID", getUserID());
			dataToUpdate.put("BrandID", getBrandID());
			dataToUpdate.put("TolidiID", getTolidiID());
			dataToUpdate.put("CountryID", getCountryID());
			dataToUpdate.put("ProdInfoComment", getProdInfoComment());
			dataToUpdate.put("SupplierID", getSupplierID());
			dataToUpdate.put("ThumbImage", getThumbImage());
			dataToUpdate.put("MediumImage", getMediumImage());
			dataToUpdate.put("ActualImage", getActualImage());
		}

		String whereClause = "ProdID = ?";
		String[] whereArgs = { String.valueOf(getProdID()) };
		try {
			DataSourceTools.updateObject(mTableName, dataToUpdate, whereClause,
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
		}
	}

	@Override
	public ArrayList<Product> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<Product> productList = new ArrayList<Product>();
		String selectQuery = super.gueryBuilder(fields, limits, limitNum,
				mTableName, sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					// set data row to product item
					Product product = new Product();
					try{
					product.setProdID(c.getInt(c.getColumnIndex("ProdID")));
					product.setSupplierID(c.getInt(c
							.getColumnIndex("SupplierID")));
					product.setProdName(c.getString(c
							.getColumnIndex("ProdName")));
					product.setProdGrpID(c.getInt(c.getColumnIndex("ProdGrpID")));
					product.setIranCode(c.getString(c
							.getColumnIndex("IranCode")));
					// product.setProdImage(c.getBlob(c
					// .getColumnIndex("ProdImage")));
					product.setProdState(c.getInt(c.getColumnIndex("ProdState")));
					product.setProdBarcode(c.getString(c
							.getColumnIndex("ProdBarcode")));
					product.setCreateDate(c.getString(c
							.getColumnIndex("CreateDate")));
					product.setProdShortName(c.getString(c
							.getColumnIndex("ProdShortName")));
					product.setProdComment(c.getString(c
							.getColumnIndex("ProdComment")));
					product.setUserID(c.getInt(c.getColumnIndex("UserID")));
					
					product.setTolidiID(c.getInt(c.getColumnIndex("TolidiID")));
					product.setCountryID(c.getInt(c.getColumnIndex("CountryID")));
					product.setProdInfoComment(c.getString(c
							.getColumnIndex("ProdInfoComment")));
					
					product.setThumbImage(c.getString(c
							.getColumnIndex("ThumbImage")));
					product.setMediumImage(c.getString(c
							.getColumnIndex("MediumImage")));
					product.setActualImage(c.getString(c
							.getColumnIndex("ActualImage")));
					}catch(Exception ex){}
					try{
						product.setBrandID(c.getInt(c.getColumnIndex("BrandID")));
					}catch(Exception ex){}
					// Adding contact to list
					productList.add(product);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		}
		return productList;
	}

	public int Count(TblFields field, ArrayList<Limit> limits) {
		return super.Count(field, mTableName, limits);
	}

	public ArrayList<Integer> getProductIDs(int mProductGroupID) {
		ArrayList<Integer> mProdIDs = new ArrayList<Integer>();
		ArrayList<Product> productList = null;
		ArrayList<Limit> limits = new ArrayList<Limit>();
		limits.add(new Limit(TblFields.ProdGrpID, String
				.valueOf(mProductGroupID), LimitType.ItIs, null));
		ArrayList<TblFields> fields = new ArrayList<TblFields>();
		fields.add(TblFields.ProdID);
		productList = getAll(fields, limits, null, null);
		for (Product p : productList) {
			mProdIDs.add(Integer.valueOf(p.getProdID()));
		}
		return mProdIDs;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj != null){
			Product prodParam = (Product) obj;
			if(this.getProdID() != prodParam.getProdID())
				return false;
		}else{
			return false;
		}
		return true;
	}
	
	// getting ProdID
	public int getProdID() {
		return this.mProdID;
	}

	// setting ProdID
	public void setProdID(int mProdID) {
		this.mProdID = mProdID;
	}

	// getting ProdName
	public String getProdName() {
		return this.mProdName;
	}

	// setting ProdName
	public void setProdName(String mProdName) {
		this.mProdName = mProdName;
	}

	// getting ProdGrpID
	public int getProdGrpID() {
		return this.mProdGrpID;
	}

	// setting ProdGrpID
	public void setProdGrpID(int mProdGrpID) {
		this.mProdGrpID = mProdGrpID;
	}

	// getting IranCode
	public String getIranCode() {
		return this.mIranCode;
	}

	// setting IranCode
	public void setIranCode(String mIranCode) {
		this.mIranCode = mIranCode;
	}

	// getting ProdState
	public int getProdState() {
		return this.mProdState;
	}

	// setting ProdState
	public void setProdState(int mProdState) {
		this.mProdState = mProdState;
	}

	// getting ProdBarcode
	public String getProdBarcode() {
		return this.mProdBarcode;
	}

	// setting ProdBarcode
	public void setProdBarcode(String mProdBarcode) {
		this.mProdBarcode = mProdBarcode;
	}

	// getting CreateDate
	public String getCreateDate() {
		return this.mCreateDate;
	}

	// setting CreateDate
	public void setCreateDate(String mCreateDate) {
		this.mCreateDate = mCreateDate;
	}

	// getting ProdShortName
	public String getProdShortName() {
		return this.mProdShortName;
	}

	// setting ProdShortName
	public void setProdShortName(String mProdShortName) {
		this.mProdShortName = mProdShortName;
	}

	// getting ProdComment
	public String getProdComment() {
		return this.mProdComment;
	}

	// setting ProdComment
	public void setProdComment(String mProdComment) {
		this.mProdComment = mProdComment;
	}

	// getting UserID
	public int getUserID() {
		return this.mUserID;
	}

	// setting UserID
	public void setUserID(int mUserID) {
		this.mUserID = mUserID;
	}

	// getting BrandID
	public int getBrandID() {
		return this.mBrandID;
	}

	// setting BrandID
	public void setBrandID(int mBrandID) {
		this.mBrandID = mBrandID;
	}

	// getting TolidiID
	public int getTolidiID() {
		return this.mTolidiID;
	}

	// setting TolidiID
	public void setTolidiID(int mTolidiID) {
		this.mTolidiID = mTolidiID;
	}

	// getting CountryID
	public int getCountryID() {
		return this.mCountryID;
	}

	// setting CountryID
	public void setCountryID(int mCountryID) {
		this.mCountryID = mCountryID;
	}

	// getting SupplierID
	public int getSupplierID() {
		return this.mSupplierID;
	}

	// setting SupplierID
	public void setSupplierID(int mSupplierID) {
		this.mSupplierID = mSupplierID;
	}

	// getting ProdInfoComment
	public String getProdInfoComment() {
		return this.mProdInfoComment;
	}

	// setting ProdInfoComment
	public void setProdInfoComment(String mProdInfoComment) {
		this.mProdInfoComment = mProdInfoComment;
	}

	public String getThumbImage() {
		return mThumbImage;
	}

	public void setThumbImage(String mThumbImage) {
		this.mThumbImage = mThumbImage;
	}

	public String getMediumImage() {
		return mMediumImage;
	}

	public void setMediumImage(String mMediumImage) {
		this.mMediumImage = mMediumImage;
	}

	public String getActualImage() {
		return mActualImage;
	}

	public void setActualImage(String mActualImage) {
		this.mActualImage = mActualImage;
	}
}
