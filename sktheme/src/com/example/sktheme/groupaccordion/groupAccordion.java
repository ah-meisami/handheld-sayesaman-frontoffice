package com.example.sktheme.groupaccordion;

import java.util.ArrayList;

import com.example.sktheme.R;
import com.example.sktheme.statics;
import dataBase.DBUtil;
import dataBase.ProductGroup;
import dataBase.Limit;
import accordionPkg.AccordionPreferences;
import accordionPkg.MenuItemF;
import accordionPkg.accordionItem;
import accordionPkg.accrodion;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.Toast;
import android.widget.ToggleButton;

public class groupAccordion extends accordionPkg.accrodion {
	public static boolean b = true;

	public groupAccordion(Context context, AttributeSet attrs) {
		super(context, attrs);
		dothing();

	}
	public groupAccordion(Context context) {
		super(context);
		dothing();
	}

	private void dothing() {
		try{
		if (getPreferences() == null) {
			AccordionPreferences ap = new AccordionPreferences();
			setPreferences(ap);
		}
		ProductGroup p = new ProductGroup();
		p.setGrpID(-1);
		p.setGrpName("همه گروه های کالا");
		AccordionGroupItem ia = new AccordionGroupItem(getContext(), p, this,
				getPreferences());
		ia.setClosemyself(true);
		addacordeonto(ia.getChild(), "-1");
//		final AccordionGroupItem ia1 = ia;
		statics.setParentAccordion(ia);
		this.addView(ia);
		// new Thread(new Runnable() {
		//
		// @Override
		// public void run() {
		// ia1.onClick(ia1.getHeader());
		// }
		// }).start();
		// measure(0, 0);
		// getViewTreeObserver().addOnGlobalLayoutListener(new
		// ViewTreeObserver.OnGlobalLayoutListener() {
		//
		// @Override
		// public void onGlobalLayout() {
		// if(b){
		// ia1.onClick(ia1.getHeader());
		// // ia1.getHeader().setClickable(false);
		// b=!b;
		// }
		// }
		// });
		}catch(Exception ex){}
	}

	private void addacordeonto(ViewGroup child, String id) {
		ArrayList<Limit> limitsArray = new ArrayList<Limit>();
		limitsArray.add(new Limit(dataBase.DBUtil.TblFields.GrpParentID, id,
				DBUtil.LimitType.ItIs, DBUtil.LimitTail.AND));
		ArrayList<ProductGroup> result = new ProductGroup().getAll(null,
				limitsArray, null, null);
		if (result.size() == 0) {
//			try{
//				((accordionItem)child.getParent()).getHeader().setShowOnOff(true);
//				}catch(Exception ex){
//					
//				}
		}
		for (int i = 0; i < result.size(); i++) {
			AccordionGroupItem ai = new AccordionGroupItem(getContext(),
					result.get(i), this, getPreferences());
			addacordeonto(ai.getChild(), ai.prdgroup.getGrpID() + "");
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
//
//	Thread t;
//
//	@Override
//	public void onClick(View v) {
//		// TODO Auto-generated method stub
//		super.onClick(v);
//		final Handler h = new Handler();
//		final View v1 = v;
//		if (v instanceof ToggleButton) {
//			if (t != null && t.isAlive()) {
//				t.stop();
//
//				try {
//					t.join();
//				} catch (InterruptedException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
//
//			t = new Thread(new Runnable() {
//
//				@Override
//				public void run() {
//					if (((ToggleButton) v1).isChecked()) {
//						AccordionPreferences ap = new AccordionPreferences();
//						ap.setHideUpperBrothers(false);
//						ap.setAlign(ap.ALIGN_CENTER);
//						ap.getBgs()[0] = R.drawable.withe_button;
//						ap.getBgs()[1] = ap.getBgs()[2];
//
//						final accrodion f = new accrodion(getContext());
//						f.setPreferences(ap);
//						final ArrayList<MenuItemF> mitems = new ArrayList<MenuItemF>();
//						MenuItemF mm = new MenuItemF(1, "تامین کننده",
//								com.example.sktheme.R.drawable.ic_launcher);
//						mm.addvalue((mm).new Values(1, "تامین کننده یک"));
//						mm.addvalue((mm).new Values(2, "تامین کننده دو"));
//						mitems.add(mm);
//						mm = new MenuItemF(2, "کشور سازنده",
//								com.example.sktheme.R.drawable.ic_launcher);
//						mm.addvalue((mm).new Values(1, "ایران"));
//						mm.addvalue((mm).new Values(2, "عراق"));
//						mm.addvalue((mm).new Values(3, "ایتالیا"));
//						mm.addvalue((mm).new Values(4, "آلمان"));
//						mitems.add(mm);
//						mitems.add(new MenuItemF(3, "تولید کننده",
//								com.example.sktheme.R.drawable.ic_launcher));
//						mitems.add(new MenuItemF(4, "قیمت",
//								com.example.sktheme.R.drawable.ic_launcher));
//						h.post(new Runnable() {
//							@Override
//							public void run() {
//								f.addacordeonto((ViewGroup) f, mitems);
//								f.measure(0, 0);
//								((ViewGroup) ((ViewGroup) v1.getParent()
//										.getParent())
//										.findViewById(R.id.filter_layout))
//										.removeAllViews();
//								ViewGroup vg = ((ViewGroup) ((ViewGroup) v1
//										.getParent().getParent())
//										.findViewById(R.id.filter_layout));
//								vg.addView(f);
//							}
//						});
//					} else {
//						h.post(new Runnable() {
//							@Override
//							public void run() {
//								// TODO Auto-generated method stub
//								((ViewGroup) ((ViewGroup) v1.getParent()
//										.getParent())
//										.findViewById(R.id.filter_layout))
//										.removeAllViews();
//								statics.getActivity().getWindow()
//										.getDecorView().requestLayout();
//								statics.getActivity().getWindow()
//										.getDecorView().invalidate();
//							}
//						});
//					}
//				}
//			});
//			t.start();
//		}
//
//	}
}
