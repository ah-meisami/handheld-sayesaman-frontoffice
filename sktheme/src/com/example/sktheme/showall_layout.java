package com.example.sktheme;

import java.util.ArrayList;

import com.ara.filter.Filter;
import com.example.sktheme.ribbon.horizentalriboonholder;

import dataBase.DBUtil;
import dataBase.Limit;
import dataBase.Product;
import dataBase.ProductGroup;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.GridLayoutAnimationController;
import android.widget.BaseAdapter;
import android.widget.ViewFlipper;

public class showall_layout extends ViewFlipper implements pager.pagerPagingListener,updateable{
	pager grd1;
	pager grd2;
	int index=0;
	int allobjects=-1;
	ArrayList<pager> pages=new ArrayList<pager>();
	private String parentgroupId;
	int count;
	
	private Filter myfilter;
	public showall_layout(Context context) {
		super(context);
		dothings();
	}
	public showall_layout(Context context,Filter myfilter) {
		super(context);
		this.setMyfilter(myfilter);
		dothings();
	}
	public void dothings(){
		setLayoutParams(new android.widget.RelativeLayout.LayoutParams(android.widget.RelativeLayout.LayoutParams.FILL_PARENT, android.widget.RelativeLayout.LayoutParams.FILL_PARENT));
		android.widget.RelativeLayout.LayoutParams p=(android.widget.RelativeLayout.LayoutParams) getLayoutParams();
		p.setMargins(10, 10,10,10);
		grd1=new pager(getContext());
		grd2=new pager(getContext());
		addView(grd1);
		addView(grd2);
		grd1.addpagerPagelistener(this);
		GridLayoutAnimationController ga=new GridLayoutAnimationController(AnimationUtils.loadAnimation(getContext(), R.anim.fade));
		ga.setDirection(GridLayoutAnimationController.DIRECTION_RIGHT_TO_LEFT|GridLayoutAnimationController.DIRECTION_TOP_TO_BOTTOM);
		grd1.getGrid().setLayoutAnimation(ga);
		grd2.getGrid().setLayoutAnimation(ga);
		grd2.addpagerPagelistener(this);
		pages.add(grd1);
		pages.add(grd2);
	}
	@Override
	public void openLastPage(pager p) {
		if(index==0){
			setDisplayedChild(1);
			index=1;
		}
		else{
			setDisplayedChild(0);
			index=0;
		}
	}
	@Override
	public void openNextPage(pager p) {
		if(index==0){
			setDisplayedChild(1);
			index=1;
		}
		else{
			setDisplayedChild(0);
			index=0;
		}
	}
	public final int MAXITEMS=52;
	adapter adap;
	String pgroupId;
	int w, h;
	public void setparentgroup(String pgroupId,int w,int h){
		this.w=w;
		this.h=h;
		this.pgroupId=pgroupId;
		this.setParentgroupId(pgroupId);
		pager p1=(pager) getChildAt(index);
		adap=new adapter(pgroupId, MAXITEMS,w/pages.get(index).NUMCULMNS,h);
		p1.setAdapter(adap);
	}
	public void setparentgroup(){
		pager p1=(pager) getChildAt(index);
		 p1.setAdapter(adap);
	}
	public pager getpager(){
		return (pager) getChildAt(index);
	}
	public class adapter extends BaseAdapter{
		ArrayList<Product> products; 
		paintedProductLayout[] playout;
		public adapter(String p,int max,int w,int h) {
			ArrayList<horizentalriboonholder> productGrplist = new ArrayList<horizentalriboonholder>();
			ArrayList<Limit> limitsArray = new ArrayList<Limit>();
			limitsArray.add(new Limit(dataBase.DBUtil.TblFields.GrpParentID,
					p+"", DBUtil.LimitType.ItIs,DBUtil.LimitTail.AND));
			ArrayList<ProductGroup> result = new ProductGroup().getAll(null,limitsArray,null,null);
			ArrayList<Limit> limits=new ArrayList<Limit>();
			limits.add(new Limit(dataBase.DBUtil.TblFields.ProdGrpID, p+"",DBUtil.LimitType.ItIs,DBUtil.LimitTail.OR));
			getMyfilter().addFilterToLimit(limits);
			for(int i=0;i<result.size();i++)
				limits.add(new Limit(dataBase.DBUtil.TblFields.ProdGrpID, result.get(i).getGrpID()+"",DBUtil.LimitType.ItIs,DBUtil.LimitTail.OR));
			products=new dataBase.Product().getAll(null,limits,DBUtil.LimitNum(0, max),null);
			playout=new paintedProductLayout[products.size()];
			for (int i = 0; i < playout.length; i++) {
				playout[i]=new paintedProductLayout(products.get(i),getContext(),w,h);
			}
		}
		public int getCount() {
			return playout.length;
		}

		@Override
		public Object getItem(int position) {
			return playout[position];
		}

		@Override
		public long getItemId(int position) {
			return playout[position].getId();
		}
		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			return playout[position];
		}
	}
	public BaseAdapter getadapter() {
		return adap;
	}
	public String getParentgroupId() {
		return parentgroupId;
	}
	public void setParentgroupId(String parentgroupId) {
		this.parentgroupId = parentgroupId;
	}
	@Override
	public void updateData() {
		statics.getHandler().post(new Runnable(
				) {
			
			@Override
			public void run() {
				if(pgroupId!=null)
					setparentgroup(pgroupId, w, h);
			}
		});
		
	}
	public Filter getMyfilter() {
		if(myfilter==null)
			setMyfilter(statics.getMyfilter());
		return myfilter;
	}
	public void setMyfilter(Filter myfilter) {
		this.myfilter = myfilter;
	}
}
