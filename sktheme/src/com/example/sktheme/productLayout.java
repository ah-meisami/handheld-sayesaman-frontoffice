package com.example.sktheme;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import android.content.Context;
import android.os.Environment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.TextView;
import android.widget.Toast;

import com.example.sktheme.mainScreens.productViewScreen;

import dataBase.Customer;
import dataBase.Product;
import dataBase.SupplierProduct;

public class productLayout extends LinearLayout implements View.OnClickListener {
	public static int index = 0;
	private Product product;
	public static String picextention = ".hmd";
	public static String picpath = "product" + File.separator;
	private ImageView prodimage;
	private TextView productHeader;
	private TextView productType;
	private TextView producSupplyer;
	private RatingBar star;
	private ArrayList<productclicked> pclickedListener = new ArrayList<productLayout.productclicked>();

	public productLayout(Context context) {
		super(context);
		dojobs();
	}

	public productLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		dojobs();
	}

	public productLayout(Product p, Context context,int i) {
		super(context);
		setProduct(p);
		dojobs();
	}

	void setimage() {
		try {
			try {
				File f = new File(Environment.getExternalStorageDirectory()
						.getAbsoluteFile() + File.separator + "pics");
				if (!f.exists())
					f.mkdir();
				// File f1=new
				// File(f.getAbsoluteFile()+File.separator+product.getProdID()+".bmp");
				// try {
				// f1.createNewFile();
				// FileOutputStream fo=new FileOutputStream(f1);
				// fo.write(product.getProdImage());
				// fo.close();
				// } catch (IOException e) {
				// // TODO Auto-generated catch block
				//
				// }
				// Bitmap
				// b=BitmapFactory.decodeByteArray(product.getProdImage(),0,product.getProdImage().length,options);
				try {
					((ImageView) findViewById(R.id.product_image))
							.setImageBitmap(imagefactory
									.decodeSampledBitmapFormAssest(
											getContext(),
											getpicpath(getProduct())));
				} catch (IOException e) {
					((ImageView) findViewById(R.id.product_image))
							.setImageBitmap((imagefactory
									.decodeSampledBitmapFromResource(
											getContext().getResources(),
											R.drawable.no_pic1, 100, 100)));
				}
			} catch (OutOfMemoryError e) {
				// TODO: handle exception
			}
		} catch (OutOfMemoryError e) {
		}
	}

	public static String getpicpath(Product product2) {
		// TODO Auto-generated method stub
		return picpath + product2.getProdID() + File.separator
				+ product2.getProdID() + "_thumb" + picextention;
	}
	public static String getbigpicpath(Product product2) {
		// TODO Auto-generated method stub
		return picpath + product2.getProdID() + File.separator
				+ product2.getProdID() + "" + picextention;
	}

	final void dojobs() {
		LayoutInflater inflater = (LayoutInflater) getContext()
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		inflater.inflate(R.layout.myviewxx, this, true);
		((TextView) findViewById(R.id.product_header)).setText(getProduct()
				.getProdName());
		((TextView) findViewById(R.id.txt_product_supplyer_prodlayout))
				.setText(statics.getSupplier(product));
		findViewById(R.id.product_image).setOnClickListener(this);
		setimage();

		findViewById(R.id.btn_add_to_cart_product).setOnClickListener(this);
		findViewById(R.id.btn_add_to_compare_list).setOnClickListener(this);
		measure(0, 0);
		mymesuredH = getMeasuredHeight();
		mymesuredW = getMeasuredWidth();
	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_add_to_cart_product:
			String str = "";
			if (statics.getMycart().addProductlist(this.getProduct()))
				str = "کالا به سبد اضافه شد";
			else
				str = "شما قبلا این کالا را انتخاب کرده اید";
			Toast.makeText(getContext(), str, 2000).show();
			break;
		case R.id.btn_add_to_compare_list:
			String str1 = "";
			if (statics.getMyCompare().addProductlist(this.getProduct()))
				str1 = "کالا به لیست مقایسه  اضافه شد";
			else
				str1 = "شما قبلا این کالا را انتخاب کرده اید";
			Toast.makeText(getContext(), str1, 2000).show();
			break;
		case R.id.product_image:
			for (productclicked p : pclickedListener) {
				try {
					p.productclicked(this);
				} catch (Exception ex) {
				}
			}
			if (pclickedListener.size() == 0) {
				productViewScreen dialog = new productViewScreen(getContext(),
						getProduct());
				dialog.show();
			}
			break;
		default:
			break;
		}
	}

	public class PicAdapter extends BaseAdapter {
		ImageView[] images;
		int colors[] = { 0x88ffffff, 0xffffffff, 0x22ffffff };
		int index = 0;

		public PicAdapter(int[] resources) {
			// TODO Auto-generated constructor stub
			images = new ImageView[resources.length];
			for (int i = 0; i < resources.length; i++) {
				images[i] = new ImageView(getContext());
				images[i].setImageResource(resources[i]);
				images[i].setBackgroundColor(colors[index]);
				index = (index + 1) % colors.length;
			}
		}

		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			return images.length;
		}

		@Override
		public Object getItem(int position) {
			// TODO Auto-generated method stub
			return images[position];
		}

		@Override
		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return images[position].getId();
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			// TODO Auto-generated method stub
			return images[position];
		}

	}

	// private static String getpicpath(int prodID) {
	// return picpath+prodID+picextention;
	// }
	@Override
	protected void onSizeChanged(int w, int h, int oldw, int oldh) {
		// TODO Auto-generated method stub

		super.onSizeChanged(w, h, oldw, oldh);
		// measure(0,0);
		fitToSize(w, h);
	}

	int mymesuredW = 0;
	int mymesuredH = 0;

	public void fitToSize(int w, int h) {

		float wf = ((float) mymesuredW) / ((float) w);
		float hf = ((float) mymesuredH) / ((float) h);
		android.widget.RelativeLayout.LayoutParams p = (android.widget.RelativeLayout.LayoutParams) getProdimage()
				.getLayoutParams();
		// float max=Math.max(wf, hf);
		// fontSizeFit(getProductHeader(),max);
		// fontSizeFit(getProductType(),max);
		// fontSizeFit(getProducSupplyer(),max);
		int min = Math.min(
				(int) ((float) getProdimage().getMeasuredHeight() / hf),
				(int) ((float) getProdimage().getMeasuredWidth() / wf));
		p.height = (int) ((float) getProdimage().getMeasuredHeight() / hf);
		p.width = w - 30;
		measure(0, 0);
	}

	private void fontSizeFit(TextView t, float max) {
		if (max >= 1)
			t.setTextSize(t.getTextSize() / max);
	}

	public ImageView getProdimage() {
		if (prodimage == null)
			prodimage = (ImageView) findViewById(R.id.product_image);
		return prodimage;
	}

	public TextView getProductHeader() {
		if (productHeader == null)
			productHeader = (TextView) findViewById(R.id.product_header);
		return productHeader;
	}

	public TextView getProductType() {
		if (productType == null)
			productType = (TextView) findViewById(R.id.txt_product_type_prodlayout);
		return productType;
	}

	public TextView getProducSupplyer() {
		if (producSupplyer == null)
			producSupplyer = (TextView) findViewById(R.id.txt_product_supplyer_prodlayout);
		return producSupplyer;
	}

	public RatingBar getStar() {
		if (star == null)
			star = (RatingBar) findViewById(R.id.rate_product_rat_prodlayout);
		return star;
	}

	public void addPclickedListener(productclicked pclickedlistener) {
		this.pclickedListener.add(pclickedlistener);
	}

	public void removePclickedListener(productclicked pclickedlistener) {
		this.pclickedListener.remove(pclickedlistener);
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public interface productclicked {
		public void productclicked(productLayout p);
	}
}
