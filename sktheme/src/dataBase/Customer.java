package dataBase;

import java.util.ArrayList;
import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;

public class Customer extends Model implements Comparable<Object> {

	// private variables
	private int mCustID;
	private int mCustType;
	private String mFirstName;
	private String mLastName;
	private String mFatherName;
	private String mPlaceSodor;
	private String mDateSodor;
	private String mShomareSabt;
	private String mCodeMeli;
	private String mCodePosti;
	private int mAddressPath;
	private String mAddress;
	private String mTel;
	private String mMobile;
	private String mWeb;
	private String mEmail;
	private String mCompanyName;
	private int mCompanyType;
	private String mActivity;
	private String mCommertialCode;
	private short mIsSupplier;
	private int mDSID;
	private String mCreateDate;
	private int mCustState;
	private int mUserID;
	private int mMalekiatType;
	private String mSamanehCode;
	private int mSex = -1;
	private int mTahsilatID;
	private String mReshteTahsili;
	private int mEsteghrarPlace;
	private String mAboutCustomer;
	private String mCountPerson;
	private String mWorkTime;
	private String mIranPerent;
	private String mCustTypeID;
	// DB table name
	String mTableName = "tblCustomerDesc";

	// empty Constructor
	public Customer() {
	}

	// initial Constructor
	public Customer(int mCustID, int mCustType, String mFirstName,
			String mLastName, String mFatherName, int mAddressPath,
			String mAddress, String mTel, String mMobile, String mWeb,
			String mEmail, String mCompanyName, int mCompanyType,
			String mActivity, String mCommertialCode, Byte mIsSupplier,
			int mDSID, String mCreateDate, int mCustState, int mUserID,
			int mMalekiatType, String mSamanehCode, byte[] mLogoImage,
			int mEsteghrarPlace, String mAboutCustomer) {
		this.setCustID(mCustID);
		this.setCustType(mCustType);
		this.setFirstName(mFirstName);
		this.setLastName(mLastName);
		this.setFatherName(mFatherName);
		this.setAddressPath(mAddressPath);
		this.setAddress(mAddress);
		this.setTel(mTel);
		this.setMobile(mMobile);
		this.setWeb(mWeb);
		this.setEmail(mEmail);
		this.setCompanyName(mCompanyName);
		this.setCompanyType(mCompanyType);
		this.setActivity(mActivity);
		this.setCommertialCode(mCommertialCode);
		this.setIsSupplier(mIsSupplier);
		this.setDSID(mDSID);
		this.setCreateDate(mCreateDate);
		this.setCustState(mCustState);
		this.setUserID(mUserID);
		this.setMalekiatType(mMalekiatType);
		this.setSamanehCode(mSamanehCode);
		this.setEsteghrarPlace(mEsteghrarPlace);
		this.setAboutCustomer(mAboutCustomer);
	}

	// initial Constructor
	public Customer(int mCustID, int mCustType, String mFirstName,
			String mLastName, String mFatherName, String mPlaceSodor,
			String mDateSodor, String mShomareSabt, String mCodeMeli,
			String mCodePosti, int mAddressPath, String mAddress, String mTel,
			String mMobile, String mWeb, String mEmail, String mCompanyName,
			int mCompanyType, String mActivity, String mCommertialCode,
			Byte mIsSupplier, int mDSID, String mCreateDate, int mCustState,
			int mUserID, int mMalekiatType, String mSamanehCode,
			byte[] mLogoImage, int mSex, int mTahsilatID,
			String mReshteTahsili, int mEsteghrarPlace, String mAboutCustomer,
			String mCountPerson, String mWorkTime, String mIranPerent,
			String mCustTypeID) {
		this.setCustID(mCustID);
		this.setCustType(mCustType);
		this.setFirstName(mFirstName);
		this.setLastName(mLastName);
		this.setFatherName(mFatherName);
		this.setPlaceSodor(mPlaceSodor);
		this.setDateSodor(mDateSodor);
		this.setShomareSabt(mShomareSabt);
		this.setCodeMeli(mCodeMeli);
		this.setCodePosti(mCodePosti);
		this.setAddressPath(mAddressPath);
		this.setAddress(mAddress);
		this.setTel(mTel);
		this.setMobile(mMobile);
		this.setWeb(mWeb);
		this.setEmail(mEmail);
		this.setCompanyName(mCompanyName);
		this.setCompanyType(mCompanyType);
		this.setActivity(mActivity);
		this.setCommertialCode(mCommertialCode);
		this.setIsSupplier(mIsSupplier);
		this.setDSID(mDSID);
		this.setCreateDate(mCreateDate);
		this.setCustState(mCustState);
		this.setUserID(mUserID);
		this.setMalekiatType(mMalekiatType);
		this.setSamanehCode(mSamanehCode);
		this.setSex(mSex);
		this.setTahsilatID(mTahsilatID);
		this.setReshteTahsili(mReshteTahsili);
		this.setEsteghrarPlace(mEsteghrarPlace);
		this.setAboutCustomer(mAboutCustomer);
		this.setCountPerson(mCountPerson);
		this.setWorkTime(mWorkTime);
		this.setIranPerent(mIranPerent);
		this.setCustTypeID(mCustTypeID);
	}

	// load From DB
	public void load() {
		String[] columns = { "CustID", "CustType", "FirstName", "LastName",
				"FatherName", "PlaceSodor", "DateSodor", "ShomareSabt",
				"CodeMeli", "CodePosti", "AddressPath", "Address", "Tel",
				"Mobile", "Web", "Email", "CompanyName", "CompanyType",
				"IsSupplier", "DSID", "CreateDate", "CustState", "UserID",
				"MalekiatType", "SamanehCode", "Sex",
				"TahsilatID", "ReshteTahsili", "EsteghrarPlace",
				"AboutCustomer", "CountPerson", "WorkTime", "IranPerent",
				"CustTypeID" };
		String selection = "CustID = ?";
		String[] selectionArgs = { String.valueOf(getCustID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setCustID(c.getInt(c.getColumnIndex("CustID")));
				setCustType(c.getInt(c.getColumnIndex("CustType")));
				setFirstName(c.getString(c.getColumnIndex("FirstName")));
				setLastName(c.getString(c.getColumnIndex("LastName")));
				setFatherName(c.getString(c.getColumnIndex("FatherName")));
				setPlaceSodor(c.getString(c.getColumnIndex("PlaceSodor")));
				setDateSodor(c.getString(c.getColumnIndex("DateSodor")));
				setShomareSabt(c.getString(c.getColumnIndex("ShomareSabt")));
				setCodeMeli(c.getString(c.getColumnIndex("CodeMeli")));
				setCodePosti(c.getString(c.getColumnIndex("CodePosti")));
				setUserID(c.getInt(c.getColumnIndex("AddressPath")));
				setAddress(c.getString(c.getColumnIndex("Address")));
				setTel(c.getString(c.getColumnIndex("Tel")));
				setMobile(c.getString(c.getColumnIndex("Mobile")));
				setWeb(c.getString(c.getColumnIndex("Web")));
				setEmail(c.getString(c.getColumnIndex("Email")));
				setCompanyName(c.getString(c.getColumnIndex("CompanyName")));
				setCompanyType(c.getInt(c.getColumnIndex("CompanyType")));
				setIsSupplier(c.getShort(c.getColumnIndex("IsSupplier")));
				setDSID(c.getInt(c.getColumnIndex("DSID")));
				setCreateDate(c.getString(c.getColumnIndex("CreateDate")));
				setCustState(c.getInt(c.getColumnIndex("CustState")));
				setUserID(c.getInt(c.getColumnIndex("UserID")));
				setMalekiatType(c.getInt(c.getColumnIndex("MalekiatType")));
				setSamanehCode(c.getString(c.getColumnIndex("SamanehCode")));
				setSex(c.getInt(c.getColumnIndex("Sex")));
				setTahsilatID(c.getInt(c.getColumnIndex("TahsilatID")));
				setReshteTahsili(c.getString(c.getColumnIndex("ReshteTahsili")));
				setEsteghrarPlace(c.getInt(c.getColumnIndex("EsteghrarPlace")));
				setAboutCustomer(c.getString(c.getColumnIndex("AboutCustomer")));
				setCountPerson(c.getString(c.getColumnIndex("CountPerson")));
				setWorkTime(c.getString(c.getColumnIndex("WorkTime")));
				setIranPerent(c.getString(c.getColumnIndex("IranPerent")));
				setCustTypeID(c.getString(c.getColumnIndex("CustTypeID")));
			}
		} catch (Exception e) {
			e.getMessage();
		} 
	}

	public void save() {
		// String[] columns = {String.valueOf(_id), _name, _phone };
		ContentValues values = new ContentValues();
		values.put("CustID", getCustID());
		values.put("CustType", getCustType());
		values.put("FirstName", getFirstName());
		values.put("LastName", getLastName());
		values.put("FatherName", getFatherName());
		values.put("PlaceSodor", getPlaceSodor());
		values.put("DateSodor", getDateSodor());
		values.put("ShomareSabt", getShomareSabt());
		values.put("CodeMeli", getCodeMeli());
		values.put("CodePosti", getCodePosti());
		values.put("AddressPath", getAddressPath());
		values.put("Address", getAddress());
		values.put("Tel", getTel());
		values.put("Mobile", getMobile());
		values.put("Web", getWeb());
		values.put("Email", getEmail());
		values.put("CompanyName", getCompanyName());
		values.put("CompanyType", getCompanyType());
		values.put("IsSupplier", getIsSupplier());
		values.put("DSID", getDSID());
		values.put("CreateDate", getCreateDate());
		values.put("CustState", getCustState());
		values.put("UserID", getUserID());
		values.put("MalekiatType", getMalekiatType());
		values.put("SamanehCode", getSamanehCode());
		values.put("Sex", getSex());
		values.put("TahsilatID", getTahsilatID());
		values.put("ReshteTahsili", getReshteTahsili());
		values.put("EsteghrarPlace", getEsteghrarPlace());
		values.put("AboutCustomer", getAboutCustomer());
		values.put("CountPerson", getCountPerson());
		values.put("WorkTime", getWorkTime());
		values.put("IranPerent", getIranPerent());
		values.put("CustTypeID", getCustTypeID());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		} 
	}

	public void update(Boolean checkNullFields) {
		ContentValues values = new ContentValues();
		if (checkNullFields) {
			if (getCustType() != 0)
				values.put("CustType", getCustType());
			if (getFirstName() != null && getFirstName().trim() != "")
				values.put("FirstName", getFirstName());
			if (getLastName() != null && getLastName().trim() != "")
				values.put("LastName", getLastName());
			if (getFatherName() != null && getFatherName().trim() != "")
				values.put("FatherName", getFatherName());
			if (getPlaceSodor() != null && getPlaceSodor().trim() != "")
				values.put("PlaceSodor", getPlaceSodor());
			if (getDateSodor() != null && getDateSodor().trim() != "")
				values.put("DateSodor", getDateSodor());
			if (getShomareSabt() != null && getShomareSabt().trim() != "")
				values.put("ShomareSabt", getShomareSabt());
			if (getCodeMeli() != null && getCodeMeli().trim() != "")
				values.put("CodeMeli", getCodeMeli());
			if (getCodePosti() != null && getCodePosti().trim() != "")
				values.put("CodePosti", getCodePosti());
			if (getAddressPath() != 0)
				values.put("AddressPath", getAddressPath());
			if (getAddress() != null && getAddress().trim() != "")
				values.put("Address", getAddress());
			if (getTel() != null && getTel().trim() != "")
				values.put("Tel", getTel());
			if (getMobile() != null && getMobile().trim() != "")
				values.put("Mobile", getMobile());
			if (getWeb() != null && getWeb().trim() != "")
				values.put("Web", getWeb());
			if (getEmail() != null && getEmail().trim() != "")
				values.put("Email", getEmail());
			if (getCompanyName() != null && getCompanyName().trim() != "")
				values.put("CompanyName", getCompanyName());
			if (getCompanyType() != 0)
				values.put("CompanyType", getCompanyType());
			if (getIsSupplier() != 0)
				values.put("IsSupplier", getIsSupplier());
			if (getDSID() != 0)
				values.put("DSID", getDSID());
			if (getCreateDate() != null && getCreateDate().trim() != "")
				values.put("CreateDate", getCreateDate());
			if (getCustState() != 0)
				values.put("CustState", getCustState());
			if (getUserID() != 0)
				values.put("UserID", getUserID());
			if (getMalekiatType() != 0)
				values.put("MalekiatType", getMalekiatType());
			if (getSamanehCode() != null && getSamanehCode().trim() != "")
				values.put("SamanehCode", getSamanehCode());
			if (getSex() != 0)
				values.put("Sex", getSex());
			if (getTahsilatID() != 0)
				values.put("TahsilatID", getTahsilatID());
			if (getReshteTahsili() != null && getReshteTahsili().trim() != "")
				values.put("ReshteTahsili", getReshteTahsili());
			if (getEsteghrarPlace() != 0)
				values.put("EsteghrarPlace", getEsteghrarPlace());
			if (getAboutCustomer() != null && getAboutCustomer().trim() != "")
				values.put("AboutCustomer", getAboutCustomer());
			if (getCountPerson() != null && getCountPerson().trim() != "")
				values.put("CountPerson", getCountPerson());
			if (getWorkTime() != null && getWorkTime().trim() != "")
				values.put("WorkTime", getWorkTime());
			if (getIranPerent() != null && getIranPerent().trim() != "")
				values.put("IranPerent", getIranPerent());
			if (getCustTypeID() != null && getCustTypeID().trim() != "")
				values.put("CustTypeID", getCustTypeID());
		} else {
			values.put("CustID", getCustID());
			values.put("CustType", getCustType());
			values.put("FirstName", getFirstName());
			values.put("LastName", getLastName());
			values.put("FatherName", getFatherName());
			values.put("PlaceSodor", getPlaceSodor());
			values.put("DateSodor", getDateSodor());
			values.put("ShomareSabt", getShomareSabt());
			values.put("CodeMeli", getCodeMeli());
			values.put("CodePosti", getCodePosti());
			values.put("AddressPath", getAddressPath());
			values.put("Address", getAddress());
			values.put("Tel", getTel());
			values.put("Mobile", getMobile());
			values.put("Web", getWeb());
			values.put("Email", getEmail());
			values.put("CompanyName", getCompanyName());
			values.put("CompanyType", getCompanyType());
			values.put("IsSupplier", getIsSupplier());
			values.put("DSID", getDSID());
			values.put("CreateDate", getCreateDate());
			values.put("CustState", getCustState());
			values.put("UserID", getUserID());
			values.put("MalekiatType", getMalekiatType());
			values.put("SamanehCode", getSamanehCode());
			values.put("Sex", getSex());
			values.put("TahsilatID", getTahsilatID());
			values.put("ReshteTahsili", getReshteTahsili());
			values.put("EsteghrarPlace", getEsteghrarPlace());
			values.put("AboutCustomer", getAboutCustomer());
			values.put("CountPerson", getCountPerson());
			values.put("WorkTime", getWorkTime());
			values.put("IranPerent", getIranPerent());
			values.put("CustTypeID", getCustTypeID());
		}
		String whereClause = "CustID = ?";
		String[] whereArgs = { String.valueOf(getCustID()) };
		try {
			DataSourceTools.updateObject(mTableName, values, whereClause,
					whereArgs);
		} catch (Exception e) {
		} 
	}

	public void delete() {
		String whereClause = "CustID = ?";
		String[] whereArgs = { String.valueOf(getCustID()) };
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {
		}
	}

	@Override
	public ArrayList<Customer> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<Customer> customerList = new ArrayList<Customer>();
		String selectQuery = super.gueryBuilder(fields, limits, limitNum,
				mTableName, sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
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
					customerList.add(customer);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		} 
		return customerList;
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

	public int getCustType() {
		return mCustType;
	}

	public void setCustType(int mCustType) {
		this.mCustType = mCustType;
	}

	public String getFirstName() {
		return mFirstName;
	}

	public void setFirstName(String mFirstName) {
		this.mFirstName = mFirstName;
	}

	public String getLastName() {
		return mLastName;
	}

	public void setLastName(String mLastName) {
		this.mLastName = mLastName;
	}

	public String getFatherName() {
		return mFatherName;
	}

	public void setFatherName(String mFatherName) {
		this.mFatherName = mFatherName;
	}

	public String getPlaceSodor() {
		return mPlaceSodor;
	}

	public void setPlaceSodor(String mPlaceSodor) {
		this.mPlaceSodor = mPlaceSodor;
	}

	public String getDateSodor() {
		return mDateSodor;
	}

	public void setDateSodor(String mDateSodor) {
		this.mDateSodor = mDateSodor;
	}

	public String getShomareSabt() {
		return mShomareSabt;
	}

	public void setShomareSabt(String mShomareSabt) {
		this.mShomareSabt = mShomareSabt;
	}

	public String getCodeMeli() {
		return mCodeMeli;
	}

	public void setCodeMeli(String mCodeMeli) {
		this.mCodeMeli = mCodeMeli;
	}

	public String getCodePosti() {
		return mCodePosti;
	}

	public void setCodePosti(String mCodePosti) {
		this.mCodePosti = mCodePosti;
	}

	public int getAddressPath() {
		return mAddressPath;
	}

	public void setAddressPath(int mAddressPath) {
		this.mAddressPath = mAddressPath;
	}

	public String getAddress() {
		return mAddress;
	}

	public void setAddress(String mAddress) {
		this.mAddress = mAddress;
	}

	public String getTel() {
		return mTel;
	}

	public void setTel(String mTel) {
		this.mTel = mTel;
	}

	public String getMobile() {
		return mMobile;
	}

	public void setMobile(String mMobile) {
		this.mMobile = mMobile;
	}

	public String getWeb() {
		return mWeb;
	}

	public void setWeb(String mWeb) {
		this.mWeb = mWeb;
	}

	public String getEmail() {
		return mEmail;
	}

	public void setEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public String getCompanyName() {
		return mCompanyName;
	}

	public void setCompanyName(String mCompanyName) {
		this.mCompanyName = mCompanyName;
	}

	public int getCompanyType() {
		return mCompanyType;
	}

	public void setCompanyType(int mCompanyType) {
		this.mCompanyType = mCompanyType;
	}

	public String getActivity() {
		return mActivity;
	}

	public void setActivity(String mActivity) {
		this.mActivity = mActivity;
	}

	public String getCommertialCode() {
		return mCommertialCode;
	}

	public void setCommertialCode(String mCommertialCode) {
		this.mCommertialCode = mCommertialCode;
	}

	public short getIsSupplier() {
		return mIsSupplier;
	}

	public void setIsSupplier(short mIsSupplier) {
		this.mIsSupplier = mIsSupplier;
	}

	public int getDSID() {
		return mDSID;
	}

	public void setDSID(int mDSID) {
		this.mDSID = mDSID;
	}

	public String getCreateDate() {
		return mCreateDate;
	}

	public void setCreateDate(String mCreateDate) {
		this.mCreateDate = mCreateDate;
	}

	public int getCustState() {
		return mCustState;
	}

	public void setCustState(int mCustState) {
		this.mCustState = mCustState;
	}

	public int getUserID() {
		return mUserID;
	}

	public void setUserID(int mUserID) {
		this.mUserID = mUserID;
	}

	public int getMalekiatType() {
		return mMalekiatType;
	}

	public void setMalekiatType(int mMalekiatType) {
		this.mMalekiatType = mMalekiatType;
	}

	public String getSamanehCode() {
		return mSamanehCode;
	}

	public void setSamanehCode(String mSamanehCode) {
		this.mSamanehCode = mSamanehCode;
	}

	public int getTahsilatID() {
		return mTahsilatID;
	}

	public void setTahsilatID(int mTahsilatID) {
		this.mTahsilatID = mTahsilatID;
	}

	public int getSex() {
		return mSex;
	}

	public void setSex(int mSex) {
		this.mSex = mSex;
	}

	public String getReshteTahsili() {
		return mReshteTahsili;
	}

	public void setReshteTahsili(String mReshteTahsili) {
		this.mReshteTahsili = mReshteTahsili;
	}

	public int getEsteghrarPlace() {
		return mEsteghrarPlace;
	}

	public void setEsteghrarPlace(int mEsteghrarPlace) {
		this.mEsteghrarPlace = mEsteghrarPlace;
	}

	public String getAboutCustomer() {
		return mAboutCustomer;
	}

	public void setAboutCustomer(String mAboutCustomer) {
		this.mAboutCustomer = mAboutCustomer;
	}

	public String getCountPerson() {
		return mCountPerson;
	}

	public void setCountPerson(String mCountPerson) {
		this.mCountPerson = mCountPerson;
	}

	public String getWorkTime() {
		return mWorkTime;
	}

	public void setWorkTime(String mWorkTime) {
		this.mWorkTime = mWorkTime;
	}

	public String getIranPerent() {
		return mIranPerent;
	}

	public void setIranPerent(String mIranPerent) {
		this.mIranPerent = mIranPerent;
	}

	public String getCustTypeID() {
		return mCustTypeID;
	}

	public void setCustTypeID(String mCustTypeID) {
		this.mCustTypeID = mCustTypeID;
	}

	@Override
	public int compareTo(Object obj) {
		if (obj != null) {
			Customer customer = (Customer) obj;
			if (this.getCustID() != customer.getCustID())
				return 1;
		} else {
			return 1;
		}
		return 0;
	}
	@Override
	public boolean equals(Object obj) {
		if(obj != null){
			Customer customer = (Customer) obj;
			if(this.getCustID() == customer.getCustID())
				return true;
			else
				return false;
		}else{
			return false;
		}
	}
}
