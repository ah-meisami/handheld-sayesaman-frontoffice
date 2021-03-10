package com.example.sktheme;

import java.util.Vector;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;

public class customImageviewer extends ImageView {
	Vector<customImageviewOnTouch> v1 = new Vector<customImageviewer.customImageviewOnTouch>();

	public customImageviewer(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		customizeMethod();
	}

	public customImageviewer(Context context, AttributeSet attrs) {
		super(context, attrs);
		customizeMethod();
	}

	public customImageviewer(Context context) {
		super(context);
		customizeMethod();
	}

	public void customizeMethod() {

	}

	public void addOnCoustomListener(customImageviewOnTouch object) {
		v1.add(object);
	}

	@Override
	public boolean onTouchEvent(MotionEvent event) {
		switch (event.getAction()) {
		case MotionEvent.ACTION_DOWN: {
			for (int i = 0; i < v1.size(); i++) {
				v1.get(i).onClick(event);
			}
		}
			break;
		case MotionEvent.ACTION_MOVE: {
			for (int i = 0; i < v1.size(); i++) {
				v1.get(i).onMove(event);
			}
		}
			break;
		case MotionEvent.ACTION_UP: {
			for (int i = 0; i < v1.size(); i++) {
				v1.get(i).onRelease(event);
			}
		}
			break;
		}
		return true;
	}
	public interface customImageviewOnTouch {
		public void onClick(MotionEvent event);

		public void onMove(MotionEvent event);

		public void onRelease(MotionEvent event);
	}
}
