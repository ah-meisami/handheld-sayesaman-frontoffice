package com.ara.map.vector;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

public class mapviewContainer extends RelativeLayout {
public mapviewContainer(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		dojobs();
	}

	public mapviewContainer(Context context, AttributeSet attrs) {
		super(context, attrs);
		dojobs();
	}
	public mapviewContainer(Context context) {
		super(context);
		dojobs();
	}
	private void dojobs() {
		addView(new mapview(getContext()));
	}
}
