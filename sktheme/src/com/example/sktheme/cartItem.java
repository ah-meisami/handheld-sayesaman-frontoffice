package com.example.sktheme;

import java.util.ArrayList;

import com.ara.map.Mymap.Statics;
import com.example.sktheme.mainScreens.inquiryScreen;
import com.example.sktheme.mainScreens.productViewScreen;

import dataBase.Product;
import android.app.Dialog;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

public class cartItem extends RelativeLayout implements
		android.view.View.OnClickListener, OnCheckedChangeListener {
	private EditText counter;
	private Product product;
	private ArrayList<CartitemchangeListener> listeners = new ArrayList<CartitemchangeListener>();

	public cartItem(Context context) {
		super(context);
		customizeMethod();
	}

	public cartItem(Context context, AttributeSet attrs) {
		super(context, attrs);

	}

	public cartItem(Context context, Product getproduct) {	
		super(context);
		this.setProduct(getproduct);
		customizeMethod();
	}

	final void customizeMethod() {
		LayoutInflater inflater = (LayoutInflater) getContext()
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		inflater.inflate(R.layout.cart_item, this);
		ImageView img = (ImageView) findViewById(R.id.imageview_product_pic_cartitem);
		try {
			img.setImageBitmap(imagefactory.decodeSampledBitmapFormAssest(
					getContext(), productLayout.getpicpath((getProduct()))));
		} catch (Exception ex) {
		}
		TextView t = (TextView) findViewById(R.id.txtview_productname_cartitem);
		t.setText(getProduct().getProdName());
		findViewById(R.id.btn_removeproduct_cartview).setOnClickListener(this);
		findViewById(R.id.btn_favproduct_cartview).setOnClickListener(this);
		findViewById(R.id.btn_inquiry_cartview).setOnClickListener(this);
		((CheckBox)findViewById(R.id.cart_item_checkbox)).setOnCheckedChangeListener(this);
		setClickable(true);
		setOnClickListener(this);
	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_removeproduct_cartview:
			removeMyself();
			break;
		case R.id.btn_favproduct_cartview:
			Toast.makeText(getContext(), "اضافه شد", Toast.LENGTH_LONG).show();
			break;
		case R.id.btn_inquiry_cartview:
			////doing inquiry jobssssssssssssssssssssssssssssssssss
			new inquiryScreen(getContext()).show();
			break;
		}
		if(v==this){
			new productViewScreen(statics.getContext(), getProduct()).show();
//			((CheckBox)findViewById(R.id.cart_item_checkbox)).setChecked(!((CheckBox)findViewById(R.id.cart_item_checkbox)).isChecked());
		}
		
	}


	public int getCount() {
		try {
			return 1;
		} catch (NumberFormatException ex) {
			return -1;
		}
	}

	public void setCount(int count) {
		counter.setText(count + "");
		changed();
	}
	public void removeMyself() {
		statics.getMycart().removeProductlist(getProduct());
		((ViewGroup) getParent()).removeView(this);
		removed();
	}

	public interface CartitemchangeListener {
		public void cartchanged(cartItem c);
		public void cartremoved(cartItem c);
		public void cartCheckedChange(cartItem c,boolean isChecked);
	}

	public void addListeners(CartitemchangeListener clistener) {
		listeners.add(clistener);
	}

	public void removeListeners(CartitemchangeListener clistener) {
		listeners.remove(clistener);
	}

	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
		ImageView img = (ImageView) findViewById(R.id.imageview_product_pic_cartitem);
		try {
			img.setImageBitmap(imagefactory.decodeSampledBitmapFormAssest(
					getContext(), productLayout.getpicpath(getProduct())));
		} catch (Exception ex) {
		}
		//TextView t = (TextView) findViewById(R.id.txtview_productname_cartitem);
	}

	private void changed() {
		for (int i = 0; i < listeners.size(); i++) {
			listeners.get(i).cartchanged(this);
		}
	}
	private void removed() {
		for (int i = 0; i < listeners.size(); i++) {
			listeners.get(i).cartremoved(this);
		}
	}
	@Override
	public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
		for (int i = 0; i < listeners.size(); i++) {
			listeners.get(i).cartCheckedChange(this, isChecked);
		}
	}
}
