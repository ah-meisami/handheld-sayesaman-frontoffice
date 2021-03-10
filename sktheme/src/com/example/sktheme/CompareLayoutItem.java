package com.example.sktheme;

import java.io.IOException;

import dataBase.Product;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class CompareLayoutItem {
	private View head;
	private View body;
	private Context context;
	private Product product;
	

	public CompareLayoutItem(Context context, Product product) {
		this.context = context;
		this.setHead(View.inflate(context, R.layout.compair_header_item, null));
		this.setBody(View.inflate(context, R.layout.compair_detail_item, null));
		this.setProduct(product);
	}

	public Context getContext() {
		return context;
	}

	public void setContext(Context context) {
		this.context = context;
	}
	public View getHead() {
		if (head == null)
			setHead(View.inflate(context, R.layout.compair_header_item, null));
		return head;
	}

	public void setHead(View head) {
		this.head = head;
	}

	public View getBody() {
		if (body == null)
			setBody(View.inflate(context, R.layout.compair_header_item, null));
		return body;
	}

	public void setBody(View body) {
		this.body = body;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
		((TextView) getHead().findViewById(R.id.compare_item_caption))
				.setText(product.getProdName());
		ImageView img=((ImageView) getHead().findViewById(R.id.compare_item_image));
		try {
			img.setImageBitmap(imagefactory.decodeSampledBitmapFormAssest(
					getContext(), paintedProductLayout.getpicpath(getProduct()),100,100));
		} catch (IOException e) {
			img.setImageBitmap(imagefactory.decodeSampledBitmapFromResource(
					getContext().getResources(), R.drawable.no_pic1,
					100,100));
		}
	}
}
