package org.sayesaman.customeviews;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.InputType;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.EditText;

public class CustomEditText extends EditText {
	public String hiddenText = "type some text";
	private Paint p;

	public CustomEditText(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		for (int i = 0; i < attrs.getAttributeCount(); i++) {
			if (attrs.getAttributeName(i).compareToIgnoreCase("hiddenText") == 0) {
				hiddenText = attrs.getAttributeValue(i);
				break;
			}
		}
		customizeMethod();
		
	}

	public CustomEditText(Context context, AttributeSet attrs) {
		super(context, attrs);
		try {
			for (int i = 0; i < attrs.getAttributeCount(); i++) {
				if (attrs.getAttributeName(i).compareToIgnoreCase("hiddenText") == 0) {
					hiddenText = attrs.getAttributeValue(i);
					break;
				}
			}
		} catch (Exception ex) {
			
		}
		customizeMethod();
	}

	public CustomEditText(Context context) {
		super(context);
		customizeMethod();

	}
	private void customizeMethod() {
		p = new Paint();
		p.setTypeface(getTypeface());
		p.setTextSize(getTextSize());
		p.setColor(0x66000000);
		setSingleLine();
		setFocusableInTouchMode(false);
		
	}
	Rect r = new Rect();
	@Override
	protected void onDraw(Canvas canvas) {
		super.onDraw(canvas);
		if (!isFocused() && getText().length() == 0) {
			p.getTextBounds(hiddenText, 0, hiddenText.length(), r);
			canvas.drawText(hiddenText, getWidth() - getCompoundPaddingRight()
					- r.width(), getMeasuredHeight() / 2 + r.height() / 2, p);
		}
	}
	@Override
	protected void onFocusChanged(boolean focused, int direction,
			Rect previouslyFocusedRect) {
		super.onFocusChanged(focused, direction, previouslyFocusedRect);
	}
	@Override
	public boolean onTouchEvent(MotionEvent event) {
		setFocusableInTouchMode(true);
		return super.onTouchEvent(event);
	}
}
