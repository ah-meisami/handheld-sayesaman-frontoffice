package com.example.sktheme.ribbon;

import java.util.ArrayList;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;

import com.ara.filter.Filter;
import com.example.sktheme.R;
import com.example.sktheme.horizontalRibbonParent;
import com.example.sktheme.showall_layout;
import com.example.sktheme.statics;

import dataBase.DBUtil;
import dataBase.Limit;
import dataBase.ProductGroup;

public class horizentalriboonholder extends horizontalRibbonParent implements
		android.view.View.OnClickListener {
	ProductGroup pgroup;
	public boolean getchilds = true;
	private ArrayList<showallListener> showAllListener = new ArrayList<horizentalriboonholder.showallListener>();

	public horizentalriboonholder(Context context, AttributeSet attrs) {
		super(context, attrs);
		dothings();

	}

	public horizentalriboonholder(Context context, ProductGroup pg,
			boolean getchilds,Filter myfilter) {
		super(context);
		// TODO Auto-generated constructor stub
		this.getchilds = getchilds;
		this.pgroup = pg;
		this.myfilter=myfilter;
		dothings();
	}
	Filter myfilter;
	private void dothings() {
		
		if(myfilter==null)
			myfilter=statics.getMyfilter();
		findViewById(R.id.hribbon_btn_showall).setOnClickListener(this);
		findViewById(R.id.hribbon_btn_supplier).setOnClickListener(this);
		findViewById(R.id.hribbon_btn_brand).setOnClickListener(this);
		findViewById(R.id.hribbon_btn_news).setOnClickListener(this);
		findViewById(R.id.hribbon_btn_shoping_help).setOnClickListener(this);
		ArrayList<Limit> limitsArray = new ArrayList<Limit>();
		limitsArray.add(new Limit(dataBase.DBUtil.TblFields.GrpParentID, pgroup
				.getGrpID() + "", DBUtil.LimitType.ItIs, DBUtil.LimitTail.AND));
		ArrayList<ProductGroup> result = new ProductGroup().getAll(null,
				limitsArray, null, null);
		ArrayList<Limit> limits = new ArrayList<Limit>();
		limits.add(new Limit(dataBase.DBUtil.TblFields.ProdGrpID, pgroup
				.getGrpID() + "", DBUtil.LimitType.ItIs, DBUtil.LimitTail.OR));
		myfilter.addFilterToLimit(limits);
		if (getchilds)
			for (int i = 0; i < result.size(); i++)
				limits.add(new Limit(dataBase.DBUtil.TblFields.ProdGrpID,
						result.get(i).getGrpID() + "", DBUtil.LimitType.ItIs,
						DBUtil.LimitTail.OR));
		ArrayList<dataBase.Product> p = new dataBase.Product().getAll(null,
				limits, DBUtil.LimitNum(0, 20), null);
		if (p.size() == 0) {
			removeAllViews();
		} else {
			getHeader().setText(pgroup.getGrpNamehtml());
			((horizontalribbonmaker) getHorezontalR()).setparent(p);
		}
	}
	public void setInvisibleButtons() {
		try{
//			findViewById(R.id.hribbon_btn_showall).setVisibility(GONE);
			findViewById(R.id.hribbon_btn_supplier).setVisibility(GONE);
			findViewById(R.id.hribbon_btn_brand).setVisibility(GONE);
			findViewById(R.id.hribbon_btn_news).setVisibility(GONE);
			findViewById(R.id.hribbon_btn_shoping_help).setVisibility(GONE);
			}catch(Exception ex){
				Log.e(getClass().getName(),"");
			}
	}
	public void addShowAllListener(showallListener showAllListener) {
		if(showAllListener!=null)
		this.showAllListener.add(showAllListener);
	}

	public void removeShowAllListener(showallListener showAllListener) {
		this.showAllListener.add(showAllListener);
	}
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.hribbon_btn_showall:
			if (pgroup != null)
				for (int i = 0; i < showAllListener.size(); i++) {
					showAllListener.get(i).showallSelected(pgroup);
				}
			break;
		case R.id.hribbon_btn_supplier:
			if (pgroup != null)
				for (int i = 0; i < showAllListener.size(); i++) {
					showAllListener.get(i).showSupplierSelected(pgroup);
				}
			break;
			case R.id.hribbon_btn_brand:
			if (pgroup != null)
				for (int i = 0; i < showAllListener.size(); i++) {
					showAllListener.get(i).showBrandSelected(pgroup);
				}
			break;
			case R.id.hribbon_btn_news:
			if (pgroup != null)
				for (int i = 0; i < showAllListener.size(); i++) {
					showAllListener.get(i).showNewsSelected(pgroup);
				}
			break;
		default:
			break;
		}
	}
	public interface showallListener {
		public void showallSelected(ProductGroup selected);
		public void showSupplierSelected(ProductGroup selected);
		public void showBrandSelected(ProductGroup selected);
		public void showNewsSelected(ProductGroup selected);
	}
}
