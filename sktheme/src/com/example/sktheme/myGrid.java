package com.example.sktheme;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AbsListView;
import android.widget.GridView;

public class myGrid extends GridView implements
		android.widget.AbsListView.OnScrollListener {
	private mygridChangeListener mygridlistener;

	public myGrid(Context context, AttributeSet attrs) {
		super(context, attrs);
		customizeMethod();
	}

	public myGrid(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		customizeMethod();
	}

	public myGrid(Context context) {
		super(context);
		customizeMethod();
	}

	private void customizeMethod() {
		setNumColumns(pager.NUMCULMNS);
		setBackgroundColor(0X00000000);
		setHorizontalSpacing(10);
		setVerticalSpacing(10);
		setMinimumHeight(0);
		setMinimumWidth(0);
		setOnScrollListener(this);
	}

	@Override
	protected void onScrollChanged(int l, int t, int oldl, int oldt) {
		if (mygridlistener != null) {
//			if (t == 0) {
//				mygridlistener.upLunched(-1);
//			} else if (t == getScrollBarSize()) {
//				mygridlistener.DownLunched(-1);
//			}
		}
		super.onSizeChanged(l, t, oldl, oldt);
	}

	public mygridChangeListener getMygridlistener() {
		return mygridlistener;
	}

	public void setMygridlistener(mygridChangeListener mygridlistener) {
		this.mygridlistener = mygridlistener;
	}

	public interface mygridChangeListener {
		public void upLunched(int allelemnt);

		public void DownLunched(int allelemnt);
	}

	@Override
	public void onScroll(AbsListView view, int firstVisibleItem,
			int visibleItemCount, int totalItemCount) {
		
		if (mygridlistener != null) {
			if (firstVisibleItem == 0)
				mygridlistener.upLunched(totalItemCount);
			else
			if (visibleItemCount + firstVisibleItem == totalItemCount) {
				mygridlistener.DownLunched(totalItemCount);
			}
		}
	}

	@Override
	public void onScrollStateChanged(AbsListView view, int scrollState) {

	}

}
