package com.example.sktheme;

import java.util.ArrayList;

import com.ara.filter.Filter;
import com.example.sktheme.mainScreens.homeScreen;
import com.example.sktheme.ribbon.horizentalriboonholder;
import com.example.sktheme.ribbon.horizentalriboonholder.showallListener;

import dataBase.DBUtil;
import dataBase.Limit;
import dataBase.ProductGroup;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;

public class verticalRibbon extends ScrollView implements updateable{
	
	public verticalRibbon(Context context) {
		super(context);
		dojobs();
	}
	Filter myfilter;
	public verticalRibbon(Context context,Filter filter) {
		super(context);
		this.myfilter=filter;
		dojobs();
	}
	public verticalRibbon(Context context, AttributeSet attrs) {
		super(context, attrs);
		dojobs();
	}
	final void dojobs() {
		
		// inflate(getContext(), R.layout.vertical_ribbon, null);
		// LayoutInflater inflater = (LayoutInflater) getContext()
		// .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		// inflater.inflate(R.layout.vertical_ribbon,this, true);
		LinearLayout l = new LinearLayout(getContext());
		l.setOrientation(LinearLayout.VERTICAL);
		addView(l);
		// l.setLayoutParams(new
		setLayoutParams(new android.widget.RelativeLayout.LayoutParams(
				android.widget.RelativeLayout.LayoutParams.FILL_PARENT,
				android.widget.RelativeLayout.LayoutParams.FILL_PARENT));
		l.setId(R.id.v_riboon_layout);
		// l.setBackgroundColor(0xff0000ff);
		// ((android.widget.RelativeLayout.LayoutParams)l.getLayoutParams()).addRule(android.widget.RelativeLayout.ALIGN_BOTTOM);
		// ((android.widget.RelativeLayout.LayoutParams)l.getLayoutParams()).addRule(android.widget.RelativeLayout.ALIGN_LEFT);
		// ((android.widget.RelativeLayout.LayoutParams)l.getLayoutParams()).addRule(android.widget.RelativeLayout.ALIGN_RIGHT);
		// ((android.widget.RelativeLayout.LayoutParams)l.getLayoutParams()).addRule(android.widget.RelativeLayout.ALIGN_TOP);
	}
	showallListener homescreen;
	String groupId;
	boolean showbuttons=true;
	public void setgroup(String groupId, showallListener homescreen,boolean showbuttons) {
		this.showbuttons=showbuttons;
		this.homescreen=homescreen;
		this.groupId=groupId;
//		Runnable r = new Runnable() {
//			@Override
//			public void run() {				
//				LinearLayout l = (LinearLayout) findViewById(R.id.v_riboon_layout);
//				l.removeAllViews();
//			}
//		};
//			statics.getHandler().post(r);
		ProductGroup pg = new ProductGroup();
		pg.setGrpID(Integer.parseInt(groupId));
		try {
			pg.load();
		} catch (Exception ex) {			
		}

		ArrayList<horizentalriboonholder> hribbonlist = new ArrayList<horizentalriboonholder>();
		ArrayList<Limit> limitsArray = new ArrayList<Limit>();
		if (pg.getGrpID() == -1)
			limitsArray.add(new Limit(dataBase.DBUtil.TblFields.GrpParentID,
					groupId, DBUtil.LimitType.ItIs, DBUtil.LimitTail.AND));
		else {
			limitsArray.add(new Limit(dataBase.DBUtil.TblFields.GrpPath, pg
					.getGrpPath() + "-", DBUtil.LimitType.HeadLike,
					DBUtil.LimitTail.AND));
			// //////////////////////like first
		}
		ArrayList<ProductGroup> result = new ProductGroup().getAll(null,
				limitsArray, null, null);
		if (pg.getGrpID() != -1) {
			horizentalriboonholder h = new horizentalriboonholder(getContext(),
					pg, false,myfilter);
			h.addShowAllListener(homescreen);
			hribbonlist.add(h);
		}
		for (int i = 0; i < result.size() && i < result.size(); i++) {
			horizentalriboonholder h = new horizentalriboonholder(getContext(),
					result.get(i), true,myfilter);
			h.addShowAllListener(homescreen);
			if(!showbuttons)
				h.setInvisibleButtons();
			hribbonlist.add(h);
		}
		// LinearLayout l=(LinearLayout) findViewById(R.id.v_riboon_layout);
		// l.removeAllViews();
		// for(int i=0;i<result.size();i++){
		// l.addView((horizentalriboonholder) result.get(i));
		// }
		Runnable r = new dographicaljobs(hribbonlist);
		statics.getHandler().post(r);
	}

	public class dographicaljobs implements Runnable {
		ArrayList<?> hArrayList;
		public dographicaljobs(ArrayList<?> arrayList) {			
			hArrayList = arrayList;
		}
		@Override
		public void run() {
			LinearLayout l = (LinearLayout) findViewById(R.id.v_riboon_layout);
			l.removeAllViews();
			try {
				for (int i = 0; i < hArrayList.size(); i++) {
					l.addView((horizentalriboonholder) hArrayList.get(i));
				}
			} catch (OutOfMemoryError ex) {
			}
		}
	}

	@Override
	public void updateData() {
		if(groupId!=null)
		setgroup(groupId, homescreen,showbuttons);
		
	}

}
