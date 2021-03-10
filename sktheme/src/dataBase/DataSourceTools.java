package dataBase;

import java.util.ArrayList;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.widget.Toast;

public final class DataSourceTools {

	public static Context context = AppConfig.CurrentContext;
	public static DatabaseHandler mDBHandler;
	public static SQLiteDatabase mDB;

	public static Cursor findObject(String table, String[] columns,
			String selection, String[] selectionArgs) {
		Cursor c = null;
		try {
			mDB = openRead();
			c = mDB.query(table, columns, selection, selectionArgs, null, null,
					null);
			return c;
		} catch (Exception e) {
			Toast.makeText(DatabaseHandler.mContext,
					"Find Object Returnd Null !", Toast.LENGTH_LONG);
		}
		return c;
	}

	public static void saveObject(String table, String nullColumnHackName,
			ContentValues data) {
		try {
			mDB = openWrite();
			if (mDB != null) {
				mDB.insert(table, nullColumnHackName, data);
			}
		} catch (Exception e) {
		}
	}

	public static void updateObject(String table, ContentValues dataToUpdate,
			String whereClause, String[] whereArgs) {
		try {
			mDB = openWrite();
			if (mDB != null) {
				mDB.update(table, dataToUpdate, whereClause, whereArgs);
			}
		} catch (Exception e) {
		}
	}

	public static void deleteObject(String table, String whereClause,
			String[] whereArgs) {
		try {
			mDB = openWrite();
			if (mDB != null) {
				mDB.delete(table, whereClause, whereArgs);
			}
		} catch (Exception e) {
		}
	}

	public static Cursor findAllObject(String selectQuery) {
		Cursor c = null;
		try {
			mDB = openRead();
			c = mDB.rawQuery(selectQuery, null);
			return c;
		} catch (Exception ex) {
			Toast.makeText(DatabaseHandler.mContext,
					"Find All Object Returnd Null!", Toast.LENGTH_LONG);
		}
		return c;
	}
	
	public static ArrayList<Customer> getSuppliersByProductGroup(int productGroupID){
		ArrayList<Customer> supplierList = new ArrayList<Customer>();
		Cursor c = null;
		try{		
			mDB = openRead();
			String StrCMD = "SELECT Distinct tblCustomerDesc.* FROM tblCustomerDesc INNER JOIN tblSupplierProd ON tblCustomerDesc.CustID = tblSupplierProd.CustID "+
				                             "WHERE(tblSupplierProd.ProdID IN (SELECT DISTINCT tblProductDesc.ProdID FROM tblProdGrpDesc INNER JOIN tblProductDesc ON tblProdGrpDesc.GrpID = tblProductDesc.ProdGrpID "+
		                                                                      "WHERE(tblProdGrpDesc.GrpID = "+String.valueOf(productGroupID)+") OR (tblProdGrpDesc.GrpPath LIKE '"+String.valueOf(productGroupID)+"-%')))";
			c = mDB.rawQuery(StrCMD,null);
			if (c.moveToFirst()) {
				do {
					Customer customer = new Customer();
					// set data row to customer item
					try {
						customer.setCustID(c.getInt(c.getColumnIndex("CustID")));
						customer.setCustType(c.getInt(c
								.getColumnIndex("CustType")));
						customer.setFirstName(c.getString(c
								.getColumnIndex("FirstName")));
						customer.setLastName(c.getString(c
								.getColumnIndex("LastName")));
						customer.setFatherName(c.getString(c
								.getColumnIndex("FatherName")));
						customer.setPlaceSodor(c.getString(c
								.getColumnIndex("PlaceSodor")));
						customer.setDateSodor(c.getString(c
								.getColumnIndex("DateSodor")));
						customer.setShomareSabt(c.getString(c
								.getColumnIndex("ShomareSabt")));
						customer.setCodeMeli(c.getString(c
								.getColumnIndex("CodeMeli")));
						customer.setCodePosti(c.getString(c
								.getColumnIndex("CodePosti")));
						customer.setUserID(c.getInt(c
								.getColumnIndex("AddressPath")));
						customer.setAddress(c.getString(c
								.getColumnIndex("Address")));
						customer.setTel(c.getString(c.getColumnIndex("Tel")));
						customer.setMobile(c.getString(c
								.getColumnIndex("Mobile")));
						customer.setWeb(c.getString(c.getColumnIndex("Web")));
						customer.setEmail(c.getString(c.getColumnIndex("Email")));
						customer.setCompanyName(c.getString(c
								.getColumnIndex("CompanyName")));
						customer.setCompanyType(c.getInt(c
								.getColumnIndex("CompanyType")));
						customer.setIsSupplier(c.getShort(c
								.getColumnIndex("IsSupplier")));
						customer.setDSID(c.getInt(c.getColumnIndex("DSID")));
						customer.setCreateDate(c.getString(c
								.getColumnIndex("CreateDate")));
						customer.setCustState(c.getInt(c
								.getColumnIndex("CustState")));
						customer.setUserID(c.getInt(c.getColumnIndex("UserID")));
						customer.setMalekiatType(c.getInt(c
								.getColumnIndex("MalekiatType")));
						customer.setSamanehCode(c.getString(c
								.getColumnIndex("SamanehCode")));
						customer.setSex(c.getInt(c.getColumnIndex("Sex")));
						customer.setTahsilatID(c.getInt(c
								.getColumnIndex("TahsilatID")));
						customer.setReshteTahsili(c.getString(c
								.getColumnIndex("ReshteTahsili")));
						customer.setEsteghrarPlace(c.getInt(c
								.getColumnIndex("EsteghrarPlace")));
						customer.setAboutCustomer(c.getString(c
								.getColumnIndex("AboutCustomer")));
						customer.setCountPerson(c.getString(c
								.getColumnIndex("CountPerson")));
						customer.setWorkTime(c.getString(c
								.getColumnIndex("WorkTime")));
						customer.setIranPerent(c.getString(c
								.getColumnIndex("IranPerent")));
						customer.setCustTypeID(c.getString(c
								.getColumnIndex("CustTypeID")));
					} catch (Exception ex) {
					}
					// Adding contact to list
					supplierList.add(customer);
				} while (c.moveToNext());
			}
		}catch(Exception ex){			
		}		
		
		return supplierList;
	}
	
	public final static ArrayList<ProductGroup> getProductGroupBySupplier(int supplierID){
		ArrayList<ProductGroup> productGroupList = new ArrayList<ProductGroup>();
		Cursor c = null;
		try{		
			mDB = openRead();
			String StrCMD = "";
			c = mDB.rawQuery(StrCMD,null);
		}catch(Exception ex){			
	    }
		return productGroupList;
	}

	private final static synchronized SQLiteDatabase openWrite() {
		if (mDBHandler != null) {
			return mDBHandler.getWritableDatabase();
		} else {
			mDBHandler = new DatabaseHandler(context);
			return mDBHandler.getWritableDatabase();
		}
	}

	private final static synchronized SQLiteDatabase openRead() {
		if (mDBHandler != null) {
			return mDBHandler.getReadableDatabase();
		} else {
			mDBHandler = new DatabaseHandler(context);
			return mDBHandler.getReadableDatabase();
		}
	}

	public final static synchronized void close(SQLiteDatabase db) {
		if (db != null && db.isOpen()) {
			try {
				db.close();
			} catch (Exception ex) {
			}			
		}
	}

	public final static synchronized void close(Cursor c) {
		if (c != null) {
			try {
				c.close();
			} catch (Exception ex) {
			}			
		}
	}
}
