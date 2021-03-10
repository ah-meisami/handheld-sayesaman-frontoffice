package com.example.sktheme;

import android.app.Dialog;
import android.content.Context;
import android.util.Log;
import android.view.SoundEffectConstants;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;

public class customDialog extends Dialog implements AnimationListener{

	public customDialog(Context context, int theme) {
		super(context, theme);
	}

	protected customDialog(Context context, boolean cancelable,
			OnCancelListener cancelListener) {
		super(context, cancelable, cancelListener);
	}
	public customDialog(Context context) {
		super(context);
	}

	private Animation InAnimation;
	private Animation OutAnimation;
	@Override
	public void dismiss() {		
		try{
		findViewById(R.id.dialog_parent).playSoundEffect(SoundEffectConstants.CLICK);
		((RelativeLayout)findViewById(R.id.dialog_parent)).startAnimation(getOutAnimation());
		}catch(Exception ex){
			newdismis();
			Log.e("animation dialog","your dialog root view id must be 'dialog_parent'");
		}
		
	}
	public void newdismis(){
		super.dismiss();
		statics.addContent(findViewById(android.R.id.content));
	}
	@Override
	public void show() {		
		super.show();
		statics.addContent(findViewById(android.R.id.content));
		try{
		findViewById(R.id.dialog_parent).playSoundEffect(SoundEffectConstants.CLICK);
		((RelativeLayout)findViewById(R.id.dialog_parent)).startAnimation(getInanimation());
		}catch(Exception ex){
			Log.e("animation dialog","your dialog root view id must be 'dialog_parent'");
		}
		getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_NOTHING);
	}

	public Animation getInanimation() {
		if(InAnimation==null){
			InAnimation=AnimationUtils.loadAnimation(getContext(),R.anim.scale_in_animation);
		}
		return InAnimation;
	}

	public Animation getOutAnimation() {
		if(OutAnimation==null){
			OutAnimation=AnimationUtils.loadAnimation(getContext(),R.anim.scale_out_animation);
			OutAnimation.setAnimationListener(this);
		}
		return OutAnimation;
	}

	@Override
	public void onAnimationEnd(Animation animation) {
		if(animation==getOutAnimation()){
			newdismis();
		}

	}
	@Override
	public void onAnimationRepeat(Animation animation) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onAnimationStart(Animation animation) {
		// TODO Auto-generated method stub

	}

	public void setInAnimation(Animation inAnimation) {
		InAnimation = inAnimation;
	}

	public void setOutAnimation(Animation outAnimation) {
		OutAnimation = outAnimation;
		OutAnimation.setAnimationListener(this);
	}
}
