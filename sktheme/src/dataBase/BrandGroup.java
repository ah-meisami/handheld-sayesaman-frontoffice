package dataBase;

import java.util.ArrayList;
import dataBase.DBUtil.LimitType;
import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;

public class BrandGroup extends Model {

	// private variables
	private int mBrandID;
	private int mGrpID;
	
	// table name in DB
	String mTableName = "tbl_B_BrandGrp";

	// Empty constructor
	public BrandGroup() {
	}

	// initial constructor
	public BrandGroup(int mBrandID, int mGrpID) {
		this.mBrandID = mBrandID;
		this.setGrpID(mGrpID);
	}

	// Load From DB
	public void load() {
		String[] columns = { "BrandID" , "GrpID" };
		String selection = "BrandID = ? and GrpID = ?";
		String[] selectionArgs = { String.valueOf(getBrandID()), String.valueOf(getGrpID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setBrandID(c.getInt(c.getColumnIndex("BrandID")));
				setGrpID(c.getInt(c.getColumnIndex("GrpID")));				
			}
		} catch (Exception e) {
		}
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("BrandID", getBrandID());
		values.put("GrpID", getGrpID());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		}
	}

	public void update(Boolean checkNullFields) {
		ContentValues dataToUpdate = new ContentValues();
		if (checkNullFields) {
			if (getBrandID() != 0)
				dataToUpdate.put("BrandID", getBrandID());
			if (getGrpID() != 0)
				dataToUpdate.put("GrpID", getGrpID());
		} else {
			dataToUpdate.put("BrandID", getBrandID());
			dataToUpdate.put("GrpID", getGrpID());
		}

		String whereClause = "BrandID = ? and GrpID = ?";
		String[] whereArgs = { String.valueOf(getBrandID()) };
		try {
			DataSourceTools.updateObject(mTableName, dataToUpdate, whereClause,
					whereArgs);
		} catch (Exception e) {			
		}
	}

	public void delete() {
		String whereClause = "BrandID = ? and GrpID = ?";
		String[] whereArgs = { String.valueOf(getBrandID()),
				String.valueOf(getGrpID())};
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {			
		}
	}

	@Override
	public ArrayList<BrandGroup> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<BrandGroup> brandGroupList = new ArrayList<BrandGroup>();
		String selectQuery = super.gueryBuilder(fields, limits, limitNum,
				mTableName, sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					// set data row for item
					BrandGroup brandGroup = new BrandGroup();
					brandGroup.setBrandID(c.getInt(c.getColumnIndex("BrandID")));
					brandGroup.setGrpID(c.getInt(c.getColumnIndex("GrpID")));					
					// Adding to list
					brandGroupList.add(brandGroup);
				} while (c.moveToNext());
			}
		} catch (Exception e) {			
		}
		return brandGroupList;
	}
	
	public ArrayList<Brand> getBrandListByGroupID(int mGroupID){
		ArrayList<Brand> brandList = new ArrayList<Brand>();
		ArrayList<Limit> limits = new ArrayList<Limit>();
		limits.add(new Limit(TblFields.GrpID, String.valueOf(mGroupID), LimitType.ItIs, null));
		ArrayList<BrandGroup> brandGroupList = getAll(null, limits, null, null);						
		Brand brand = null;
		for(BrandGroup brandGroup : brandGroupList){
			brand = new Brand();
			brand.setAID(brandGroup.getBrandID());
			brand.load();
			brandList.add(brand);
		}
		return brandList;
	}
	
	public ArrayList<ProductGroup> getProductGroupListByBrandID(int mBrandID){
		ArrayList<ProductGroup> productGroupList = new ArrayList<ProductGroup>();
		ArrayList<Limit> limits = new ArrayList<Limit>();
		limits.add(new Limit(TblFields.BrandID, String.valueOf(mBrandID), LimitType.ItIs, null));
		ArrayList<BrandGroup> brandGroupList = getAll(null, limits, null, null);
		ProductGroup productGroup;
		for(BrandGroup brandGroup: brandGroupList){
			productGroup = new ProductGroup();
			productGroup.setGrpID(brandGroup.getGrpID());
			productGroup.load();
			productGroupList.add(productGroup);
		}
		return productGroupList;
	}
	
	public ArrayList<Product> getProductListByBrandID(int mBrandID){
		ArrayList<Product> productList = new ArrayList<Product>();
		ArrayList<ProductGroup> productGroupList = getProductGroupListByBrandID(mBrandID);
		Product product;
		for(ProductGroup productGroup : productGroupList){
			product = new Product();
			ArrayList<Integer> prodIDList = product.getProductIDs(productGroup.getGrpID());
			for(Integer prodId : prodIDList){
				product.setProdID(prodId);
				product.load();
				productList.add(product);
			}
		}		
		return productList;
	}

	public int Count(TblFields field, ArrayList<Limit> limits) {
		return super.Count(field, mTableName, limits);
	}

	// getting BrandID
	public int getBrandID() {
		return this.mBrandID;
	}

	// setting BrandID
	public void setBrandID(int mBrandID) {
		this.mBrandID = mBrandID;
	}

    // getting Group ID
	public int getGrpID() {
		return mGrpID;
	}

	// setting Group ID
	public void setGrpID(int mGrpID) {
		this.mGrpID = mGrpID;
	}
}
