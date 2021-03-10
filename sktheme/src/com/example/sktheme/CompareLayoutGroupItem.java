package com.example.sktheme;

import java.util.ArrayList;

import dataBase.Product;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.HorizontalScrollView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;

public class CompareLayoutGroupItem extends RelativeLayout{
	private ArrayList<Product> productlist = new ArrayList<Product>();
	private ViewGroup itemDetailList;
	private ViewGroup itemHeaderList;
	private ScrollCompare leftScroll;
	private ScrollCompare rightScroll;
	public CompareLayoutGroupItem(Context context, AttributeSet attrs,
			int defStyle) {
		super(context, attrs, defStyle);
		customizeMethod();
	}
	public CompareLayoutGroupItem(Context context, AttributeSet attrs) {
		super(context, attrs);
		customizeMethod();
	}
	public CompareLayoutGroupItem(Context context) {
		super(context);
		customizeMethod();
	}
	private void customizeMethod() {
		View.inflate(getContext(), R.layout.compare,this);
		getLeftScroll().addScrollViews(getRightScroll());
		getRightScroll().addScrollViews(getLeftScroll());
		getViewTreeObserver().addOnGlobalLayoutListener(
				new ViewTreeObserver.OnGlobalLayoutListener() {
					@Override
					public void onGlobalLayout() {
							rightscroll();
							CompareLayoutGroupItem.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
					}
				});
	}
	public void rightscroll() {
		((HorizontalScrollView)findViewById(R.id.compair_horizontalScrollView)).fullScroll(HorizontalScrollView.FOCUS_RIGHT);
		post(new Runnable() {
			@Override
			public void run() {
				((HorizontalScrollView)findViewById(R.id.compair_horizontalScrollView)).smoothScrollTo(findViewById(R.id.compair_horizontalLinearLayout).getWidth(), 0);
			}
		});
	}

	public ArrayList<Product> getProductlist() {
		return productlist;
	}
	public void setProductlist(ArrayList<Product> productlist) {
		this.productlist = productlist;
		for (Product product : productlist) {
			CompareLayoutItem citem=new CompareLayoutItem(getContext(),product);
			getItemDetailList().addView(citem.getBody());
			getItemHeaderList().addView(citem.getHead());
			citem.getHead().getLayoutParams().height=200;
			citem.getHead().getLayoutParams().width=200;
			citem.getBody().getLayoutParams().width=200;
		}
	}
	public ViewGroup getItemDetailList() {
		if(itemDetailList==null)
			itemDetailList=(ViewGroup) findViewById(R.id.compare_item_detail_list);
		return itemDetailList;
	}
	public ViewGroup getItemHeaderList() {
		if(itemHeaderList==null)
			itemHeaderList=(ViewGroup) findViewById(R.id.compare_item_header_list);
		return itemHeaderList;
	}
	public ScrollCompare getLeftScroll() {
		if(leftScroll==null)
			leftScroll=(ScrollCompare) findViewById(R.id.compare_left_scroll);
		return leftScroll;
	}
	public ScrollCompare getRightScroll() {
		if(rightScroll==null)
			rightScroll=(ScrollCompare) findViewById(R.id.compare_right_scroll);
		return rightScroll;
	}
	
}

