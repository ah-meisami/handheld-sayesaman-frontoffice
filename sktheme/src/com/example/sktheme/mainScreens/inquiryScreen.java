package com.example.sktheme.mainScreens;

import com.example.sktheme.R;
import com.example.sktheme.R.layout;
import com.example.sktheme.R.style;
import com.example.sktheme.customDialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;

public class inquiryScreen extends customDialog implements
		android.view.View.OnClickListener {

	public inquiryScreen(Context context) {
		super(context, R.style.mydialogstyle);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(LayoutParams.FLAG_FULLSCREEN, LayoutParams.FLAG_FULLSCREEN);
		getWindow().setBackgroundDrawable(
				new ColorDrawable(android.graphics.Color.TRANSPARENT));
		setContentView(R.layout.inquiry_view);
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
