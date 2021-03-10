package com.ara.date;

public class MyDate {
public int year,month,day,hour,min;
public MyDate(int year, int month, int day) {
	this.year=year;
	this.month=month;
	this.day=day;
}
public MyDate(int year, int month, int day,int hour,int min) {
	this.year=year;
	this.month=month;
	this.day=day;
	this.hour=hour;
	this.min=min;
}
@Override
	public String toString() {
		// TODO Auto-generated method stub
		return year+"/"+month+"/"+day+"    "+hour+":"+min;
	}
}
