package com.example.sktheme;

import com.ara.date.DatePicker;
import com.ara.date.MyDate;
import com.ara.greendroid.widget.AraPopup;
import com.ara.greendroid.widget.AraPopupWindow;

import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.content.Context;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.EditText;
import android.widget.TextView;

public class DateView extends TextView{
	private String header="";
	int year=1392,monthOfYear=01,dayOfMonth=01;
	int hour=0,min=0;
	public DateView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		customizeMethod();
	}
	public DateView(Context context, AttributeSet attrs) {
		super(context, attrs);
		customizeMethod();
	}
	public DateView(Context context) {
		super(context);
		customizeMethod();
	}
	public DateView(Context context,int year,
            int monthOfYear, int dayOfMonth,int hour,int min) {
		super(context);
		setDate(year, monthOfYear, dayOfMonth,hour,min);
	}
	public void setDate(int year,
            int monthOfYear, int dayOfMonth,int hour,int min){
		this.year=year;
		this.monthOfYear=monthOfYear;
		this.dayOfMonth=dayOfMonth;
		this.hour=hour;
		this.min=min;
//		Time chosenDate = new Time();
//        chosenDate.set(dayOfMonth, monthOfYear, year);
//        long dtDob = chosenDate.toMillis(true);
//        CharSequence strDate = DateFormat.format("MMMM dd, yyyy", dtDob);
        setText(dayOfMonth+"/"+monthOfYear+"/"+year);
	}
	private void customizeMethod() {
	}
	@Override
	public boolean onTouchEvent(MotionEvent event) {
		if(event.getAction()==MotionEvent.ACTION_UP){
			DatePicker dp=DatePicker.getMyself(getContext());
			dp.setDateTime(new MyDate(year, monthOfYear, dayOfMonth, hour, min));
			dp.addDaListeners(new DatePicker.datepickerListener() {
				@Override
				public void dateSelected(MyDate d) {
					setDate(d.year, d.month, d.day,d.hour,d.min);
				}
			}); 
			dp.show(this);
		}
			
//			DatePickerDialog dateDlg = new DatePickerDialog(statics.getContext(),new OnDateSetListener() {
//				
//				@Override
//				public void onDateSet(DatePicker view, int year, int monthOfYear,
//						int dayOfMonth) {
//					setDate(year, monthOfYear, dayOfMonth);
//					
//				}
//			},2011,0, 1);
//			      dateDlg.setMessage(header);
//			      dateDlg.show();
//		}
		return super.onTouchEvent(event);
	}

	public String getHeader() {
		return header;
	}

	public void setHeader(String header) {
		this.header = header;
	}


}
