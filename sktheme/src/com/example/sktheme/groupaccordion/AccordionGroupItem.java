package com.example.sktheme.groupaccordion;

import java.io.File;
import java.io.IOException;

import com.example.sktheme.R;
import com.example.sktheme.imagefactory;

import dataBase.ProductGroup;
import accordionPkg.AccordionPreferences;
import accordionPkg.accordionItem;
import accordionPkg.accordionItemOnClickListener;
import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;

public class AccordionGroupItem extends accordionItem {
	ProductGroup prdgroup;
	public static final int LOGO_SIZE=45;
	public AccordionGroupItem(Context context, ProductGroup p,
			accordionItemOnClickListener listener,AccordionPreferences ap) {
		super(context,ap);
		this.prdgroup = p;
		addAccordionItemOnClickListener(listener);
		getHeader().setCaption(p
				.getGrpNamecount());
		try {
			getHeader().setImageBitmap(imagefactory.decodeSampledBitmapFormAssest(
							getContext(),
							"category" + File.separator + p.getGrpID()
									+ File.separator + p.getGrpID() + ".hmd",
									LOGO_SIZE, LOGO_SIZE));
		} catch (IOException e) {
			getHeader().setImageBitmap(imagefactory
							.decodeSampledBitmapFromResource(getContext()
									.getResources(), R.drawable.ic_launcher,
									LOGO_SIZE, LOGO_SIZE));
			e.printStackTrace();
		}
	}
	@Override
	public String getValue() {
		return prdgroup.getGrpID() + "";
	}
}
