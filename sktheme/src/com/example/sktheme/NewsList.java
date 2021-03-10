package com.example.sktheme;

import java.util.ArrayList;

import com.example.sktheme.mainScreens.homeScreen;
import com.example.sktheme.ribbon.horizentalriboonholder;

import dataBase.Customer;
import dataBase.DBUtil;
import dataBase.DataSourceTools;
import dataBase.Limit;
import dataBase.ProductGroup;
import dataBase.SupplierProduct;
import android.content.Context;
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

public class NewsList extends ScrollView {
	Handler handler;
	ProductGroup myself;

	public NewsList(Context context) {
		super(context);
		customizeMethod();
	}

	public NewsList(Context context, ProductGroup myself) {
		super(context);
		this.myself = myself;
		customizeMethod();
	}

	public NewsList(Context context, AttributeSet attrs) {
		super(context, attrs);
		customizeMethod();
	}

	final void customizeMethod() {
		try {
			handler = new Handler();
		} catch (Exception ex) {
		}
		setBackgroundColor(0xffffffff);
		// inflate(getContext(), R.layout.vertical_ribbon, null);
		// LayoutInflater inflater = (LayoutInflater) getContext()
		// .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		// inflater.inflate(R.layout.vertical_ribbon,this, true);
		ArrayList<Customer> customers =DataSourceTools
				.getSuppliersByProductGroup(myself.getGrpID());
		LinearLayout l = new LinearLayout(getContext());
		l.setOrientation(LinearLayout.VERTICAL);
		addView(l);
		setLayoutParams(new android.widget.RelativeLayout.LayoutParams(
				android.widget.RelativeLayout.LayoutParams.FILL_PARENT,
				android.widget.RelativeLayout.LayoutParams.FILL_PARENT));
			for (int i = 0; i <10; i++) {
				l.addView(new NewsItem(getContext()));
			}
	}
	public class dographicaljobs implements Runnable {
		@Override
		public void run() {

		}
	}
}
