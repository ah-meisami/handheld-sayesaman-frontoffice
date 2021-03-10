package dataBase;

import dataBase.DBUtil.SortType;
import dataBase.DBUtil.TblFields;

public class Sort implements Comparable<Object>{

	// private variables
	private TblFields mSortField;
	private SortType mSortType;
	
	// empty Constructor
	public Sort(){}
	
	// initial Constructor
	public Sort(TblFields field, SortType type){
		this.setSortField(field);
		this.setSortType(type);		
	}
	
	// setter & getter methods 
	
	public TblFields getSortField() {
		return mSortField;
	}
	public void setSortField(TblFields mSortField) {
		this.mSortField = mSortField;
	}
	public SortType getSortType() {
		return mSortType;
	}
	public void setSortType(SortType mSortType) {
		this.mSortType = mSortType;
	}

	@Override
	public int compareTo(Object obj) {
		if(obj != null){
			Sort sortParam = (Sort) obj;
			if(this.getSortField() != sortParam.getSortField())
				return 1;
			if(this.getSortType() != sortParam.getSortType())
				return 1;			
		}else{
			return 1;
		}
		return 0;
	}

}
