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

public class settingView extends customDialog implements
		android.view.View.OnClickListener {

	public settingView(Context context) {
		super(context, R.style.mydialogstyle);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(LayoutParams.FLAG_FULLSCREEN, LayoutParams.FLAG_FULLSCREEN);
		getWindow().setBackgroundDrawable(
				new ColorDrawable(android.graphics.Color.TRANSPARENT));
		setContentView(R.layout.setting_view);
		ImageView b=(ImageView) findViewById(R.id.close_dailog);
		b.setOnClickListener(this);
	}
	@Override
	public void onClick(View v) {
		if(v.getId()==R.id.close_dailog){
			dismiss();
		}
	}
}
