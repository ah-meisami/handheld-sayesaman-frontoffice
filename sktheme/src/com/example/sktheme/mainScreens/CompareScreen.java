package com.example.sktheme.mainScreens;

import java.util.ArrayList;

import com.example.sktheme.CompareLayoutGroupItem;
import com.example.sktheme.CompareList;
import com.example.sktheme.R;
import com.example.sktheme.cart;
import com.example.sktheme.cartItem;
import com.example.sktheme.cartItem.CartitemchangeListener;
import com.example.sktheme.customDialog;
import com.example.sktheme.R.id;
import com.example.sktheme.R.layout;
import com.example.sktheme.R.style;
import com.example.sktheme.statics;

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

public class CompareScreen extends customDialog implements
		android.view.View.OnClickListener, CartitemchangeListener {
	;
	ArrayList<cartItem> items = new ArrayList<cartItem>();

	public CompareScreen(Context context) {
		super(context, R.style.mydialogstyle);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(LayoutParams.FLAG_FULLSCREEN,
				LayoutParams.FLAG_FULLSCREEN);
		getWindow().setBackgroundDrawable(
				new ColorDrawable(android.graphics.Color.TRANSPARENT));
		setContentView(R.layout.compare_view);
		// dialog.setTitle("کالای انتخابی");
		CompareList myCompare = statics.getMyCompare();
		if (myCompare.getcount() == 0) {
			View.inflate(getContext(), R.layout.empty_cart,
					((ViewGroup) findViewById(R.id.rlt_l_cart_list_view)));
		} else {
			CompareLayoutGroupItem cgroup=new CompareLayoutGroupItem(getContext());
			cgroup.setProductlist(statics.getMyCompare().getProductlist());
			 ((ViewGroup) findViewById(R.id.rlt_l_compare_list_view))
			 .addView(cgroup);
		}
		findViewById(R.id.dialog_parent).requestFocus();
		findViewById(R.id.btn_cart_screen_back).setOnClickListener(this);
		TextView t = (TextView) findViewById(R.id.txtview_header_cartscreen);
		t.setTypeface(statics.getTitrfontfac());
		t.setTextSize(30);
	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_cart_screen_back:
			dismiss();
			break;
		case R.id.btn_remove_all_cartscreen:
			for (int i = 0; i < items.size(); i++) {
				items.get(i).removeMyself();
				i--;
			}
			// ((LinearLayout)findViewById(R.id.lin_l_cart_list_view)).removeAllViews();
			items.clear();
			break;
		default:
			break;
		}
	}

	@Override
	public void cartchanged(cartItem c) {
	}


	private int getsum() {
		int sum = 0;
		for (cartItem citem : items) {
			sum += citem.getCount();
		}
		return sum;
	}

	@Override
	public void cartremoved(cartItem c) {
		items.remove(c);
	}

	@Override
	public void cartCheckedChange(cartItem c, boolean isChecked) {
		
		
	}
}
