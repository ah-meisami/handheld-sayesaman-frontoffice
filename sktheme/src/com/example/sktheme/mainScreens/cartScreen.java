package com.example.sktheme.mainScreens;

import java.util.ArrayList;

import com.example.sktheme.BrandItem;
import com.example.sktheme.R;
import com.example.sktheme.SupplierItem;
import com.example.sktheme.cart;
import com.example.sktheme.cartItem;
import com.example.sktheme.cartItem.CartitemchangeListener;
import com.example.sktheme.customDialog;
import com.example.sktheme.R.id;
import com.example.sktheme.R.layout;
import com.example.sktheme.R.style;
import com.example.sktheme.statics;
import com.example.sktheme.updateable;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class cartScreen extends customDialog implements
		android.view.View.OnClickListener, CartitemchangeListener {
	;
	ArrayList<cartItem> items = new ArrayList<cartItem>();
	ArrayList<cartItem> selectedCartItems = new ArrayList<cartItem>();
	ViewGroup owner;
	public cartScreen(Context context,ViewGroup owner) {
		super(context, R.style.mydialogstyle);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(LayoutParams.FLAG_FULLSCREEN,
				LayoutParams.FLAG_FULLSCREEN);
		this.owner=owner;
		getWindow().setBackgroundDrawable(
				new ColorDrawable(android.graphics.Color.TRANSPARENT));
		setContentView(R.layout.cart_view);
		// dialog.setTitle("کالای انتخابی");
		cart mycart = statics.getMycart();
		if (mycart.getcount() == 0) {
			View.inflate(getContext(),R.layout.empty_cart,((ViewGroup) findViewById(R.id.rlt_l_cart_list_view)));
		} else {
			for (int i = 0; i < mycart.getcount(); i++) {
				cartItem c = new cartItem(getContext(), mycart.getproduct(i));
				c.addListeners(this);
				items.add(c);
				((LinearLayout) findViewById(R.id.lin_l_cart_list_view))
						.addView(c);
			}
		}
		findViewById(R.id.dialog_parent).requestFocus();
		findViewById(R.id.btn_cart_screen_back).setOnClickListener(this);
		findViewById(R.id.btn_remove_all_cartscreen).setOnClickListener(this);
		findViewById(R.id.cart_view_btn_select_supplier).setOnClickListener(this);
		TextView t = (TextView) findViewById(R.id.txtview_header_cartscreen);
		t.setTypeface(statics.getTitrfontfac());
		t.setTextSize(30);
		t = (TextView) findViewById(R.id.txtview_header_cartscreen_supplier);
		t.setTypeface(statics.getTitrfontfac());
		t.setTextSize(30);
		setcount();
		findViewById(R.id.cart_view_supplier).getLayoutParams().width=0;
	}
	Thread animethread;
	animation anime;
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.cart_view_btn_select_supplier:
			View r=findViewById(R.id.cart_view_supplier);
			
			if(r.getLayoutParams().width==0){
				if(animethread==null||!animethread.isAlive()){
					
					anime=new animation(r, true, findViewById(R.id.dialog_child).getMeasuredWidth()/2, 0);
					animethread=new Thread(anime);
					animethread.start();
				}
				else
				{
					anime.setIncrease(!anime.isIncrease());
				}
//				r.getLayoutParams().width=700;
//				r.requestLayout();
				((Button)v).setText("بستن تامین کننده");
			}
			else
			{
				if(animethread==null||!animethread.isAlive()){
					
					anime=new animation(r, false, findViewById(R.id.dialog_child).getMeasuredWidth()/2, 0);
					animethread=new Thread(anime);
					animethread.start();
				}
				else
				{
					anime.setIncrease(!anime.isIncrease());
				}
//				r.getLayoutParams().width=0;
//				r.requestLayout();
				((Button)v).setText("انتخاب تامین کننده");
			}
			break;
		case R.id.btn_cart_screen_back:
			dismiss();
			break;
		case R.id.btn_remove_all_cartscreen:
			for (int i = 0; i < items.size(); i++) {
				items.get(i).removeMyself();
				i--;
			}
			// ((LinearLayout)findViewById(R.id.lin_l_cart_list_view)).removeAllViews();
			items.clear();
			setcount();
			break;
		default:
			break;
		}
	}

	@Override
	public void cartchanged(cartItem c) {
		setcount();
	}

	private void setcount() {
		TextView t = (TextView) findViewById(R.id.txtview_cartitem_count_total);
		t.setText(getsum() + "");
	}

	private int getsum() {
		int sum = 0;
		for (cartItem citem : items) {
			sum += citem.getCount();
		}
		return sum;
	}
	@Override
	public void cartremoved(cartItem c) {
		items.remove(c);
		removeFromSelectedCartItem(c);
		setcount();
	}
	@Override
	public void dismiss() {
		super.dismiss();
		try{
			if(owner instanceof updateable)
				((updateable)owner).updateData();
			}catch(Exception ex){}
	}
	@Override
	public void cartCheckedChange(cartItem c, boolean isChecked) {
		if(isChecked){
			addToSelectedCartItem(c);
		}
		else
			removeFromSelectedCartItem(c);
	}
	private void removeFromSelectedCartItem(cartItem c) {
		selectedCartItems.remove(c);
		updateSupplierList();
	}
	
	private void addToSelectedCartItem(cartItem c) {
		selectedCartItems.add(c);
		updateSupplierList();
	}
	private void updateSupplierList() {
		LinearLayout supplierlist=(LinearLayout) findViewById(R.id.cart_view_supplier_layout);
		supplierlist.removeAllViews();
//		for (selectedCartItems) {
//			
//		}
		for(int i=0;i<selectedCartItems.size()*2;i++){
//			supplierlist.addView(new Button(getContext()));
//			supplierlist.addView(new SupplierItem(getContext()).showCheckBox());
			supplierlist.addView(View.inflate(getContext(), R.layout.supplier_in_cart_view, null));
		}
	}
	public class animation implements Runnable{
		float curent;
		public int min=0;
		public int max=700;
		private boolean increase=false;
		float increament=0;
		View v;
		long duration=500;
		long sleep=50;
		public animation(View v,boolean increase,int max,int min) {
			this.v=v;
			this.setIncrease(increase);
			this.max=max;
			this.min=min;
			increament=(max-min)/(duration/sleep);
			if(increase){
			curent=min;
			
			}
			else{
				curent=max;
				increament*=-1;
			}
		}
		@Override
		public void run() {
			while(true){
				try {
					Thread.sleep(sleep);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				curent+=increament;
				if(curent>max||curent<min)
					break;
				v.getLayoutParams().width=(int) curent;
				statics.getHandler().post(new Runnable() {
					
					@Override
					public void run() {
						v.requestLayout();
					}
				});
				}
		}
		
		public boolean isIncrease() {
			return increase;
		}
		public void setIncrease(boolean increase) {
			if(this.increase!=increase)
				increament*=-1;
			this.increase = increase;
		}
	}
}
