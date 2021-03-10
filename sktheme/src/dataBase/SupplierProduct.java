package dataBase;

import java.util.ArrayList;
import android.content.ContentValues;
import android.database.Cursor;
import dataBase.DBUtil.LimitType;
import dataBase.DBUtil.SortType;
import dataBase.DBUtil.TblFields;

public class SupplierProduct extends Model {
	// private Variables
	private int mCustID;
	private int mProdID;

	// table name in DB
	private String mTableName = "tblSupplierProd";

	// empty Constructor
	public SupplierProduct() {
	}

	// initial Constructor
	public SupplierProduct(int mCustID, int mProdID) {
		this.setCustID(mCustID);
		this.setProdID(mProdID);
	}

	// Load From DB
	public void load() {
		String[] columns = { "CustID", "ProdID" };
		String selection = "CustID = ? and ProdID = ?";
		String[] selectionArgs = { String.valueOf(getCustID()),
				String.valueOf(getProdID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setCustID(c.getInt(c.getColumnIndex("CustID")));
				setProdID(c.getInt(c.getColumnIndex("ProdID")));
			}
		} catch (Exception e) {
		} 
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("CustID", getCustID());
		values.put("ProdID", getProdID());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		}
	}

	public void update(Boolean checkNullFields) {
		ContentValues values = new ContentValues();
		if (checkNullFields) {
			if (getCustID() != 0)
				values.put("CustID", getCustID());
			if (getProdID() != 0)
				values.put("ProdID", getProdID());
		} else {
			values.put("CustID", getCustID());
			values.put("ProdID", getProdID());
		}

		String whereClause = "CustID = ? and ProdID = ?";
		String[] whereArgs = { String.valueOf(getCustID()),
				String.valueOf(getProdID()) };
		try {
			DataSourceTools.updateObject(mTableName, values, whereClause,
					whereArgs);
		} catch (Exception e) {
		} 
	}

	public void delete() {
		String whereClause = "CustID = ? and ProdID = ?";
		String[] whereArgs = { String.valueOf(getCustID()),
				String.valueOf(getProdID()) };
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {
		}
	}

	public ArrayList<SupplierProduct> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<SupplierProduct> supplierProductList = new ArrayList<SupplierProduct>();
		String selectQuery = super.gueryBuilder(fields, limits, limitNum,
				mTableName, sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					SupplierProduct supplierProduct = new SupplierProduct();
					// set data row to product group item
					try{
					supplierProduct.setCustID(c.getInt(c
							.getColumnIndex("CustID")));
					supplierProduct.setProdID(c.getInt(c
							.getColumnIndex("ProdID")));
					}catch(Exception ex){};
					// Adding contact to list
					supplierProductList.add(supplierProduct);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		} 
		return supplierProductList;
	}

	public ArrayList<Customer> getSuppliersByProduct(int mProductID) {

		ArrayList<Customer> customerList = new ArrayList<Customer>();
		// ArrayList<TblFields> fields = new ArrayList<TblFields>();
		ArrayList<Limit> limits = new ArrayList<Limit>();
		limits.add(new Limit(TblFields.ProdID, String.valueOf(mProductID),
				LimitType.ItIs, null));
		ArrayList<Sort> sorts = new ArrayList<Sort>();
		sorts.add(new Sort(TblFields.ProdID, SortType.Asc));
		ArrayList<SupplierProduct> supplierProductList = getAll(null, limits,
				null, sorts);

		Customer customer;
		for (SupplierProduct sp : supplierProductList) {
			customer = new Customer();
			customer.setCustID(sp.mCustID);
			customer.load();
			customerList.add(customer);
		}

		return customerList;
	}
	public int getSuppliersCount(int mProductID) {
		ArrayList<Limit> limits = new ArrayList<Limit>();
		limits.add(new Limit(TblFields.ProdID, String.valueOf(mProductID),
				LimitType.ItIs, null));
		int count = Count(TblFields.CustID, limits);
		return count;
	}

	public ArrayList<Product> getProducts(int mSupplierID) {
		ArrayList<Product> productList = new ArrayList<Product>();
		ArrayList<Limit> limits = new ArrayList<Limit>();
		limits.add(new Limit(TblFields.CustID, String.valueOf(mSupplierID),
				LimitType.ItIs, null));
		ArrayList<Sort> sorts = new ArrayList<Sort>();
		sorts.add(new Sort(TblFields.ProdID, SortType.Asc));
		ArrayList<SupplierProduct> supplierProductList = getAll(null, limits,
				null, sorts);

		Product product;
		for (SupplierProduct sp : supplierProductList) {
			product = new Product();
			product.setProdID(sp.mProdID);
			product.load();
			productList.add(product);
		}
		return productList;
	}

	public ArrayList<ProductGroup> getProductGroup(int supplierID) {
		ArrayList<TblFields> fields = new ArrayList<TblFields>();
		fields.add(TblFields.SupplierID);
		fields.add(TblFields.ProdID);
		ArrayList<Limit> limits = new ArrayList<Limit>();
		limits.add(new Limit(TblFields.SupplierID, String.valueOf(supplierID),
				LimitType.ItIs, null));
		ArrayList<Sort> sorts = new ArrayList<Sort>();
		sorts.add(new Sort(TblFields.ProdID, SortType.Asc));
		Product p1=new Product();
		ArrayList<Product> ProductList = p1.getAll(fields, limits,
				null, sorts);
		ArrayList<ProductGroup> productGroupList = new ArrayList<ProductGroup>();
		ProductGroup prodGrp;
		for (Product product : ProductList) {
			product.load();
			prodGrp = new ProductGroup();
			prodGrp.setGrpID(product.getProdGrpID());
			if (!productGroupList.contains(prodGrp)) {
				prodGrp.load();
				productGroupList.add(prodGrp);
			}
		}
		return productGroupList;
	}
	public ArrayList<Customer> getSuppliersByProductGroup(int mProductGroupID) {

		ArrayList<Customer> supplierList = new ArrayList<Customer>();
		ProductGroup prodGroup = new ProductGroup();
		prodGroup.setGrpID(mProductGroupID);
		prodGroup.load();
		ArrayList<TblFields> prodGrpFields = new ArrayList<DBUtil.TblFields>();
		prodGrpFields.add(TblFields.GrpID);
		ArrayList<Limit> prodGrpLimits = new ArrayList<Limit>();
			prodGrpLimits.add(new Limit(TblFields.GrpPath, String
					.valueOf(prodGroup.getGrpPath()) + "-", LimitType.HeadLike,
					null));
		ArrayList<ProductGroup> productGroupTreeList = prodGroup.getAll(
				prodGrpFields, prodGrpLimits, null, null);
		productGroupTreeList.add(prodGroup);
		for (ProductGroup pg : productGroupTreeList) {
			ArrayList<TblFields> fields = new ArrayList<DBUtil.TblFields>();
			fields.add(TblFields.SupplierID);
			fields.add(TblFields.ProdID);
			ArrayList<Limit> limits = new ArrayList<Limit>();
			limits.add(new Limit(TblFields.ProdGrpID, String.valueOf(pg.getGrpID()),
					LimitType.ItIs, null));
			ArrayList<Product> productList = new Product().getAll(fields,
					limits, null, null);
			for (Product p : productList) {
				Customer supplier = new Customer();
				if(p.getSupplierID()==0)
					continue;
				supplier.setCustID(p.getSupplierID());
				if (!supplierList.contains(supplier)) {
					supplier.load();
					supplierList.add(supplier);
				}
			}
		}
		return supplierList;
	}
	public int Count(TblFields field, ArrayList<Limit> limits) {
		return super.Count(field, mTableName, limits);
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
}
