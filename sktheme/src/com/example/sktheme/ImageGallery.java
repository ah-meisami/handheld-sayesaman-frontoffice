package com.example.sktheme;

import com.example.sktheme.customImageviewer.customImageviewOnTouch;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ViewFlipper;

public class ImageGallery extends RelativeLayout implements
		customImageviewOnTouch {
	Bitmap picId[];
	String captre;
	ViewFlipper fliper;
	int flipperIndex = 0;
	public customImageviewer productImageView;
	private blobs myblob;

	public ImageGallery(Context context) {
		super(context);
		customizeMethod();
		
	}

	public ImageGallery(Context context, AttributeSet attrs) {
		super(context, attrs);
		customizeMethod();
	}

	public ImageGallery(Bitmap picId[], Context context) {
		super(context);
		this.picId = picId;
		customizeMethod();
	}

	final void customizeMethod() {
//		setOrientation(VERTICAL);
		setGravity(Gravity.CENTER_HORIZONTAL | Gravity.CENTER_VERTICAL);
		fliper = new ViewFlipper(getContext());
		for (int i = 0; i < picId.length; i++) {
			{
				customImageviewer im = new customImageviewer(getContext());
				im.setImageBitmap(picId[i]);
				im.addOnCoustomListener(this);
				fliper.addView(im);
			}
		}
		flipperIndex = 0;
		fliper.setDisplayedChild(flipperIndex);
		addView(fliper);
		RelativeLayout.LayoutParams fliperparam=(LayoutParams) fliper.getLayoutParams();
		int orientation =LinearLayout.VERTICAL;// getOrientation() == VERTICAL ? HORIZONTAL : VERTICAL;
		myblob = new blobs(getContext(), fliper.getChildCount(),orientation);
		myblob.setselectedindex(flipperIndex);
		myblob.setPadding(0,10, 0, 10);
		myblob.setId(1111111);
		addView(myblob);
		RelativeLayout.LayoutParams myblobparam=(LayoutParams) myblob.getLayoutParams();
		myblobparam.addRule(ALIGN_PARENT_LEFT);
		myblobparam.addRule(ALIGN_PARENT_RIGHT);
		myblobparam.addRule(ALIGN_PARENT_BOTTOM);
		fliperparam.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
		fliperparam.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
		fliperparam.addRule(RelativeLayout.ALIGN_PARENT_TOP);
		fliperparam.addRule(RelativeLayout.ABOVE,myblob.getId());
		myblob.setGravity(Gravity.CENTER_HORIZONTAL | Gravity.CENTER_VERTICAL);
	}

	float lastx, lasty;
	float maxtouch = 30;

	@Override
	public void onClick(MotionEvent event) {
		lastx = event.getX();
		lasty = event.getY();
	}

	@Override
	public void onMove(MotionEvent event) {
	}

	@Override
	public void onRelease(MotionEvent event) {
		if (Math.abs(lastx - event.getX()) > maxtouch) {
			if (lastx > event.getX()) {
				flipperIndex = (flipperIndex + 1) % fliper.getChildCount();
				fliperLeftToRight();
			} else {
				flipperIndex--;
				if (flipperIndex < 0)
					flipperIndex = fliper.getChildCount() - 1;
				fliperRightToLeft();
			}
			myblob.setselectedindex(flipperIndex);
		}
	}

	private void fliperRightToLeft() {
		fliper.setOutAnimation(outToRightAnimation());
		fliper.setInAnimation(inFromLeftAnimation());
		fliper.setDisplayedChild(flipperIndex);
	}

	private void fliperLeftToRight() {
		fliper.setOutAnimation(outToLeftAnimation());
		fliper.setInAnimation(inFromRightAnimation());
		fliper.setDisplayedChild(flipperIndex);
	}

	Animation inFromRight;
	Animation outtoLeft;
	Animation inFromLeft;
	Animation outtoRight;
	long duration = 250;

	private Animation inFromRightAnimation() {
		if (inFromRight == null) {
			inFromRight = new TranslateAnimation(Animation.RELATIVE_TO_PARENT,
					+1.0f, Animation.RELATIVE_TO_PARENT, 0.0f,
					Animation.RELATIVE_TO_PARENT, 0.0f,
					Animation.RELATIVE_TO_PARENT, 0.0f);
			inFromRight.setDuration(duration);
			inFromRight.setInterpolator(new AccelerateInterpolator());
		}
		return inFromRight;
	}

	private Animation outToLeftAnimation() {
		if (outtoLeft == null) {
			outtoLeft = new TranslateAnimation(Animation.RELATIVE_TO_PARENT,
					0.0f, Animation.RELATIVE_TO_PARENT, -1.0f,
					Animation.RELATIVE_TO_PARENT, 0.0f,
					Animation.RELATIVE_TO_PARENT, 0.0f);
			outtoLeft.setDuration(duration);
			outtoLeft.setInterpolator(new AccelerateInterpolator());
		}
		return outtoLeft;
	}

	private Animation inFromLeftAnimation() {
		if (inFromLeft == null) {
			inFromLeft = new TranslateAnimation(Animation.RELATIVE_TO_PARENT,
					-1.0f, Animation.RELATIVE_TO_PARENT, 0.0f,
					Animation.RELATIVE_TO_PARENT, 0.0f,
					Animation.RELATIVE_TO_PARENT, 0.0f);
			inFromLeft.setDuration(duration);
			inFromLeft.setInterpolator(new AccelerateInterpolator());
		}
		return inFromLeft;
	}

	private Animation outToRightAnimation() {
		if (outtoRight == null) {
			outtoRight = new TranslateAnimation(Animation.RELATIVE_TO_PARENT,
					0.0f, Animation.RELATIVE_TO_PARENT, +1.0f,
					Animation.RELATIVE_TO_PARENT, 0.0f,
					Animation.RELATIVE_TO_PARENT, 0.0f);
			outtoRight.setDuration(duration);
			outtoRight.setInterpolator(new AccelerateInterpolator());
		}
		return outtoRight;
	}

	public class blobs extends LinearLayout {
		int selectedindex;

		public blobs(Context context, int count, int orientation) {
			super(context);
			setOrientation(orientation);
			for (int i = 0; i < count; i++) {
				ImageView v = new ImageView(getContext());
				v.setImageResource(R.drawable.off_blob);
				v.setPadding(2, 0, 2, 0);
				// LayoutParams p=new LayoutParams(15,15);
				// v.setLayoutParams(p);
				addView(v);
			}
			setselectedindex(0);
		}

		public void setselectedindex(int selected) {
			if (selectedindex >= 0) {
				((ImageView) getChildAt(selectedindex))
						.setImageResource(R.drawable.off_blob);
			}
			selectedindex = selected;
			((ImageView) getChildAt(selectedindex))
					.setImageResource(R.drawable.on_blob);

		}
	}
}
