package org.sayesaman.tut1.sakhtemankala.model;


public class Product {

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


    @Override
    public boolean equals(Object obj) {
        if (obj != null) {
            Product prodParam = (Product) obj;
            if (this.getProdID() != prodParam.getProdID())
                return false;
        } else {
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
