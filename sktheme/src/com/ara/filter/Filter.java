package com.ara.filter;

import java.util.ArrayList;
import java.util.Iterator;

import dataBase.DBUtil.LimitTail;
import dataBase.DBUtil.LimitType;
import dataBase.DBUtil.TblFields;
import dataBase.Limit;


public class Filter {
	
	boolean enable=true;
	private ArrayList<filterItemListener> fitemlistener=new ArrayList<Filter.filterItemListener>();
	ArrayList<FilterItem> fitems=new ArrayList<FilterItem>();
	private ArrayList<filterItemAddRemoveListener> fitemAddRemov1eList=new ArrayList<filterItemAddRemoveListener>();
	public Filter(){
	}
	public boolean addfilter(int id,TblFields fild){
		FilterItem f=new FilterItem(id, fild);
		return addfilter(f);
	}
	public boolean removefilter(int id,TblFields fild){
		FilterItem f=new FilterItem(id, fild);
		return removefilter(f);
	}
	public boolean removefilter(FilterItem f){
		if(fitems.remove(f)){
			for (filterItemAddRemoveListener fitems : fitemAddRemov1eList) {
				fitems.filterRemoved(f);
			}
			changed();
			return true;
		}
		return false; 
	}
	public void addFilterToLimit(ArrayList<Limit> limits) {
		if(enable)
		for (FilterItem fitem : fitems) {
			limits.add(new Limit(fitem.fild, fitem.idValue+"", LimitType.ItIs, LimitTail.OR));
		}
	}
	public void disable() {
		enable=false;
		changed();
	}
	public void enable(){
		enable=true;
		changed();
	}
	public void clear(){
		fitems.clear();
		changed();
	}
	public boolean addFitemlistenr(filterItemListener fitemlistenr) {
		if(this.fitemlistener.contains(fitemlistenr))
			return false;
		return this.fitemlistener.add(fitemlistenr);
	}
	public void changed(){
		for (filterItemListener flistener: fitemlistener) {
			flistener.filterChanged();
		}
	}
	public boolean removeFitemlistenr(filterItemListener fitemlistenr) {
		return this.fitemlistener.remove(fitemlistenr);
	}
	
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return enable;
	}
	public void removefilter(TblFields tblf) {
		for (int i=0;i<fitems.size();i++) {
			if(fitems.get(i).fild==tblf){
				fitems.remove(i);
				for (filterItemAddRemoveListener fitemsq : fitemAddRemov1eList) {
					fitemsq.filterRemoved(fitems.get(i));
				}
				changed();
				i--;
			}
		}
	}
	public void addFitemAddRemov1eList(filterItemAddRemoveListener fitemAddRemov1eList) {
		if(this.fitemAddRemov1eList.contains(fitemAddRemov1eList)){
			this.fitemAddRemov1eList.add(fitemAddRemov1eList);
		}
	}
	public void removeFitemAddRemov1eList(filterItemAddRemoveListener fitemAddRemov1eList) {
			this.fitemAddRemov1eList.remove(fitemAddRemov1eList);
	}
	public interface filterItemListener{
		public void filterChanged();
	}
	public interface filterItemAddRemoveListener{
		public void filterAdded(FilterItem fitem);
		public void filterRemoved(FilterItem fitem);
	}
	public boolean addfilter(FilterItem f) {
		if(!fitems.contains(f)){
			fitems.add(f);
			for (filterItemAddRemoveListener fitems : fitemAddRemov1eList) {
				fitems.filterRemoved(f);
			}
			changed();
			return true;
		}
		else return false;
	}
}
