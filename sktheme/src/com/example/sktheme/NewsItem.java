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

public class NewsItem extends RelativeLayout{
Brand myself;

	public NewsItem(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		// TODO Auto-generated constructor stub
	}



	public NewsItem(Context context, AttributeSet attrs) {
		super(context, attrs);
		customizeMethod();

	}
	public NewsItem(Context context,Brand myself) {
		super(context);
		this.myself=myself;
		customizeMethod();
	}
	public NewsItem(Context context) {
		super(context);
		customizeMethod();
	}
	private void customizeMethod() {
		LayoutInflater inflater=(LayoutInflater) getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		inflater.inflate(R.layout.news, this);
	}


}
