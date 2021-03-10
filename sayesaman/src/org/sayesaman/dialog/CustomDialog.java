package org.sayesaman.dialog;

import android.app.Dialog;
import android.content.Context;
import android.util.Log;
import android.view.SoundEffectConstants;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;

import org.sayesaman.R;

/**
 * Created by ameysami on 9/12/13.
 */
public class CustomDialog extends Dialog implements Animation.AnimationListener {
    //*************************************************************************************
    private Animation inAnimation;
    private Animation outAnimation;

    public Animation getInAnimation() {
        if(inAnimation==null){
            inAnimation= AnimationUtils.loadAnimation(getContext(), R.anim.scale_in_animation);
        }
        return inAnimation;

    }

    public void setInAnimation(Animation inAnimation) {
        this.inAnimation = inAnimation;
    }

    public Animation getOutAnimation() {
        if(outAnimation==null){
            outAnimation=AnimationUtils.loadAnimation(getContext(),R.anim.scale_out_animation);
            outAnimation.setAnimationListener(this);
        }
        return outAnimation;
    }

    public void setOutAnimation(Animation outAnimation) {
        this.outAnimation = outAnimation;
        outAnimation.setAnimationListener(this);
    }
    //*************************************************************************************
    public CustomDialog(Context context) {
        super(context);
    }

    public CustomDialog(Context context, int theme) {
        super(context, theme);
    }

    protected CustomDialog(Context context, boolean cancelable, OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
    }
    //*************************************************************************************
    @Override
    public void onAnimationStart(Animation animation) {

    }

    @Override
    public void onAnimationEnd(Animation animation) {
        if(animation==getOutAnimation()){
            super.dismiss();
        }
    }

    @Override
    public void onAnimationRepeat(Animation animation) {

    }
    //*************************************************************************************
    @Override
    public void dismiss() {
        try{
            findViewById(R.id.dialog_parent).playSoundEffect(SoundEffectConstants.CLICK);
            ((RelativeLayout)findViewById(R.id.dialog_parent)).startAnimation(getOutAnimation());
        }catch(Exception ex){
            super.dismiss();
            Log.e("animation dialog", "your dialog root view id must be 'dialog_parent'");
        }
    }

    @Override
    public void show() {
        super.show();
        try{
            findViewById(R.id.dialog_parent).playSoundEffect(SoundEffectConstants.CLICK);
            ((RelativeLayout)findViewById(R.id.dialog_parent)).startAnimation(getInAnimation());
        }catch(Exception ex){
            Log.e("animation dialog","your dialog root view id must be 'dialog_parent'");
        }

        getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_NOTHING);
    }
    //*************************************************************************************
}
