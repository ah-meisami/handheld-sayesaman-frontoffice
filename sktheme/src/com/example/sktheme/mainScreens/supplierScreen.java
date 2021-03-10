package com.example.sktheme.mainScreens;

import java.util.ArrayList;

import com.ara.filter.Filter;
import com.ara.linkfy.CustomLinkMovementMethod;
import com.ara.linkfy.CustomLinkMovementMethod.linkmovementListener;
import com.example.sktheme.R;
import com.example.sktheme.SupplierFilterView;
import com.example.sktheme.SupplierItem;
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
import dataBase.DBUtil.TblFields;

import accordionPkg.accordionItem;
import accordionPkg.accrodion;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class supplierScreen extends customDialog implements
		android.view.View.OnClickListener,
		CustomLinkMovementMethod.linkmovementListener {
	;
	ProductGroup myself;
	private Thread t1;

	public supplierScreen(Context context, ProductGroup myself) {
		super(context, R.style.mydialogstyle);
		this.myself = myself;
		dojobs();
	}

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		findViewById(R.id.btn_show_map_supplierview).setFocusable(true);
		findViewById(R.id.btn_show_map_supplierview).requestFocus();
	}

	private void dojobs() {
		// TODO Auto-generated method stub
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(LayoutParams.FLAG_FULLSCREEN,
				LayoutParams.FLAG_FULLSCREEN);
		getWindow().setBackgroundDrawable(
				new ColorDrawable(android.graphics.Color.TRANSPARENT));
		CustomLinkMovementMethod.getInstance(getContext()).addLinkListeners(
				this);
		setContentView(R.layout.supplier_view);
//		((ViewGroup) findViewById(R.id.rlt_l_supplier_list_view))
//				.addView(new SupplierList(getContext(), myself));
		t1=new Thread(new loading());
		t1.start();
		((TextView) findViewById(R.id.txtview_header_supplierscreen))
				.setText("تامین کنندگان " + myself.getGrpName());
		((TextView) findViewById(R.id.txtview_header_supplierscreen))
				.setTypeface(statics.getTitrfontfac());
		findViewById(R.id.btn_supplier_screen_back).setOnClickListener(this);
		findViewById(R.id.btn_show_map_supplierview).setOnClickListener(this);
	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_supplier_screen_back:
			dismiss();
			break;
		case R.id.btn_show_map_supplierview:
			new MapScreen(statics.getActivity(), myself).show();
			break;
		default:
			break;
		}
	}

	@Override
	public void dismiss() {
		CustomLinkMovementMethod.getInstance(getContext()).removeLinkListeners(
				this);
		super.dismiss();
	}

	@Override
	public void linkclicked(String url[]) {
		if (url[0].equals(SupplierItem.LINKE_SUPPLIER)) {
			String str=url[3] + " ی ";
			try{
				str+=url[4];
			}catch(Exception ex){}
			new SupplierFilterView(statics.getContext(), Integer.parseInt(url[1]),
					Integer.parseInt(url[2]),str ).show();
		}
	}
@Override
public void newdismis() {
	if(t1!=null&&t1.isAlive()){
		try{
		t1.stop();
		}catch (Exception e) {
			
		}
	}
	super.newdismis();
}
	public class loading implements Runnable {
		SupplierList sp;

		@Override
		public void run() {
			startLoading();
			sp = new SupplierList(getContext(), myself);
			statics.getHandler().post(new Runnable() {

				@Override
				public void run() {
					((ViewGroup) findViewById(R.id.rlt_l_supplier_list_view))
							.addView(sp);
					endLoading();
				}
			});
		}

		public void startLoading() {
			
				statics.getHandler().post(new Runnable() {

					@Override
					public void run() {
						try {
						findViewById(R.id.loading_rtl_layout).setVisibility(
								View.VISIBLE);
						findViewById(R.id.loading_rtl_layout).requestLayout();
					} catch (Exception ex) {
					}
					}
				});

			
		}

		public void endLoading() {
			try {
			findViewById(R.id.loading_rtl_layout).setVisibility(View.GONE);
			findViewById(R.id.loading_rtl_layout).requestLayout();
			} catch (Exception ex) {
			}
		}
	}
}
