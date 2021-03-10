package com.ara.filter;

import java.util.ArrayList;

import com.ara.filter.Filter.filterItemAddRemoveListener;
import com.example.sktheme.statics;

import dataBase.DBUtil.TblFields;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.view.View;

public class filterView extends View implements filterItemAddRemoveListener, View.OnClickListener{
	private FilterItem filter;
	private boolean checked=false;
	private String caption="";
	private ArrayList<FilterViewChangeListener> changeListeners=new ArrayList<filterView.FilterViewChangeListener>();
	private FilterViewPreferences prefrences;
	Paint p;
	Rect captionRect=new Rect();
	Rect padding;
	private Paint p1;
	public filterView(Context context,FilterItem filter,String caption) {
		super(context);
		this.setFilter(filter);
		p=new Paint();
		p.setColor(0xffffffff);
		p.setAntiAlias(true);
		p.setColor(getPrefrences().getBgColor()^0x00ffffff);
		p.setStyle(Style.STROKE);
		p.setTextSize(15);
		p1=new Paint(p);
		setOnClickListener(this);
		setCaption(caption);
		statics.getMyfilter().addFitemAddRemov1eList(this);
		padding=new Rect(20, 0, 10,0);
	}
@Override
protected void onDraw(Canvas canvas) {
	canvas.drawColor(getPrefrences().getBgColor());
	super.onDraw(canvas);
	if(!checked)
		canvas.drawBitmap(getPrefrences().getCheckingPic()[0],getMeasuredWidth()-padding.left-getPrefrences().getCheckingPic()[0].getWidth(),getMeasuredHeight()/2-getPrefrences().getCheckingPic()[0].getHeight()/2, p);
	else
		canvas.drawBitmap(getPrefrences().getCheckingPic()[1],getMeasuredWidth()-padding.left-getPrefrences().getCheckingPic()[0].getWidth(),getMeasuredHeight()/2-getPrefrences().getCheckingPic()[1].getHeight()/2, p);
	canvas.drawText(caption,(getMeasuredWidth()-getPrefrences().getCheckingPic()[1].getWidth()-captionRect.width())-padding.right-padding.left,getMeasuredHeight()/2+captionRect.height()/2,p);
	p1.setColor(0xffe7e6e6);
	canvas.drawLine(0, getMeasuredHeight()-1, getMeasuredWidth(), getMeasuredHeight()-1, p1);
	p1.setColor(0xffbfbdbe);
	canvas.drawLine(0, getMeasuredHeight(), getMeasuredWidth(), getMeasuredHeight(), p1);
}
@Override
public void filterAdded(FilterItem fitem) {
	if(fitem.equals(getFilter())){
		setChecked(true);
	}
}
@Override
public void filterRemoved(FilterItem fitem) {
	if(fitem.equals(getFilter())){
		setChecked(false);
	}
}
public boolean isChecked() {
	return checked;
}
public void setChecked(boolean checked) {
	this.checked = checked;
	for (FilterViewChangeListener element : changeListeners) {
		if(checked)
			element.filterviewChecked(this);
		else
			element.filterviewUnChecked(this);
	}
	if(checked)
		statics.getMyfilter().addfilter(filter);
	else
		statics.getMyfilter().removefilter(filter);
	invalidate();
	statics.getParentAccordion().invalidate();
}
public void addChangeListeners(FilterViewChangeListener changeListener) {
	if(!this.changeListeners.contains(changeListener))
		this.changeListeners.add(changeListener);
}
public void removeChangeListeners(FilterViewChangeListener changeListener) {
	this.changeListeners.remove(changeListener);
}
public String getCaption() {
	return caption;
}

public void setCaption(String caption) {
	this.caption = caption;
	p.getTextBounds(caption,0,caption.length(),captionRect);
}
public FilterItem getFilter() {
	return filter;
}

public void setFilter(FilterItem filter) {
	this.filter = filter;
}
public FilterViewPreferences getPrefrences() {
	if(prefrences==null)
		prefrences=FilterViewPreferences.getPreferences();
	return prefrences;
}

public void setPrefrences(FilterViewPreferences prefrences) {
	this.prefrences = prefrences;
	p.setColor(prefrences.getBgColor()^0x00ffffff);
}
public interface FilterViewChangeListener {
	public void filterviewChecked(filterView fv);
	public void filterviewUnChecked(filterView fv);
}
@Override
public void onClick(View v) {
	setChecked(!isChecked());
	invalidate();
}

}
