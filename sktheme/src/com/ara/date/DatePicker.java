package com.ara.date;


import java.util.ArrayList;

import com.ara.greendroid.widget.AraPopupItem;
import com.ara.greendroid.widget.AraPopupWindow;
import com.ara.numberPicker.NumberPicker;
import com.example.sktheme.R;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
public class DatePicker extends RelativeLayout implements android.view.View.OnClickListener{
	private static DatePicker myself;
	private AraPopupWindow popup;
//	private ArrayList<datepickerListener> daListeners=new ArrayList<DatePicker.datepickerListener>();
	datepickerListener daListeners;
	private DatePicker(Context context, AttributeSet attrs) {
		super(context, attrs);
		dojobs();
	}
	private DatePicker(Context context) {
		super(context);
		dojobs();
	}
	private void dojobs() {
		View v=View.inflate(getContext(), R.layout.date_picker1,null);
		addView(v);
		RelativeLayout l=new 
				RelativeLayout(getContext());
		l.addView(this);
		measure(0, 0);
		measure(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
		measure(LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT);
		measure(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT);
		getMeasuredWidth();
			popup=new AraPopupWindow(getContext());
			AraPopupItem a=new AraPopupItem(l, getContext(), "انتخاب تاریخ");
			popup.addQuickAction(a);
			findViewById(R.id.date_picker_ok).setOnClickListener(this);
			findViewById(R.id.date_picker_cancel).setOnClickListener(this);
	}
	public void setDateTime(MyDate d){
		((NumberPicker)findViewById(R.id.date_picker_year)).setCurrent(d.year);
		((NumberPicker)findViewById(R.id.date_picker_month)).setCurrent(d.month);
		((NumberPicker)findViewById(R.id.date_picker_day)).setCurrent(d.day);
		((NumberPicker)findViewById(R.id.date_picker_hour)).setCurrent(d.hour);
		((NumberPicker)findViewById(R.id.date_picker_min)).setCurrent(d.min);
	}
	public void show(View anchor){
		popup.show(anchor);
	}
	public void dismiss(){
		popup.dismiss();
	}
	public void addDaListeners(datepickerListener daListeners) {
		this.daListeners=daListeners;
//		if(!this.daListeners.contains(daListeners))
//		this.daListeners.add(daListeners);
	}
	public void removeDaListeners(datepickerListener daListeners) {
		this.daListeners=null;
//		if(!this.daListeners.contains(daListeners))
//		this.daListeners.remove(daListeners);
	}
	public interface datepickerListener{
		public void dateSelected(MyDate d);
	}
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.date_picker_cancel:
			dismiss();
			break;
		case R.id.date_picker_ok:
			setok();
			dismiss();
			break;
		default:
			break;
		}
	}
	private void setok() {
		NumberPicker year=(NumberPicker) findViewById(R.id.date_picker_year);
		NumberPicker month=(NumberPicker) findViewById(R.id.date_picker_month);
		NumberPicker day=(NumberPicker) findViewById(R.id.date_picker_day);
		NumberPicker hour=(NumberPicker) findViewById(R.id.date_picker_hour);
		NumberPicker min=(NumberPicker) findViewById(R.id.date_picker_min);
		MyDate m=new MyDate(year.getCurrent(),month.getCurrent(),day.getCurrent(),hour.getCurrent(),min.getCurrent());
		daListeners.dateSelected(m);
//		for (datepickerListener dateListener : daListeners) {
//			dateListener.dateSelected(m);
//		}
	}
	public static DatePicker getMyself(Context c) {
		if(myself==null)
			myself=new DatePicker(c);
		return myself;
	}
	public static void setMyself(DatePicker myself) {
		DatePicker.myself = myself;
	}
}
