package com.example.sktheme.ribbon;

import java.util.ArrayList;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.example.sktheme.R;
import com.example.sktheme.horizontalRibbon;
import com.example.sktheme.horizontalRibbonParent;
import com.example.sktheme.updateable;
import com.example.sktheme.ribbon.horizentalriboonholder.showallListener;
import com.example.sktheme.showall_layout;

import dataBase.DBUtil;
import dataBase.Limit;
import dataBase.Product;
import dataBase.ProductGroup;

public class horizentalriboonholderIngroup extends horizontalRibbonParent implements android.view.View.OnClickListener,updateable{

	ProductGroup pgroup;
	Product product;
	public boolean getchilds=true;
	
	private ArrayList<showallListener> showAllListener=new ArrayList<showallListener>();
	public horizentalriboonholderIngroup(Context context, AttributeSet attrs) {
		super(context, attrs);
		dothings();
		
	}

	public horizentalriboonholderIngroup(Context context, ProductGroup pg,Product product, boolean getchilds) {
		super(context);
		// TODO Auto-generated constructor stub
		this.getchilds=getchilds;
		this.pgroup=pg;
		this.product=product;
		dothings();
	}
	public horizentalriboonholderIngroup(Context context, ProductGroup pg,Product product,
			boolean b,
			com.example.sktheme.paintedProductLayout.ProductClicked productclicked) {
		super(context,productclicked);
		// TODO Auto-generated constructor stub
		this.getchilds=b;
		this.pgroup=pg;
		this.product=product;
		dothings();
		// TODO Auto-generated constructor stub
	}
	private void dothings() {
		ArrayList<horizentalriboonholder> productGrplist = new ArrayList<horizentalriboonholder>();
		ArrayList<Limit> limitsArray = new ArrayList<Limit>();
		limitsArray.add(new Limit(dataBase.DBUtil.TblFields.GrpParentID,
				pgroup.getGrpID()+"", DBUtil.LimitType.ItIs,DBUtil.LimitTail.AND));
		ArrayList<ProductGroup> result = new ProductGroup().getAll(null,limitsArray,null,null);
		ArrayList<Limit> limits=new ArrayList<Limit>();
		limits.add(new Limit(dataBase.DBUtil.TblFields.ProdGrpID, pgroup.getGrpID()+"",DBUtil.LimitType.ItIs,DBUtil.LimitTail.OR));
		limits.add(new Limit(dataBase.DBUtil.TblFields.ProdID,product.getProdID()+"",DBUtil.LimitType.ItIsNot,DBUtil.LimitTail.AND));
		if(getchilds)
		for(int i=0;i<result.size();i++)
			limits.add(new Limit(dataBase.DBUtil.TblFields.ProdGrpID, result.get(i).getGrpID()+"",DBUtil.LimitType.ItIs,DBUtil.LimitTail.OR));
		 ArrayList<dataBase.Product> p=new dataBase.Product().getAll(null,limits,null,null);
		 if(p.size()==0){
			removeAllViews();
		 }
		 else{
		getHeader().setText(pgroup.getGrpNamehtml());
		((horizontalribbonmaker)getHorezontalR()).setparent(p,getPclick());
		 }
		 try{
//		 findViewById(R.id.hribbon_btn_showall).setVisibility(GONE);
//		 findViewById(R.id.hribbon_btn_news).setVisibility(GONE);
//		 findViewById(R.id.hribbon_btn_supplier).setVisibility(GONE);
//		 findViewById(R.id.hribbon_btn_brand).setVisibility(GONE);
//		 findViewById(R.id.hribbon_btn_shoping_help).setVisibility(GONE);
//		 findViewById(R.id.footer_hriboon).setVisibility(GONE);
			findViewById(R.id.buttons_layout).setVisibility(GONE); 
		((TextView)findViewById(R.id.txt_horizontal_ribbon_caption)).setVisibility(GONE);
		
		 }catch(Exception ex){}
	}
	public void addShowAllListener(showallListener showAllListener) {
		this.showAllListener.add(showAllListener);
	}
	public void removeShowAllListener(showallListener showAllListener) {
		this.showAllListener.add(showAllListener);
	}
	@Override
	public void onClick(View v) {
		if(pgroup!=null)
		for (int i = 0; i < showAllListener.size(); i++) {
			showAllListener.get(i).showallSelected(pgroup);
		}
	}
	@Override
	public horizontalRibbon getHorezontalR() {
		// TODO Auto-generated method stub
		return super.getHorezontalR();
	}

	@Override
	public void updateData() {
	}
}
