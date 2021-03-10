package com.example.sktheme.mainScreens;

import com.example.sktheme.R;
import com.example.sktheme.splash;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageSwitcher;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewSwitcher.ViewFactory;

public class splashScreen extends RelativeLayout implements Runnable,
		ViewFactory,splash{
	private ImageSwitcher imgswitcher;
	int Drawables[];
	int index = 0;
	private Thread thisthread;
	ImageView imageView;
	TextView txt_info;
	TextView txt_loading;
	private boolean stop=false;
	private Handler handeler;
	public static final long MIN_ANIMATION_TIME=0000;
	public splashScreen(Context context, int Drawables[]) {
		super(context);
		this.Drawables = Drawables;
		dojobs();
		// TODO Auto-generated constructor stub
	}

	private void dojobs() {
		LayoutInflater inflater = (LayoutInflater) getContext()
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		inflater.inflate(R.layout.splash_screen, this);
		imgswitcher = (ImageSwitcher) findViewById(R.id.image_switcher_spalsh_screen);
		imgswitcher.setFactory(this);
		Animation inAnimation = AnimationUtils.loadAnimation(getContext(),
				R.anim.inanimation);
		Animation outAnimation = AnimationUtils.loadAnimation(getContext(),
				R.anim.outanimation);
		imgswitcher.setInAnimation(inAnimation);
		imgswitcher.setOutAnimation(outAnimation);
		setimage();
		handeler=new Handler();
		thisthread = new Thread(this);
		thisthread.start();
	}
public TextView getTxt_info() {
	if(txt_info==null)
		txt_info=(TextView) findViewById(R.id.txtview_info_splash_screen);
	return txt_info;
}
	private void setimage() {
		try{try{
		if (Drawables.length > 0) {
			imgswitcher.setImageResource(Drawables[index]);
			index = (index + 1) % Drawables.length;
		}
		}catch(OutOfMemoryError ex){System.gc();}
		}catch(OutOfMemoryError exx){System.gc();}

	}
public TextView getTxt_loading() {
	if(txt_loading==null)
		txt_loading=(TextView) findViewById(R.id.txtview_loading_splash_screen);
	return txt_loading;
}
	@Override
	public void run() {
		long time=System.currentTimeMillis();
		while (true) {
			if(stop&&(System.currentTimeMillis()-time)>MIN_ANIMATION_TIME)
				break;
			try {
				Thread.sleep(3000);
			} catch (InterruptedException e) {
				break;
			}
			handeler.post(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					setimage();
				}
			});
		}
	}
	@Override
	public View makeView() {
		imageView = new ImageView(getContext());
		imageView.setScaleType(ImageView.ScaleType.FIT_XY);
		imageView.setLayoutParams(new ImageSwitcher.LayoutParams(
				LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT));
		// TODO Auto-generated method stub
		return imageView;
	}
	@Override
	public void setinfo(String info) {
		getTxt_info().setText(info);
		
	}

	@Override
	public void terminateTHread() {
		stop=true;
		
		try {
//					// TODO Auto-generated method stub
//					Toast.makeText(getContext(), "e1", 5).show();
			thisthread.join();
//					Toast.makeText(getContext(), "e2", 1000).show();
		} catch (InterruptedException e) {
//					Toast.makeText(getContext(), "error", 1000).show();
		}
		
	}

}
