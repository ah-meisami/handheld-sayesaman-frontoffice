package com.ara.map.vector;

import java.io.File;

import org.mapsforge.android.maps.MapView;
import org.mapsforge.android.maps.Projection;
import org.mapsforge.android.maps.overlay.ArrayItemizedOverlay;
import org.mapsforge.android.maps.overlay.Overlay;
import org.mapsforge.core.GeoPoint;


import com.example.sktheme.R;
import com.example.sktheme.statics;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Paint.Style;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.Toast;

public class mapview extends MapView{

	
	public mapview(Context context, AttributeSet attrs) {
		super(context, attrs);
		dojobs();
	}
	public mapview(Context context) {
		super(context);
		dojobs();
	}
	Paint    p=new Paint();
	private void dojobs() {
		p.setStyle(Style.STROKE);
		p.setColor(0x99000000);
		p.setStrokeWidth(2);
		File sdcard = Environment.getExternalStorageDirectory();	    
		String map = sdcard.getAbsolutePath() + File.separator + "iran.map";
		setMapFile(new File(map));
		getOverlays().add(new OverlayMapa(getContext().getResources().getDrawable(R.drawable.txt_bg)));
		
	}
	@Override
	public boolean onTouchEvent(MotionEvent ev) {
	    int action = ev.getAction();
	    switch (action) {
	    case MotionEvent.ACTION_DOWN:
	        // Disallow ScrollView to intercept touch events.
	        this.getParent().requestDisallowInterceptTouchEvent(true);
	        break;

	    case MotionEvent.ACTION_UP:
	        // Allow ScrollView to intercept touch events.
	        this.getParent().requestDisallowInterceptTouchEvent(false);
	        break;
	    }

	    // Handle MapView's touch events.
	    super.onTouchEvent(ev);
	    return true;
	}
	
	@Override
	protected void onDraw(Canvas c) {
		// TODO Auto-generated method stub
		super.onDraw(c);
		c.drawRect(0, 0, getMeasuredWidth(), getMeasuredHeight(), p);
	}
	private class OverlayMapa extends ArrayItemizedOverlay {
		 public OverlayMapa(Drawable defaultMarker) {
			super(defaultMarker);
		}

		public OverlayMapa(Drawable defaultMarker, boolean alignMarker) {
			super(defaultMarker, alignMarker);
			// TODO Auto-generated constructor stub
		}

		@Override
		 public boolean onTap(GeoPoint point, MapView mapView) 
		 {
		   Context contexto = mapView.getContext();
		   String msg = "Lat: " + point.latitudeE6/1E6 + " - " + 
		                "Lon: " + point.longitudeE6/1E6;

		   Toast toast = Toast.makeText(contexto, msg, Toast.LENGTH_SHORT);
		   toast.show();

		  return true;
		 }

		@Override
		protected void drawOverlayBitmap(Canvas arg0, Point arg1,
				Projection arg2, byte arg3) {
			
		}
		}

}
