package com.example.sktheme;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AnimationUtils;
import android.view.animation.LayoutAnimationController;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;

public class horizontalRibbon extends HorizontalScrollView {

	private LinearLayout hRibbonLayout;

	public horizontalRibbon(Context context) {
		super(context);
		customizeMethod();
	}

	public horizontalRibbon(Context context, AttributeSet attrs) {
		super(context, attrs);
		customizeMethod();
	}
	final void customizeMethod() {

		// inflate(getContext(), R.layout.horizontal_ribbon, null);
		// LayoutInflater inflater = (LayoutInflater) getContext()
		// .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		// inflater.inflate(R.layout.horizontal_ribbon,this, true);
		final LinearLayout l = new LinearLayout(getContext());
		l.setOrientation(LinearLayout.HORIZONTAL);
		l.setId(R.id.h_riboon_layout);
		addView(l);
		LayoutAnimationController la=new LayoutAnimationController(AnimationUtils.loadAnimation(getContext(), R.anim.fade));
		la.setOrder(la.ORDER_REVERSE);
		l.setLayoutAnimation(la);
		hRibbonLayout = (LinearLayout) findViewById(R.id.h_riboon_layout);
	}
	@Override
	protected void onSizeChanged(int w, int h, int oldw, int oldh) {
		super.onSizeChanged(w, h, oldw, oldh);
	}
	public void rightscroll() {
		fullScroll(HorizontalScrollView.FOCUS_RIGHT);
		post(new Runnable() {
			@Override
			public void run() {
				smoothScrollTo(hRibbonLayout.getWidth(), 0);
			}
		});
	}

	public void rightscrollMeasure() {
		fullScroll(HorizontalScrollView.FOCUS_RIGHT);
		measure(0, 0);
		scrollTo(hRibbonLayout.getMeasuredWidth(), 0);
		post(new Runnable() {
			@Override
			public void run() {
				smoothScrollTo(hRibbonLayout.getMeasuredWidth(), 0);
			}
		});
	}

	public LinearLayout gethRibbonLayout() {
		return hRibbonLayout;
	}
}
