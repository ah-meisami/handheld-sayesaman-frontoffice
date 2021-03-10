package com.example.sktheme.accountMenu;

import java.util.ArrayList;

import accordionPkg.AccordionPreferences;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;

public class menuAccordion extends accordionPkg.accrodion {

	public menuAccordion(Context context, AttributeSet attrs) {
		super(context, attrs);
		if(getPreferences()==null)
			setPreferences(new AccordionPreferences());
		((accordionPkg.accrodion) this).getPreferences().setHidebelowBrothers(false);
		((accordionPkg.accrodion) this).getPreferences().setHideUpperBrothers(false);
	}

	public menuAccordion(Context context) {
		super(context);
		if(getPreferences()==null)
			setPreferences(new AccordionPreferences());
		((accordionPkg.accrodion) this).getPreferences().setHidebelowBrothers(false);
		((accordionPkg.accrodion) this).getPreferences().setHideUpperBrothers(false);
	}

	public void addacordeonto1(ViewGroup child, ArrayList<menuItem> mitems) {

		for (int i = 0; i < mitems.size(); i++) {
			AccordionMenuItem ai = new AccordionMenuItem(getContext(),
					mitems.get(i), this,getPreferences());
			addacordeonto1(ai.getChild(), mitems.get(i).getChilds());
			child.addView(ai);
		}
		// accordionItem k = new accordionItem(getContext());
		// k.addAccordionItemOnClickListener(this);
		// child.addView(k);
		// try {
		// ((TextView) (k.findViewById(R.id.header)
		// .findViewById(R.id.headertext))).setText((k1));
		// } catch (Exception ex) {
		// }
		// try {
		// ((ImageView) (k.findViewById(R.id.header)
		// .findViewById(R.id.headerImage))).setImageResource(id);
		// } catch (Exception ex) {
		// }
	}
}
