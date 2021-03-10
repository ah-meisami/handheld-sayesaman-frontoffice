package com.example.sktheme;

import java.util.ArrayList;

import com.ara.filter.Filter;
import com.ara.filter.filterView;
import com.example.sktheme.R;
import com.example.sktheme.R.id;
import com.example.sktheme.R.layout;
import com.example.sktheme.R.style;

import dataBase.DBUtil.TblFields;
import dataBase.ProductGroup;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;


public class SupplierFilterView extends customDialog implements android.view.View.OnClickListener,com.example.sktheme.ribbon.horizentalriboonholder.showallListener{
	ArrayList<cartItem> items = new ArrayList<cartItem>();
	ViewGroup owner;
	private Filter f;
	int groupId=-1;
	private rlayout maincontent;
	public SupplierFilterView(Context context,int custid,int groupId1,String caption) {
		super(context, R.style.mydialogstyle);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(LayoutParams.FLAG_FULLSCREEN,
				LayoutParams.FLAG_FULLSCREEN);
		setContentView(R.layout.customdialog_view);
		this.groupId=groupId1;
		f=new Filter();
		f.addfilter(custid, TblFields.SupplierID);
//		RelativeLayout rl=new RelativeLayout(getContext());
		maincontent=new rlayout(getContext());
//		rl.setId(R.id.dialog_parent);
		((ViewGroup)findViewById(R.id.rtl_layout_content)).addView(maincontent);
		RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) maincontent.getLayoutParams();
		params.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
		params.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
		params.addRule(RelativeLayout.ALIGN_TOP);
		params.addRule(RelativeLayout.ALIGN_BOTTOM);
		findViewById(R.id.btn_back).setOnClickListener(this);
		((TextView)findViewById(R.id.txtview_header)).setText(caption);
		((TextView)findViewById(R.id.txtview_header)).setTypeface(statics.getTitrfontfac());
		((TextView)findViewById(R.id.txtview_header)).setTextSize(20);
	}
	public class rlayout extends RelativeLayout{
		boolean bbb=true;
		@Override
		protected void onLayout(boolean changed, int l, int t, int r, int b) {
			super.onLayout(changed, l, t, r, b);
			if(bbb&&getMeasuredWidth()!=0){
				bbb=!bbb;
				removeAllViews();
				if(groupId!=-1){
					v=new showall_layout(getContext(), f);
					((showall_layout)v).setparentgroup(groupId+"",
							getMeasuredWidth(), -1);
					}
					else{
						v=new verticalRibbon(getContext(),f);	
						((verticalRibbon)v).setgroup(groupId+"", SupplierFilterView.this,false);
					}
				RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) v.getLayoutParams();
				params.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
				params.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
				params.addRule(RelativeLayout.ALIGN_TOP);
				params.addRule(RelativeLayout.ALIGN_BOTTOM);
				invalidate();
				addView(v);
			}
		}
		ViewGroup v;
		public rlayout(Context context) {
			super(context);
		}
	}
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_back:
			dismiss();
			break;

		default:
			break;
		}
		
	}
	@Override
	public void showallSelected(ProductGroup selected) {
		maincontent.removeAllViews();
		ViewGroup v;
		if(selected.getGrpID()!=-1){
			v=new showall_layout(getContext(), f);
			((showall_layout)v).setparentgroup(selected.getGrpID()+"",
					maincontent.getMeasuredWidth(), -1);
			}
			else{
				v=new verticalRibbon(getContext(),f);	
				((verticalRibbon)v).setgroup(selected.getGrpID()+"", SupplierFilterView.this,false);
			}
		RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) v.getLayoutParams();
		params.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
		params.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
		params.addRule(RelativeLayout.ALIGN_TOP);
		params.addRule(RelativeLayout.ALIGN_BOTTOM);
		
		maincontent.addView(v);
		maincontent.invalidate();
	}
	@Override
	public void showSupplierSelected(ProductGroup selected) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void showBrandSelected(ProductGroup selected) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void showNewsSelected(ProductGroup selected) {
		// TODO Auto-generated method stub
		
	}
	
}
