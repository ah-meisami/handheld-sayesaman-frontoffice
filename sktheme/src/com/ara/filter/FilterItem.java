package com.ara.filter;

import dataBase.DBUtil.TblFields;

public class FilterItem{
	public int idValue;
	public TblFields fild;
	public FilterItem(int id,TblFields fild){
		this.idValue=id;
		this.fild=fild;
	}
	@Override
	public boolean equals(Object o) {
		if(o instanceof FilterItem)
		{
			FilterItem f=(FilterItem) o;
			return f.idValue==this.idValue&&f.fild==fild;
		}
		else
		return false;
	}
}