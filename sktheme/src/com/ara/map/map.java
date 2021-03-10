package com.ara.map;

import com.example.sktheme.R;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;

public class map extends RelativeLayout{
	Mymap basemap;
	Paint p;
public map(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		dosomejob();
		// TODO Auto-generated constructor stub
	}
public map(Context context, AttributeSet attrs) {
		super(context, attrs);
		// TODO Auto-generated constructor stub
		dosomejob();
	}
	public map(Context context) {
		super(context);
		// TODO Auto-generated constructor stub
		dosomejob();
	}
private void dosomejob() {
	p=new Paint();
	setBackgroundColor(0x00ffffff);
	PointF f=Mymap.getxylocation(63.63281250000000f,39.84228601734890f);
	basemap=new Mymap((int)f.x,(int)f.y, BitmapFactory.decodeStream(getContext().getResources().openRawResource(R.drawable.pin_blue)), getContext());
	}
@Override
protected void onDraw(Canvas canvas) {
	p.setColor(0xff0f5d89);
	canvas.drawRect(r1, p);
	p.setColor(0x99379eda);
	canvas.drawRect(r2, p);
	p.setColor(0xffffffff);
    canvas.drawBitmap(basemap.baseImg,null,r,p);
	super.onDraw(canvas);
}
Rect r;
private Rect r1;
private Rect r2;
	@Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        int w1=basemap.baseImg.getWidth();
        int h1=basemap.baseImg.getHeight();
        r=new Rect((w/2-w1/2),(h/2-h1/2),(w/2+w1/2),(h/2+h1/2));
        int k=10;
        r1=new Rect(0,0,w,h);
        k=20;
        r2=new Rect((w/2-w1/2)-k,(h/2-h1/2)-k,(w/2+w1/2)+k,(h/2+h1/2)+k);
        basemap.onDraw();
        invalidate();
//        b=(ImageButton) findViewById(R.id.imageButton2);
//        //   System.out.println (((Activity)c).findViewById(R.id.button1));
//       b.setOnClickListener(new OnClickListener() {
//           public void onClick(View arg0) {
//        	   b.setImageBitmap(BitmapFactory.decodeStream(test.this.getContext().getResources().openRawResource(R.drawable.run)));
//           }
//       });
}


@Override
public boolean onTouchEvent(MotionEvent event) {
	 float x = event.getX();
     float y = event.getY();

     switch (event.getAction()) {
         case MotionEvent.ACTION_DOWN:
             basemap.pointerPressed(x, y);
             invalidate();
             break;
         case MotionEvent.ACTION_MOVE:
        	 basemap.pointerDragged(x, y);
             invalidate();
             break;
         case MotionEvent.ACTION_UP:
        	 basemap.pointerReleased(x, y);
             invalidate();
             break;
     }
     return true;
}
}
