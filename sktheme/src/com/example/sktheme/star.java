package com.example.sktheme;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

public class star extends View{
StarRating mystar;
Paint p=new Paint();
float Scale=1;
	public star(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		getattribs(attrs);
		dojobs();
	}
	public star(Context context, AttributeSet attrs) {
		super(context, attrs);
		getattribs(attrs);
		dojobs();
		
	}
	private void getattribs(AttributeSet attrs) {
		float scalex=1;
		float scaley=1;
		for (int i = 0; i < attrs.getAttributeCount(); i++) {
			if (attrs.getAttributeName(i).compareToIgnoreCase("scaleX") == 0) {
				scalex =Float.parseFloat(attrs.getAttributeValue(i));
			}
			if (attrs.getAttributeName(i).compareToIgnoreCase("scaleY") == 0) {
				scaley=Float.parseFloat(attrs.getAttributeValue(i));
			}
		}
		Scale=Math.min(scalex, scaley);
	}
	public star(Context context) {
		super(context);
		dojobs();
	}
	private void dojobs() {
		
		mystar=new StarRating();
		mystar.setMax(10);
		mystar.setRate(1);
	}
	@Override
		protected void onDraw(Canvas canvas) {
			// TODO Auto-generated method stub
			super.onDraw(canvas);
			mystar.onDraw(canvas, (getMeasuredWidth()/2)-(int) (getMeasuredWidth()*Scale/2),(getMeasuredHeight()/2)-(int) (getMeasuredHeight()*Scale/2), (int) (getMeasuredWidth()*Scale), p);
		}
	@Override
		protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		try{
			
		int w=getWidth();
		int h=getHeight();
		if(w<=0)
		w=mystar.onDraw(new Canvas(), 0, 0, w, p)*mystar.getCount();
		if(h<=0)
		h=mystar.geth();
		setMeasuredDimension(w,h);
		}catch(Exception ex){setMeasuredDimension(1000, 200);}
		}
	@Override
		public boolean onTouchEvent(MotionEvent event) {
			float scale=event.getX()/getMeasuredWidth();
			mystar.setRate((int) (mystar.getMax()*scale));
			invalidate();
			return true;
			//return super.onTouchEvent(event);
			
		}
}
