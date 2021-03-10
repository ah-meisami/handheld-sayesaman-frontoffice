package com.example.sktheme.accountMenu;

import com.example.sktheme.R;
import com.example.sktheme.imagefactory;

import accordionPkg.AccordionPreferences;
import accordionPkg.accordionItem;
import accordionPkg.accordionItemOnClickListener;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import android.widget.TextView;

public class AccordionMenuItem extends accordionItem {
	menuItem mitem;

	public AccordionMenuItem(Context context, menuItem mitem,
			accordionItemOnClickListener listener,AccordionPreferences ap) {
		super(context,ap);
		this.mitem = mitem;
		addAccordionItemOnClickListener(listener);
		getHeader().setCaption(mitem.caption);
		getHeader().setImageBitmap(imagefactory.decodeSampledBitmapFromResource(getResources(), mitem.pic,30,30));
	}

	@Override
	public String getValue() {
		return mitem.value + "";
	}
}
