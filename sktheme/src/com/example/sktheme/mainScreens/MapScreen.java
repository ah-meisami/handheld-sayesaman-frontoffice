package com.example.sktheme.mainScreens;

import java.util.ArrayList;

import com.example.sktheme.R;
import com.example.sktheme.SupplierList;
import com.example.sktheme.cart;
import com.example.sktheme.cartItem;
import com.example.sktheme.cartItem.CartitemchangeListener;
import com.example.sktheme.customDialog;
import com.example.sktheme.R.id;
import com.example.sktheme.R.layout;
import com.example.sktheme.R.style;
import com.example.sktheme.statics;

import dataBase.ProductGroup;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class MapScreen extends customDialog implements
		android.view.View.OnClickListener{;
		ProductGroup myself;
	public MapScreen(Context context,ProductGroup myself) {
		super(context, R.style.mydialogstyle);
		this.myself=myself;
		dojobs();
	}
	private void dojobs() {
		// TODO Auto-generated method stub
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(LayoutParams.FLAG_FULLSCREEN, LayoutParams.FLAG_FULLSCREEN);
		getWindow().setBackgroundDrawable(
				new ColorDrawable(android.graphics.Color.TRANSPARENT));
		setContentView(View.inflate(statics.getContext(), R.layout.mapview, null));
		((TextView)findViewById(R.id.txtview_header_supplierscreen)).setText("تامین کنندگان "+myself.getGrpName());
		((TextView)findViewById(R.id.txtview_header_supplierscreen)).setTypeface(statics.getTitrfontfac());
		findViewById(R.id.btn_supplier_screen_back).setOnClickListener(this);
		}
	@Override
	public void onClick(View v) {
	switch (v.getId()) {
	case R.id.btn_supplier_screen_back:
		dismiss();
		break;
	default:
		break;
	}
	}

}
