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
import android.graphics.drawable.ColorDrawable;
import android.view.*;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.ScrollView;

import greendroid.widget.QuickAction;

import java.util.ArrayList;
import java.util.List;

import com.example.sktheme.R;
import com.example.sktheme.statics;

/**
 * Abstraction of a {@link greendroid.widget.QuickAction} wrapper. A QuickActionWidget is
 * displayed on top of the user interface (it overlaps all UI elements but the
 * notification bar). Clients may listen to user actions using a
 * {@link OnQuickActionClickListener} .
 *
 * @author Benjamin Fellous
 * @author Cyril Mottier
 */
public abstract class AraPopup extends PopupWindow {

    private static final int MEASURE_AND_LAYOUT_DONE = 1 << 1;

    private final int[] mLocation = new int[2];
    private final Rect mRect = new Rect();

    private int mPrivateFlags;

    private Context mContext;

    private boolean mDismissOnClick;
    private int mArrowOffsetY;

    private int mPopupY;
    private int mPopupX;
    private boolean mIsOnTop;

    private int mScreenHeight;
    private int mScreenWidth;
    private boolean mIsDirty;

    private OnQuickActionClickListener mOnQuickActionClickListener;
    private AraPopupItem mQuickActions;

    /**
     * Interface that may be used to listen to clicks on quick actions.
     *
     * @author Benjamin Fellous
     * @author Cyril Mottier
     */
    public static interface OnQuickActionClickListener {
        /**
         * Clients may implement this method to be notified of a click on a
         * particular quick action.
         *
         * @param position Position of the quick action that have been clicked.
         */
        void onQuickActionClicked(AraPopup widget, int position);
    }

    /**
     * Creates a new QuickActionWidget for the given context.
     *
     * @param context The context in which the QuickActionWidget is running in
     */
    public AraPopup(Context context) {
        super(context);

        mContext = context;

        initializeDefault();

        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setWidth(WindowManager.LayoutParams.WRAP_CONTENT);
        setHeight(WindowManager.LayoutParams.WRAP_CONTENT);

        final WindowManager windowManager = (WindowManager) mContext.getSystemService(Context.WINDOW_SERVICE);
        mScreenWidth = windowManager.getDefaultDisplay().getWidth();
        mScreenHeight = windowManager.getDefaultDisplay().getHeight();
    }

    /**
     * Equivalent to {@link android.widget.PopupWindow#setContentView(android.view.View)} but with a layout
     * identifier.
     *
     * @param layoutId The layout identifier of the view to use.
     */
    public void setContentView(int layoutId) {
        View contentView = LayoutInflater.from(mContext).inflate(layoutId, null);
        contentView.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        setContentView(contentView);
    }

    private void initializeDefault() {
        mDismissOnClick = true;
        mArrowOffsetY = mContext.getResources().getDimensionPixelSize(R.dimen.gd_arrow_offset);
    }

    /**
     * Returns the arrow offset for the Y axis.
     *
     * @see {@link #setArrowOffsetY(int)}
     * @return The arrow offset.
     */
    public int getArrowOffsetY() {
        return mArrowOffsetY;
    }

    /**
     * Sets the arrow offset to a new value. Setting an arrow offset may be
     * particular useful to warn which view the QuickActionWidget is related to.
     * By setting a positive offset, the arrow will overlap the view given by
     * {@link #show(android.view.View)}. The default value is 5dp.
     *
     * @param offsetY The offset for the Y axis
     */
    public void setArrowOffsetY(int offsetY) {
        mArrowOffsetY = offsetY;
    }

    /**
     * Returns the width of the screen.
     *
     * @return The width of the screen
     */
    protected int getScreenWidth() {
        return mScreenWidth;
    }

    /**
     * Returns the height of the screen.
     *
     * @return The height of the screen
     */
    protected int getScreenHeight() {
        return mScreenHeight;
    }

    /**
     * By default, a {@link AraPopup} is dismissed once the user
     * clicked on a {@link greendroid.widget.QuickAction}. This behavior can be changed using this
     * method.
     *
     * @param dismissOnClick True if you want the {@link AraPopup} to
     *            be dismissed on click else false.
     */
    public void setDismissOnClick(boolean dismissOnClick) {
        mDismissOnClick = dismissOnClick;
    }

    public boolean getDismissOnClick() {
        return mDismissOnClick;
    }

    /**
     * @param listener
     */
    public void setOnQuickActionClickListener(OnQuickActionClickListener listener) {
        mOnQuickActionClickListener = listener;
    }
    /**
     * Add a new QuickAction to this {@link AraPopup}. Adding a new
     * {@link greendroid.widget.QuickAction} while the {@link AraPopup} is currently
     * being shown does nothing. The new {@link greendroid.widget.QuickAction} will be displayed
     * on the next call to {@link #show(android.view.View)}.
     *
     * @param action The new {@link greendroid.widget.QuickAction} to add
     */
    public void addQuickAction(AraPopupItem action) {
    	mQuickActions=action;
    }
    /**
     * Removes all {@link greendroid.widget.QuickAction} from this {@link AraPopup}.
     */

    /**
     * Call that method to display the {@link AraPopup} anchored to the
     * given view.
     *
     * @param anchor The view the {@link AraPopup} will be anchored to.
     */
    public void show(View anchor) {
        final View contentView = getContentView();
        if (contentView == null) {
            throw new IllegalStateException("You need to set the content view using the setContentView method");
        }
        // Replaces the background of the popup with a cleared background
        setBackgroundDrawable(statics.getContext().getResources().getDrawable(R.drawable.gd_ara_tarnsparent_margin));
        final int[] loc = mLocation;
        anchor.getLocationOnScreen(loc);
        mRect.set(loc[0], loc[1], loc[0] + anchor.getWidth(), loc[1] + anchor.getHeight());
        populateQuickActions(mQuickActions);
        onMeasureAndLayout(mRect, contentView);
        if ((mPrivateFlags & MEASURE_AND_LAYOUT_DONE) != MEASURE_AND_LAYOUT_DONE) {
            throw new IllegalStateException("onMeasureAndLayout() did not set the widget specification by calling"
                    + " setWidgetSpecs()");
        }
        showArrow();
        prepareAnimationStyle();
        View v=statics.getContentTop();
        if(v==null){
        	v=anchor;
        }
        showAtLocation(v, Gravity.NO_GRAVITY,mPopupX, mPopupY);
//        statics.getActivity().getWindow().getDecorView())
        //((WindowManager.LayoutParams)getContentView().getLayoutParams()).token=anchor.getApplicationWindowToken();
    }
    protected void onClearQuickActions() {
    }
    protected abstract void populateQuickActions(AraPopupItem quickActions);
    protected abstract void onMeasureAndLayout(Rect anchorRect, View contentView);
    protected void setWidgetSpecs(int popupY, boolean isOnTop) {
        mPopupY = popupY;
        mIsOnTop = isOnTop;
        mPrivateFlags |= MEASURE_AND_LAYOUT_DONE;
    }
RelativeLayout aara;
RelativeLayout ara_sc;
    private void showArrow() {
    	aara=(RelativeLayout) getContentView().findViewById(R.id.ara_layout);
    	ara_sc=(RelativeLayout) getContentView().findViewById(R.id.gdi_grid);
        final View contentView = getContentView();
        final int arrowId = mIsOnTop ? R.id.gdi_arrow_down : R.id.gdi_arrow_up;
        final View arrow = contentView.findViewById(arrowId);
        final View arrowUp = contentView.findViewById(R.id.gdi_arrow_up);
        final View arrowDown = contentView.findViewById(R.id.gdi_arrow_down);

        if (arrowId == R.id.gdi_arrow_up) {
            arrowUp.setVisibility(View.VISIBLE);
            arrowDown.setVisibility(View.INVISIBLE);
        } else if (arrowId == R.id.gdi_arrow_down) {
            arrowUp.setVisibility(View.INVISIBLE);
            arrowDown.setVisibility(View.VISIBLE);
        }
        ara_sc.measure(0, 0);
        ara_sc.getMeasuredWidth();
        int wara=aara.getMeasuredWidth();
        mPopupX=mRect.centerX()-wara/2;
        if(mPopupX<0){
        	mPopupX=0;
        }
        else
        	if(mPopupX+wara>mScreenWidth){
        		mPopupX=mScreenWidth-wara;
        	}
        ViewGroup.MarginLayoutParams param = (ViewGroup.MarginLayoutParams) arrow.getLayoutParams();
        param.leftMargin = mRect.centerX() - (arrow.getMeasuredWidth()) / 2-mPopupX;
//        param = (ViewGroup.MarginLayoutParams) ((ViewGroup)contentView.findViewById(R.id.ara_layout)).getLayoutParams();
//        param.leftMargin = mRect.centerX() - (arrow.getMeasuredWidth()) / 2;
        
    }
    private void prepareAnimationStyle() {
        final int screenWidth = mScreenWidth;
        final boolean onTop = mIsOnTop;
        final int arrowPointX = mRect.centerX();
        if (arrowPointX <= screenWidth / 4) {
            setAnimationStyle(onTop ? R.style.GreenDroid_Animation_PopUp_Left
                    : R.style.GreenDroid_Animation_PopDown_Left);
        } else if (arrowPointX >= 3 * screenWidth / 4) {
            setAnimationStyle(onTop ? R.style.GreenDroid_Animation_PopUp_Right
                    : R.style.GreenDroid_Animation_PopDown_Right);
        } else 
        {
            setAnimationStyle(onTop ? R.style.GreenDroid_Animation_PopUp_Center
                    : R.style.GreenDroid_Animation_PopDown_Center);
        }
    }

    protected Context getContext() {
        return mContext;
    }

    protected OnQuickActionClickListener getOnQuickActionClickListener() {
        return mOnQuickActionClickListener;
    }
}
