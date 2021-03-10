package com.example.sktheme;

import java.util.ArrayList;

import dataBase.Brand;
import dataBase.Customer;
import dataBase.CustomerType;
import dataBase.ProductGroup;
import dataBase.SupplierProduct;
import android.content.Context;
import android.text.Html;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

public class BrandItem extends RelativeLayout{
Brand myself;
private TextView txt_brand_name;
	public BrandItem(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		// TODO Auto-generated constructor stub
	}



	public BrandItem(Context context, AttributeSet attrs) {
		super(context, attrs);
		customizeMethod();

	}
	public BrandItem(Context context,Brand myself) {
		super(context);
		this.myself=myself;
		customizeMethod();
	}
	public BrandItem(Context context) {
		super(context);
		customizeMethod();
	}
	private void customizeMethod() {
		LayoutInflater inflater=(LayoutInflater) getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		inflater.inflate(R.layout.brand, this);
		if(myself!=null)
		getTxt_brand_name().setText(myself.getBrandName());
	}



	public TextView getTxt_brand_name() {
		if(txt_brand_name==null)
			txt_brand_name=(TextView) findViewById(R.id.txtview_brand_neme);
		return txt_brand_name;
	}


}
