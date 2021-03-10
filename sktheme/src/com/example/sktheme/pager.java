package com.example.sktheme;

import java.util.Vector;

import com.example.sktheme.myGrid.mygridChangeListener;
import com.example.sktheme.showall_layout.adapter;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.RelativeLayout;

public class pager extends RelativeLayout implements mygridChangeListener{
	
	private myGrid grid;
	
	public pager(Context context) {
		super(context);
		dojobs();
	}
	public pager(Context context, AttributeSet attrs) {
		super(context, attrs);
		dojobs();
	}

	public pager(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		dojobs();
	}
	
	private void dojobs() {
		View.inflate(getContext(), R.layout.pagger, this);
		getGrid().setMygridlistener(this);
	}
	public static int NUMCULMNS = 4;
	Vector<pagerPagingListener> pagingListeners = new Vector<pagerPagingListener>();


	private void openLastPage() {
		for (int i = 0; i < pagingListeners.size(); i++) {
			pagingListeners.get(i).openLastPage(this);
		}

	}

	private void openNextPage() {
		for (int i = 0; i < pagingListeners.size(); i++) {
			pagingListeners.get(i).openNextPage(this);
		}
	}
	public void addpagerPagelistener(pagerPagingListener p) {
		pagingListeners.add(p);
	}

	public void removePagerpagelistener(pagerPagingListener p) {
		pagingListeners.remove(p);
	}
	public interface pagerPagingListener {
		public void openLastPage(pager p);

		public void openNextPage(pager p);
	}

	public void setAdapter(adapter adap) {
		getGrid().setAdapter(adap);
	}
	public myGrid getGrid() {
		if(grid==null){
			grid=(myGrid) findViewById(R.id.myGrid1);
		}
		return grid;
	}
	public void setGrid(myGrid grid) {
		this.grid = grid;
	}
	public void setNumColumns(int num){
		getGrid().setNumColumns(num);
	}
	public void onClick(MotionEvent event) {
		lastx = event.getX();
		lasty = event.getY();
	}
	public void onMove(MotionEvent event) {
	}
	public void onRelease(MotionEvent event) {
		if (Math.abs(lastx - event.getX()) > maxtouch) {
			if (lastx > event.getX()) {
				openNextPage();
			} else {
				openLastPage();
			}
		}
	}
	float lastx, lasty;
	float maxtouch = 30;
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
	public void upLunched(int allelemnt) {
		findViewById(R.id.pagger_forward_buttons).setVisibility(View.GONE);
		findViewById(R.id.pagger_backward_buttons).setVisibility(View.VISIBLE);
	}
	@Override
	public void DownLunched(int allelemnt) {
		findViewById(R.id.pagger_backward_buttons).setVisibility(View.GONE);
		findViewById(R.id.pagger_forward_buttons).setVisibility(View.VISIBLE);
		
	}
}