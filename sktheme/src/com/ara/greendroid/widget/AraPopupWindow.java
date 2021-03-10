/*
 * Copyright (C) 2010 Cyril Mottier (http://www.cyrilmottier.com)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.ara.greendroid.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.WindowManager.LayoutParams;
import android.webkit.WebView.FindListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.util.List;

import com.example.sktheme.R;
import com.example.sktheme.statics;

/**
 * A {@link AraPopupWindow} is an implementation of a {@link AraPopup}
 * that displays {@link greendroid.widget.QuickAction}s in a grid manner. This is usually used to create
 * a shortcut to jump between different type of information on screen.
 * 
 * @author Benjamin Fellous
 * @author Cyril Mottier
 */
public class AraPopupWindow extends AraPopup {

    private RelativeLayout mGridView;
    private ScrollView mGridView1;
    RelativeLayout ara;
    public AraPopupWindow(Context context) {
        super(context);
        setContentView(R.layout.gd_quick_action_ara);
        final View v = getContentView();
        mGridView = (RelativeLayout) v.findViewById(R.id.gdi_grid);
        mGridView1 = (ScrollView) v.findViewById(R.id.gdi_grid1);
        ara=(RelativeLayout) v.findViewById(R.id.ara_layout);
    }
    boolean showed=false;
    @Override
    protected void populateQuickActions( AraPopupItem  quickAction) {
    	if(!showed&&quickAction!=null){
    		showed=!showed;
			mGridView.addView(quickAction.getV());
        	((TextView)getContentView().findViewById(R.id.gd_txt_header)).setText(quickAction.header);
        	ara.measure(0,0);
        	setWidth(ara.getMeasuredWidth()+ara.getPaddingLeft()+ara.getPaddingRight());
        	ara.getLayoutParams().width=ara.getMeasuredWidth()+ara.getPaddingLeft()+ara.getPaddingRight();
        	try{
        	quickAction.getV().findViewById(R.id.popup_dismiss).setOnClickListener(new android.view.View.OnClickListener() {
				@Override
				public void onClick(View v) {
					dismiss();
				}
			});
        	}catch(Exception ex){}
    	}
    }
    @Override
    protected void onMeasureAndLayout(Rect anchorRect, View contentView) {
        contentView.setLayoutParams(new GridView.LayoutParams(GridView.LayoutParams.WRAP_CONTENT, GridView.LayoutParams.WRAP_CONTENT));
        int popupY;
		boolean onTop;
        contentView.measure(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        int rootHeight = contentView.getMeasuredHeight();
        contentView.getMeasuredWidth();
        int offsetY = getArrowOffsetY();
        int dyTop = anchorRect.top;
        int dyBottom = getScreenHeight() - anchorRect.bottom;
        onTop = (dyTop > dyBottom);
        popupY = (onTop) ? anchorRect.top - rootHeight + offsetY : anchorRect.bottom - offsetY;
        WindowManager windowManager = (WindowManager) statics.getActivity().getSystemService(Context.WINDOW_SERVICE);
        int mScreenHeight = windowManager.getDefaultDisplay().getHeight();
        if(popupY<0){
//        	setHeight(rootHeight-Math.abs(popupY));
        	
        	mGridView1.getLayoutParams().height=mGridView1.getMeasuredHeight()-Math.abs(popupY);
        	contentView.measure(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
        	rootHeight = contentView.getMeasuredHeight();
        	popupY=0;
        }else
        if(onTop&&rootHeight>anchorRect.bottom){
        	mGridView1.getLayoutParams().height=anchorRect.top+5;
        	contentView.measure(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
        }
        if(mScreenHeight-popupY<rootHeight&&!onTop){
//        	setHeight(rootHeight-Math.abs(popupY));
        	mGridView1.getLayoutParams().height=mGridView1.getMeasuredHeight()-Math.abs((mScreenHeight-popupY)-rootHeight);
        	contentView.measure(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
        }
        setWidgetSpecs(popupY, onTop);
    }

    private OnItemClickListener mInternalItemClickListener = new OnItemClickListener() {
        public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
            getOnQuickActionClickListener().onQuickActionClicked(AraPopupWindow.this, position);
            if (getDismissOnClick()) {
                dismiss();
            }
        }
    };

}
