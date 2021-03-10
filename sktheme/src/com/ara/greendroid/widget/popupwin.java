package com.ara.greendroid.widget;

import com.example.sktheme.R;
import com.example.sktheme.statics;

import android.content.Context;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;

public class popupwin extends PopupWindow{
public static void showViewOnView(View v1,View v2,Context context){
	PopupWindow p=new PopupWindow(500,500);
	p.setContentView(v1);
//	p.showAsDropDown(v2);
	p.showAtLocation(v2, Gravity.CENTER, 0, 0);
//	WindowManager mWindowManager = (WindowManager)context.getSystemService(Context.WINDOW_SERVICE);
//	WindowManager.LayoutParams l=new WindowManager.LayoutParams();
//	l.token=statics.getHomescreen().getWindowToken();
//	mWindowManager.addView(v1,l);
}
}
