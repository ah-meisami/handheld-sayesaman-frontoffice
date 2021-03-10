package com.example.sktheme;

import java.util.Date;

import org.mapsforge.android.maps.MapActivity;

import com.ara.date.DatePicker;
import com.ara.date.MyClanedar;
import com.example.sktheme.mainScreens.splashScreen;
import dataBase.AppConfig;
import dataBase.DatabaseHandler;
import android.os.Bundle;
import android.os.Handler;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;

public class FirstpageActivity extends MapActivity implements OnClickListener {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		statics.setContext((Context) this);
		statics.setHandler(new Handler());
		AppConfig.CurrentContext = this;
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
		splashScreen sp = new splashScreen(this, new int[] { R.drawable.sp1,
				R.drawable.sp2, R.drawable.sp3 });
		setContentView(sp);
		new jobmanager((splash) sp, this);
//		Date d=new Date();
//		System.out.println(new MyClanedar().fromMiladiToShamsi(d));
	}
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		return true;
	}
	@Override
	public void onClick(View v) {

	}
	@Override
	protected void onPause() {
		super.onPause();	
	}
	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		super.onConfigurationChanged(newConfig);
	}
//@Override
//public void setContentView(int layoutResID) {
//	statics.removeContent(findViewById(android.R.id.content));
//	super.setContentView(layoutResID);
//	statics.addContent(findViewById(android.R.id.content));
//}
//@Override
//public void setContentView(View view) {
//	statics.removeContent(findViewById(android.R.id.content));
//	super.setContentView(view);
//	statics.addContent(findViewById(android.R.id.content));
//}
//@Override
//public void setContentView(View view, LayoutParams params) {
//	statics.removeContent(findViewById(android.R.id.content));
//	// TODO Auto-generated method stub
//	super.setContentView(view, params);
//	statics.addContent(findViewById(android.R.id.content));
//}
}
