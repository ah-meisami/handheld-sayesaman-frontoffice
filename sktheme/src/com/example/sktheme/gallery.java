package com.example.sktheme;

import com.example.sktheme.customImageviewer.customImageviewOnTouch;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.LinearLayout;

public class gallery extends LinearLayout implements OnItemSelectedListener,
		customImageviewOnTouch {
	public static int index = 0;
	public static final int IMAGE_WIDTH = 100;
	public static final int IMAGE_HEIGHT = 100;
	int picId[];
	String captre;

	public customImageviewer productImageView;
	private PicAdapter picAdp;
	private Gallery mygallery;

	public gallery(Context context) {
		super(context);
		customizeMethod();
	}

	public gallery(Context context, AttributeSet attrs) {
		super(context, attrs);
		customizeMethod();
	}

	public gallery(int picId[], Context context) {
		super(context);
		this.picId = picId;
		this.captre = captre;
		customizeMethod();
	}

	final void customizeMethod() {
		LayoutInflater inflater = (LayoutInflater) getContext()
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		inflater.inflate(R.layout.gallery, this, true);
		mygallery = (Gallery) findViewById(R.id.product_gallery);
		mygallery.setOnItemSelectedListener(this);
		picAdp = new PicAdapter(picId);
		mygallery.setAdapter(picAdp);
		mygallery.setSelection(picId.length / 2);
		mygallery.setSpacing(0);
		productImageView = (customImageviewer) findViewById(R.id.product_gallery_image);
		productImageView.addOnCoustomListener(this);
	}

	public class PicAdapter extends BaseAdapter {
		ImageView[] images;
		int colors[] = { 0x88ffffff, 0xffffffff, 0x22ffffff };
		int index = 0;

		public PicAdapter(int[] resources) {
			images = new ImageView[resources.length];
			for (int i = 0; i < resources.length; i++) {
				images[i] = new ImageView(getContext());
				images[i].setImageResource(resources[i]);
				images[i].setBackgroundColor(colors[index]);
				images[i].setLayoutParams(new Gallery.LayoutParams(IMAGE_WIDTH,
						IMAGE_HEIGHT));
				index = (index + 1) % colors.length;
			}
		}

		@Override
		public int getCount() {
			return images.length;
		}

		@Override
		public Object getItem(int position) {
			return images[position];
		}

		@Override
		public long getItemId(int position) {
			return images[position].getId();
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			return images[position];
		}

	}

	@Override
	public void onItemSelected(AdapterView<?> arg0, View arg1, int pos,
			long arg3) {
		productImageView.setImageResource(picId[pos]);
		changeBorderForSelectedImage(pos);
	}

	@Override
	public void onNothingSelected(AdapterView<?> arg0) {

	}

	private void changeBorderForSelectedImage(int selectedItemPos) {

		int count = picAdp.getCount();

		for (int i = 0; i < count; i++) {

			ImageView imageView = picAdp.images[i];
			imageView.setBackgroundDrawable(getResources().getDrawable(
					R.drawable.image_border));
			imageView.setPadding(3, 3, 3, 3);
		}
		ImageView imageView = picAdp.images[selectedItemPos];
		imageView.setBackgroundDrawable(getResources().getDrawable(
				R.drawable.selected_image_border));
		imageView.setPadding(3, 3, 3, 3);
	}

	float lastx, lasty;
	float maxtouch = 30;

	@Override
	public void onClick(MotionEvent event) {		
		lastx = event.getX();
		lasty = event.getY();
	}

	@Override
	public void onMove(MotionEvent event) {	
	}

	@Override
	public void onRelease(MotionEvent event) {	
		if (Math.abs(lastx - event.getX()) > maxtouch) {
			int k = mygallery.getSelectedItemPosition();
			if (lastx > event.getX()) {
				k = (k + 1) % picAdp.getCount();
			} else {
				k--;
				if (k < 0)
					k = picAdp.getCount() - 1;
			}
			mygallery.setSelection(k);
		}
	}
}
