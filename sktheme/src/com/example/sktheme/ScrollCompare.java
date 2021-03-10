package com.example.sktheme;

import java.util.ArrayList;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;

public class ScrollCompare extends ScrollView{
private ArrayList<ScrollView> scrollViews=new ArrayList<ScrollView>();
	public ScrollCompare(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		customizeMethod();
	}


	public ScrollCompare(Context context, AttributeSet attrs) {
		super(context, attrs);
		customizeMethod();
	}

	public ScrollCompare(Context context) {
		super(context);
		customizeMethod();
	}

	private void customizeMethod() {
	}

	public void addScrollViews(ScrollView scrollView) {
		this.scrollViews.add(scrollView);
	}
	public void removeScrollViews(ScrollView scrollView) {
		this.scrollViews.remove(scrollView);
	}
	@Override
		protected void onScrollChanged(int l, int t, int oldl, int oldt) {
			super.onScrollChanged(l, t, oldl, oldt);
			for (ScrollView scrollview : scrollViews) {
				scrollview.scrollTo(l, t);
			}
		}
}
