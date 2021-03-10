package com.example.sktheme;

import java.util.ArrayList;
import dataBase.Product;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

public class CompareItem extends RelativeLayout implements
		android.view.View.OnClickListener {
	private EditText counter;
	private Product product;
	private ArrayList<CartitemchangeListener> listeners = new ArrayList<CartitemchangeListener>();

	public CompareItem(Context context) {
		super(context);
		customizeMethod();
	}

	public CompareItem(Context context, AttributeSet attrs) {
		super(context, attrs);

	}

	public CompareItem(Context context, Product getproduct) {	
		super(context);
		this.setProduct(getproduct);
		customizeMethod();
	}

	final void customizeMethod() {
		LayoutInflater inflater = (LayoutInflater) getContext()
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
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

	public void plusCount(int i) {
		if ((getCount() + i) >= 0)
			setCount(getCount() + i);
	}

	public void minusCount(int i) {
		if ((getCount() - i) >= 0)
			setCount(getCount() - i);
	}

	public void removeMyself() {
		statics.getMycart().removeProductlist(getProduct());
		((ViewGroup) getParent()).removeView(this);
		removed();
	}

	public interface CartitemchangeListener {
		public void cartchanged(CompareItem c);

		public void cartremoved(CompareItem c);
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
}
