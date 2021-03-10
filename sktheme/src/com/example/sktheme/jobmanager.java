package com.example.sktheme;

import com.ara.date.DatePicker;
import com.example.sktheme.mainScreens.homeScreen;
import android.app.Activity;
import android.os.Handler;
import android.widget.ViewFlipper;

public class jobmanager implements Runnable {
	splash sp;
	Activity ac;
	private Handler handler;
	
	public jobmanager(splash sp, Activity ac) {
		this.sp = sp;
		this.ac = ac;
		handler = new Handler();
		new Thread(this).start();
	}

	ViewFlipper flipper;

	@Override
	public void run() {
		handler.post(new Runnable() {

			@Override
			public void run() {
				flipper = new ViewFlipper(ac);
				sp.setinfo("بارگذاری کالاها");
				flipper.addView(new homeScreen(ac));
				new Thread(new Runnable() {
					
					@Override
					public void run() {
						verticalRibbon v = (verticalRibbon) flipper
								.findViewById(R.id.verticalRibbon1);
						v.setgroup("-1",(homeScreen) flipper.getChildAt(0),true);
						
						sp.terminateTHread();
						handler.post(new Runnable() {
							@Override
							public void run() {
								DatePicker.getMyself(statics.getActivity());
								ac.setContentView(flipper);
							}
						});
					}
				}).start();
			}
		});		
	}
}
