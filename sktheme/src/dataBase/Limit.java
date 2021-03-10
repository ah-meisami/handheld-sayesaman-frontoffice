package dataBase;

import dataBase.DBUtil.*;

public class Limit implements Comparable<Object> {
	
	// private variables
	private TblFields mLimitField;
	private String mLimitValue;
	private LimitType mLimitType;
	private LimitTail mLimitTail;
	private String mFieldPrefix ="";
	
	// empty Constructor
	public Limit(){}
	
	// initial Constructor
	public Limit(TblFields field, String value, LimitType type, LimitTail tail){
		this.setLimitField(field);
		this.setLimitValue(value);
		this.setLimitType(type);	
		this.setLimitTail(tail);
	}
	
	// initial Constructor
	public Limit(String mPreFix,TblFields field, String value, LimitType type, LimitTail tail){
		this.setFieldPrefix(mPreFix);
		this.setLimitField(field);
		this.setLimitValue(value);
		this.setLimitType(type);	
		this.setLimitTail(tail);		
	}
	
	// setter & getter methods 
	
	public TblFields getLimitField() {
		return mLimitField;
	}
	public void setLimitField(TblFields mLimitField) {
		this.mLimitField = mLimitField;
	}
	public String getLimitValue() {
		return mLimitValue;
	}
	public void setLimitValue(String mLimitValue) {
		this.mLimitValue = mLimitValue;
	}
	public LimitType getLimitType() {
		return mLimitType;
	}
	public void setLimitType(LimitType mLimitType) {
		this.mLimitType = mLimitType;
	}
	public LimitTail getLimitTail() {
		return mLimitTail;
	}
	public void setLimitTail(LimitTail mLimitTail) {
		this.mLimitTail = mLimitTail;
	}

	@Override
	public int compareTo(Object obj) {
		if(obj instanceof Limit){
			Limit limitParam = (Limit) obj;
			if(this.getLimitTail() == LimitTail.OR && limitParam.getLimitTail() == LimitTail.AND)
				return -1;
			if(this.getLimitTail() == LimitTail.AND && limitParam.getLimitTail() == LimitTail.OR)
				return 1;
		}else{
			return 0;
		}
		return 0;
	}
	public String getFieldPrefix() {
		return mFieldPrefix;
	}

	public void setFieldPrefix(String mFieldPrefix) {
		this.mFieldPrefix = mFieldPrefix;
	}

}
