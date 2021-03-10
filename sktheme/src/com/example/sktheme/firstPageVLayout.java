package com.example.sktheme;


import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;

public class firstPageVLayout extends RelativeLayout{

	public firstPageVLayout(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		// TODO Auto-generated constructor stub
	}

	public firstPageVLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		// TODO Auto-generated constructor stub
	}
	public firstPageVLayout(Context context) {
		super(context);
		// TODO Auto-generated constructor stub
	}
	private void endadding() {
		if(alistener!=null)
			alistener.endadding();
	}
	public void addView(View child) {
		startadding();
		super.addView(child);
		endadding();
	}
	private void startadding() {
		 if(alistener!=null)
		alistener.startadding();
		
	}
	public void removeAddListener() {
	}
	public void setAlistener(addingListener alistener) {
		this.alistener = alistener;
	}
	private addingListener alistener;
	public interface addingListener{
		public void endadding() ;
		public void startadding();
	}

}
