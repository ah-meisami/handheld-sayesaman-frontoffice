package dataBase;

import java.util.ArrayList;
import dataBase.DBUtil.LimitType;
import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;

public class Brand extends Model {

	// private variables
	private int mAID;
	private String mBrandName;
	private String mBrandDesc;
	private String mBrandLogo;
	private String mThumbnailLogo;
	
	// table name in DB
	String mTableName = "tbl_B_BrandDesc";

	// Empty constructor
	public Brand() {
	}

	// initial constructor
	public Brand(int mAID, String mBrandName, String mBrandDesc,
			String mBrandLogo, String mThumbnailLogo) {
		this.mAID = mAID;
		this.mBrandName = mBrandName;
		this.mBrandDesc = mBrandDesc;
		this.mBrandLogo = mBrandLogo;
		this.mThumbnailLogo = mThumbnailLogo;
	}

	// initial id_less constructor
	public Brand(String mBrandName, String mBrandDesc,
			String mBrandLogo, String mThumbnailLogo) {
		this.mBrandName = mBrandName;
		this.mBrandDesc = mBrandDesc;
		this.mBrandLogo = mBrandLogo;
		this.mThumbnailLogo = mThumbnailLogo;
	}

	// Load From DB
	public void load() {
		String[] columns = { "AID", "BrandName", "BrandDesc" };
		String selection = "AID = ?";
		String[] selectionArgs = { String.valueOf(getAID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setAID(c.getInt(c.getColumnIndex("AID")));
				setBrandName(c.getString(c.getColumnIndex("BrandName")));				
				setBrandDesc(c.getString(c.getColumnIndex("BrandDesc")));			
			}
		} catch (Exception e) {
		} 
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("AID", getAID());
		values.put("BrandName", getBrandName());
		values.put("BrandDesc", getBrandDesc());
		values.put("BrandLogo", getBrandLogo());
		values.put("ThumbnailLogo", getThumbnailLogo());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		}
	}

	public void update(Boolean checkNullFields) {
		ContentValues dataToUpdate = new ContentValues();
		if (checkNullFields) {
			if (getBrandName() != null && getBrandName() != "")
				dataToUpdate.put("BrandName", getBrandName());		
			if (getBrandDesc() != null && getBrandDesc() != "")
				dataToUpdate.put("BrandDesc", getBrandDesc());
			if (getBrandLogo() != null && getBrandLogo() != "")
				dataToUpdate.put("BrandLogo", getBrandLogo());
			if (getThumbnailLogo() != null && getThumbnailLogo() != "")
				dataToUpdate.put("ThumbnailLogo", getThumbnailLogo());		
		} else {
			dataToUpdate.put("BrandName", getBrandName());
			dataToUpdate.put("BrandDesc", getBrandDesc());
			dataToUpdate.put("BrandLogo", getBrandLogo());
			dataToUpdate.put("ThumbnailLogo", getThumbnailLogo());
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
		}
	}

	@Override
	public ArrayList<Brand> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<Brand> productList = new ArrayList<Brand>();
		String selectQuery = super.gueryBuilder(fields, limits, limitNum,
				mTableName, sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					// set data row to product item
					Brand brand = new Brand();
					brand.setAID(c.getInt(c.getColumnIndex("AID")));
					brand.setBrandName(c.getString(c.getColumnIndex("BrandName")));
					brand.setBrandDesc(c.getString(c.getColumnIndex("BrandDesc")));
					brand.setBrandLogo(c.getString(c.getColumnIndex("BrandLogo")));
					// Adding contact to list
					productList.add(brand);
				} while (c.moveToNext());
			}
		} catch (Exception e) {	
		}
		return productList;
	}
	public ArrayList<Brand> getBrandListByProductGroupID(int grpId) {
		ArrayList<Brand> brandList = new ArrayList<Brand>();
		ProductGroup prodGroup = new ProductGroup();
		prodGroup.setGrpID(grpId);
		prodGroup.load();
		ArrayList<TblFields> prodGrpFields = new ArrayList<DBUtil.TblFields>();
		prodGrpFields.add(TblFields.GrpID);
		ArrayList<Limit> prodGrpLimits = new ArrayList<Limit>();
			prodGrpLimits.add(new Limit(TblFields.GrpPath, String
					.valueOf(prodGroup.getGrpPath()) + "-", LimitType.HeadLike,
					null));
		ArrayList<ProductGroup> productGroupTreeList = prodGroup.getAll(
				prodGrpFields, prodGrpLimits, null, null);
		for (ProductGroup pg : productGroupTreeList) {
			ArrayList<TblFields> fields = new ArrayList<DBUtil.TblFields>();
			fields.add(TblFields.BrandID);
			fields.add(TblFields.ProdID);
			ArrayList<Limit> limits = new ArrayList<Limit>();
			limits.add(new Limit(TblFields.ProdGrpID, String.valueOf(pg.getGrpID()),
					LimitType.ItIs, null));
			ArrayList<Product> productList = new Product().getAll(fields,
					limits, null, null);
			for (Product p : productList) {
				Brand brand = new Brand();
				brand.setAID(p.getBrandID());
				if (!brandList.contains(brand)) {
					brand.load();
					brandList.add(brand);
				}
			}
		}
		return brandList;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj != null){
			Brand brand = (Brand) obj;
			if(this.getAID() != brand.getAID())
				return false;
		}else{
			return false;
		}
		return true;
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

	public String getBrandName() {
		return mBrandName;
	}

	public void setBrandName(String mBrandName) {
		this.mBrandName = mBrandName;
	}

	public String getBrandDesc() {
		return mBrandDesc;
	}

	public void setBrandDesc(String mBrandDesc) {
		this.mBrandDesc = mBrandDesc;
	}

	public String getBrandLogo() {
		return mBrandLogo;
	}

	public void setBrandLogo(String mBrandLogo) {
		this.mBrandLogo = mBrandLogo;
	}

	public String getThumbnailLogo() {
		return mThumbnailLogo;
	}

	public void setThumbnailLogo(String mThumbnailLogo) {
		this.mThumbnailLogo = mThumbnailLogo;
	}
}
