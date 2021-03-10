package org.sayesaman.tut1.sakhtemankala.model;


public class ProductProperties{
// private Variables
private int mAID;
private String mProdPropertiesDesc;
private short mValueSelectType;
private int mGrpID;
private String mProdPropertiesComment;
// table name in DB
private String mTableName = "tblProdPropertiesDesc";

        // empty Constructor
        public ProductProperties() {
        }

        // initial Constructor
        public ProductProperties(int mAID, String mProdPropertiesDesc,
                                 short mValueSelectType, int mGrpID, String mProdPropertiesComment) {
            this.mAID = mAID;
            this.mProdPropertiesDesc = mProdPropertiesDesc;
            this.mValueSelectType = mValueSelectType;
            this.mGrpID = mGrpID;
            this.mProdPropertiesComment = mProdPropertiesComment;
        }

        // initial Id_less Constructor
        public ProductProperties(String mProdPropertiesDesc,
                                 short mValueSelectType, int mGrpID, String mProdPropertiesComment) {
            this.mProdPropertiesDesc = mProdPropertiesDesc;
            this.mValueSelectType = mValueSelectType;
            this.mGrpID = mGrpID;
            this.mProdPropertiesComment = mProdPropertiesComment;
        }

        // getting AID
        public int getAID() {
            return mAID;
        }

        // setting AID
        public void setAID(int mAID) {
            this.mAID = mAID;
        }

        // getting ProdPropertiesDesc
        public String getProdPropertiesDesc() {
            return mProdPropertiesDesc;
        }

        // setting ProdPropertiesDesc
        public void setProdPropertiesDesc(String mProdPropertiesDesc) {
            this.mProdPropertiesDesc = mProdPropertiesDesc;
        }

        // getting ValueSelectType
        public short getValueSelectType() {
            return mValueSelectType;
        }

        // setting ValueSelectType
        public void setValueSelectType(short mValueSelectType) {
            this.mValueSelectType = mValueSelectType;
        }

        // getting GrpID
        public int getGrpID() {
            return mGrpID;
        }

        // setting GrpID
        public void setGrpID(int mGrpID) {
            this.mGrpID = mGrpID;
        }

        // getting ProdPropertiesComment
        public String getProdPropertiesComment() {
            return mProdPropertiesComment;
        }

        // setting ProdPropertiesComment
        public void setProdPropertiesComment(String mProdPropertiesComment) {
            this.mProdPropertiesComment = mProdPropertiesComment;
        }

        @Override
        public boolean equals(Object o) {
            if (o instanceof ProductProperties) {
                ProductProperties pp = (ProductProperties) o;
                if (this.getAID() == pp.getAID()) {
                    return true;
                }
            } else {
                return false;
            }
            return false;
        }
}
