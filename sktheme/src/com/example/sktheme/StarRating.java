package com.example.sktheme;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region.Op;
public class StarRating {
private int count=5;
private int rate=-1;
private int max=10;
float scale=1;
public StarRating() {
	// TODO Auto-generated constructor stub
}
public int onDraw(Canvas c,int left,int top,int w,Paint p){
	try{
	if(w>0)
	if(statics.getInactiveStar().getWidth()*count>w)
	{
		scale=w/(float)(statics.getInactiveStar().getWidth()*count);
	}
	int w1=(int) (statics.getInactiveStar().getWidth()*scale);
	for(int i=0;i<getCount();i++){
		Rect r=new Rect(left+(i*w1), top, left+(i*w1)+(int)(w1), top+(int)(w1));
		c.drawBitmap(statics.getInactiveStar(),null,r, p);
	}
	if(rate>0){
		float f=rate/(float)max;	
	float totalw=w1*getCount();
	Rect r1=new Rect(left,top,(int) (left+totalw*f),top+w1);
	Rect r2=c.getClipBounds();
	c.save();
//	Matrix m=c.getMatrix();
	if(r2.height()>0&&r2.width()>0){
	c.clipRect(r1);
	for(int i=0;i<getCount();i++){
		Rect r=new Rect(left+(i*w1), top, left+(i*w1)+(int)(w1), top+(int)(w1));
		c.drawBitmap(statics.getActiveStar(),null,r, p);
	}
	c.clipRect(r2,Op.REPLACE);
	c.restore();
	}
	}
	return w1;
	}catch(Exception ex){
		System.out.println(ex.getMessage());
		try{
		return statics.getInactiveStar().getWidth();
		}catch(Exception e){
			return 50;
			}
	}
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}
public int getRate() {
	return rate;
}
public void setRate(int rate) {
	this.rate = rate;
}
public int getMax() {
	return max;
}
public void setMax(int max) {
	this.max = max;
}
public int geth() {
	return statics.getInactiveStar().getHeight();
}
}
