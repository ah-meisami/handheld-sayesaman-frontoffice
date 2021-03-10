package com.example.sktheme;

import java.io.File;
import java.util.List;
import dataBase.Product;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

public class catalog extends RelativeLayout implements OnClickListener {
	Handler handler;

	public catalog(Context context) {
		super(context);
		customizeMethod();
	}

	public catalog(Context context, AttributeSet attrs) {
		super(context, attrs);
		customizeMethod();
	}

	Product prod;

	public catalog(Context context, Product myProduct) {
		super(context);
		this.prod = myProduct;
		customizeMethod();
	}

	final void customizeMethod() {
		try {
			handler = new Handler();
		} catch (Exception ex) {
		}
		inflate(getContext(), R.layout.vertical_ribbon, null);
		LayoutInflater inflater = (LayoutInflater) getContext()
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		inflater.inflate(R.layout.product_catalog, this, true);
		findViewById(R.id.btn_pdf_catalog).setOnClickListener(this);
		findViewById(R.id.btn_movie_catalog).setOnClickListener(this);
		findViewById(R.id.btn_word_catalog).setOnClickListener(this);
		try {
			((TextView) findViewById(R.id.txt_header_catalog)).setText(prod
					.getProdName());
		} catch (Exception ex) {
		}
	}

	@Override
	public void onClick(View v) {
		int i = 0;
		switch (v.getId()) {
		case R.id.btn_pdf_catalog:
			i = 0;
			break;
		case R.id.btn_movie_catalog:
			i = 1;
			break;
		case R.id.btn_word_catalog:
			i = 2;
			break;
		default:
			return;
		}
		try {
			String mFileName[] = new String[] { "product.pdf", "product.mp4",
					"product.doc" };
			String mFiletypes[] = new String[] { "application/pdf", "video/*",
					"text/*" };
			File file = new File(Environment.getExternalStorageDirectory()
					.getAbsolutePath() + File.separator + mFileName[i]);
			Intent intent = new Intent(Intent.ACTION_VIEW);
			intent.setDataAndType(Uri.fromFile(file), mFiletypes[i]);
			// "video/*"
			// "video/mp4"
			// "text/*"
			// "application/msword"
			intent.setFlags(Intent.FLAG_ACTIVITY_NO_HISTORY);
			PackageManager pm = statics.getActivity().getPackageManager();
			List<ResolveInfo> activities = pm.queryIntentActivities(intent, 0);
			if (activities.size() > 0) {
				statics.getActivity().startActivity(intent);
			} else {
				Toast.makeText(statics.getActivity(),
						"برنامه باز کردن فایل نصب شنده است", Toast.LENGTH_LONG)
						.show();
			}
		} catch (Exception e) {
			Toast.makeText(statics.getActivity(), "No PDF Viewer Installed",
					Toast.LENGTH_LONG).show();
		}
	}

}
