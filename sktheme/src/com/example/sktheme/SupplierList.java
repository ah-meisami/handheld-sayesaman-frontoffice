package com.example.sktheme;

import java.util.ArrayList;

import com.ara.linkfy.CustomLinkMovementMethod.linkmovementListener;
import com.example.sktheme.mainScreens.homeScreen;
import com.example.sktheme.ribbon.horizentalriboonholder;

import dataBase.Customer;
import dataBase.DBUtil;
import dataBase.DataSourceTools;
import dataBase.Limit;
import dataBase.ProductGroup;
import dataBase.SupplierProduct;
import android.content.Context;
import android.graphics.Movie;
import android.os.Handler;
import android.text.Html;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

public class SupplierList extends ScrollView {
	Handler handler;
	ProductGroup myself;

	public SupplierList(Context context) {
		super(context);
		dojobs();
	}

	public SupplierList(Context context, ProductGroup myself) {
		super(context);
		this.myself = myself;
		dojobs();
	}

	public SupplierList(Context context, AttributeSet attrs) {
		super(context, attrs);
		dojobs();
	}

	final void dojobs() {
		try {
			handler = new Handler();
		} catch (Exception ex) {
		}
		setBackgroundColor(0xffffffff);
		// inflate(getContext(), R.layout.vertical_ribbon, null);
		// LayoutInflater inflater = (LayoutInflater) getContext()
		// .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		// inflater.inflate(R.layout.vertical_ribbon,this, true);
		ArrayList<Customer> customers = DataSourceTools
				.getSuppliersByProductGroup(myself.getGrpID());
		LinearLayout l = new LinearLayout(getContext());
		l.setOrientation(LinearLayout.VERTICAL);
		addView(l);
		setLayoutParams(new android.widget.RelativeLayout.LayoutParams(
				android.widget.RelativeLayout.LayoutParams.FILL_PARENT,
				android.widget.RelativeLayout.LayoutParams.FILL_PARENT));
		if (customers.size() == 0) {
			View.inflate(getContext(),R.layout.no_supplier,l);
		} else {
			for (int i = 0; i < customers.size(); i++) {
				l.addView(new SupplierItem(getContext(), customers.get(i)));
			}
		}
	}

	public class dographicaljobs implements Runnable {
		@Override
		public void run() {
			
		}
	}
}
