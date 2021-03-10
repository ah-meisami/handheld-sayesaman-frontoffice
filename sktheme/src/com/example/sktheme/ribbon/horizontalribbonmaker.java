package com.example.sktheme.ribbon;

import java.util.ArrayList;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import android.widget.Toast;

import com.example.sktheme.R;
import com.example.sktheme.horizontalRibbon;
import com.example.sktheme.horizontalRibbonParent;
import com.example.sktheme.paintedProductLayout;
import com.example.sktheme.paintedProductLayout.ProductClicked;
import com.example.sktheme.productLayout;
import com.example.sktheme.updateable;


import dataBase.DBUtil;
import dataBase.Limit;
import dataBase.Product;

public class horizontalribbonmaker extends horizontalRibbon implements updateable{
	private static final int MAX_ELEMENT = 10;
	public horizontalribbonmaker(Context context) {
		super(context);
		// TODO Auto-generated constructor stub
		dothings();
	}

	public horizontalribbonmaker(Context context, AttributeSet attrs) {
		super(context, attrs);
		dothings();
	}

	private void dothings() {
	}
@Override
protected void onScrollChanged(int l, int t, int oldl, int oldt) {
	// TODO Auto-generated method stub
	super.onScrollChanged(l, t, oldl, oldt);
}
	public void setparent(ArrayList<dataBase.Product> p) {
		
		try {
			for (int i = 0; i < p.size() ; i++){
				paintedProductLayout pproduct=new paintedProductLayout(p.get(i), getContext());
				gethRibbonLayout().addView(pproduct);
				((android.widget.LinearLayout.LayoutParams)pproduct.getLayoutParams()).leftMargin=5;
				((android.widget.LinearLayout.LayoutParams)pproduct.getLayoutParams()).rightMargin=5;
			}
		} catch (Exception e) {
		}
		getViewTreeObserver().addOnGlobalLayoutListener(
				new ViewTreeObserver.OnGlobalLayoutListener() {
					@Override
					public void onGlobalLayout() {
							rightscroll();
							horizontalribbonmaker.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
					}
				});
	}
	ArrayList<Product> p;
	ProductClicked pclick;
	public void setparent(ArrayList<Product> p, ProductClicked pclick) {
		this.p=p;
		this.pclick=pclick;
		try {
			for (int i = 0; i < p.size() && i < MAX_ELEMENT; i++) {
				paintedProductLayout pl = new paintedProductLayout(p.get(i), getContext(),-1,-1);
				pl.addPclickedListener(pclick);
				gethRibbonLayout().addView(pl);
				((android.widget.LinearLayout.LayoutParams)pl.getLayoutParams()).leftMargin=5;
				((android.widget.LinearLayout.LayoutParams)pl.getLayoutParams()).rightMargin=5;
			}
		} catch (Exception e) {
		}
		rightscroll();
	}

	@Override
	public void updateData() {
		setparent(p,pclick);
	}
}
