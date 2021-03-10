package com.example.sktheme.mainScreens;

import java.util.ArrayList;

import org.mapsforge.android.maps.MapView;

import com.ara.filter.Filter.filterItemListener;
import com.ara.greendroid.widget.AraPopupWindow;
import com.ara.linkfy.CustomLinkMovementMethod;
import com.ara.map.vector.mapview;
import com.example.sktheme.R;
import com.example.sktheme.R.layout;
import com.example.sktheme.groupaccordion.AccordionGroupItem;
import com.example.sktheme.ribbon.horizentalriboonholder;
import com.example.sktheme.CompareList;
import com.example.sktheme.CompareList.compListener;
import com.example.sktheme.SupplierItem;
import com.example.sktheme.SupplierList;
import com.example.sktheme.accountactivity;
import com.example.sktheme.cart;
import com.example.sktheme.cart.cartlistener;
import com.example.sktheme.customAnime;
import com.example.sktheme.customEditText;
import com.example.sktheme.firstPageVLayout;
import com.example.sktheme.firstPageVLayout.addingListener;
import com.example.sktheme.pager;
import com.example.sktheme.paintedProductLayout;
import com.example.sktheme.showall_layout;
import com.example.sktheme.statics;
import com.example.sktheme.updateable;
import com.example.sktheme.verticalRibbon;

import dataBase.DBUtil;
import dataBase.Limit;
import dataBase.ProductGroup;
import dataBase.DBUtil.TblFields;

import accordionPkg.AccordionSelectedChangeListenr;
import accordionPkg.accordionItem;
import accordionPkg.accrodion;
import android.R.integer;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Handler;
import android.preference.PreferenceActivity.Header;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;
import android.widget.ViewFlipper;

public class homeScreen extends RelativeLayout implements
		android.view.View.OnClickListener, AccordionSelectedChangeListenr,
		com.example.sktheme.ribbon.horizentalriboonholder.showallListener,
		cartlistener,compListener,
		com.ara.linkfy.CustomLinkMovementMethod.linkmovementListener,
		filterItemListener, addingListener,updateable{
	customEditText search;
	Handler handler;
	private TextView txtx_header;
	private Button backbutton;
	private Button cart_badger;
	private ToggleButton btn_filter;

	public homeScreen(Context context) {
		super(context);
		dojobs();
	}

	public homeScreen(Context context, AttributeSet attrs) {
		super(context, attrs);
		dojobs();
	}

	public void dojobs() {
		new MapView(getContext());
		statics.setHomescreen(this);
		CustomLinkMovementMethod.getInstance(getContext()).addLinkListeners(
				this);
		statics.getMyfilter().addFitemlistenr(this);
		try {
			handler = new Handler();
		} catch (Exception ex) {
		}
		LayoutInflater inflater = (LayoutInflater) getContext()
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		inflater.inflate(R.layout.firstpage, this);
		TextView t = (TextView) findViewById(R.id.txt_main_header);
		ImageButton btn_show_cart = (ImageButton) findViewById(R.id.btn_show_cart);
		btn_show_cart.setOnClickListener(this);
		t.setTypeface(statics.getTitrfontfac());
		ImageButton b = (ImageButton) findViewById(R.id.btn_show_hide_menu);
		b.setOnClickListener(this);
		b = (ImageButton) findViewById(R.id.btn_acount_firstpage);
		b.setOnClickListener(this);
		b = (ImageButton) findViewById(R.id.btn_setting_firstpage);
		b.setOnClickListener(this);
		search = (customEditText) findViewById(R.id.edittext_search_first_page_vew);
		accordionPkg.accrodion a = (accrodion) findViewById(R.id.first_page_accordion_menu);
		a.addSelectedChangeListener(this);
		statics.getMycart().addListeners(this);
		statics.getMyCompare().addListeners(this);
		findViewById(R.id.btn_home_screen_back).setOnClickListener(this);
		findViewById(R.id.btn_home_homescreen).setOnClickListener(this);
		findViewById(R.id.btn_load_webservice).setOnClickListener(this);
		findViewById(R.id.btn_filter_home_screen).setOnClickListener(this);
		findViewById(R.id.btn_compare_list_first_page).setOnClickListener(this);
		((firstPageVLayout) findViewById(R.id.first_page_v_ribbon_layout))
				.setAlistener(this);
	}
	String selectedValue = null;
	mapview m;
	public void setProjectAddressNew(View v) {
		AraPopupWindow q = new AraPopupWindow(statics.getContext());
		com.ara.greendroid.widget.AraPopupItem a = new com.ara.greendroid.widget.AraPopupItem(
				R.layout.project_address_new, getContext(), "آدرس جدید");
		if(m==null){
		m = new mapview(statics.getContext());
		m.setClickable(true);
		}
		else{
			((ViewGroup)m.getParent()).removeView(m);
		}
		((ViewGroup) a.getV().findViewById(R.id.project_address_new_map_layout))
				.addView(m);
		q.addQuickAction(a);
		q.show(v);
	}
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_compare_list_first_page:
				CompareScreen cScreen=new CompareScreen(getContext());
				cScreen.show();
			break;
		case R.id.btn_home_screen_back:
			if (selectedValue != null) {
				accordionItem ai = ((accrodion) findViewById(R.id.first_page_accordion_menu))
						.findselectedvalue(selectedValue,null);
				ai.onClick(ai.getHeader());
			}
			break;
		case R.id.btn_home_homescreen:
			setProjectAddressNew(this);
			accordionItem ai = ((accrodion) findViewById(R.id.first_page_accordion_menu))
					.findselectedvalue(-1 + "",null);
			ai.onClick(ai.getHeader());
			break;
		case R.id.btn_filter_home_screen:
			if (!getBtn_filter().isChecked()) {
				statics.getMyfilter().disable();
			} else {
				statics.getMyfilter().enable();
			}
			break;
	case R.id.btn_load_webservice:
	{
		new load_service(getContext()).show();
	}
		
		
		default:
			break;
		}
		if (v.getId() == R.id.btn_show_hide_menu) {
			RelativeLayout r = (RelativeLayout) (findViewById(R.id.menu_Layout));
			RelativeLayout vribbon = (RelativeLayout) findViewById(R.id.first_page_v_ribbon_layout);
			if (vribbon.getChildAt(0) instanceof showall_layout) {
				startloading();
			}
			if (((LayoutParams) r.getLayoutParams()).rightMargin != 0) {
				new Thread(new anime(0,
						((LayoutParams) r.getLayoutParams()).topMargin, 0,
						((LayoutParams) r.getLayoutParams()).bottomMargin, r,
						500)).start();
				// ((ImageButton)v).setImageResource(R.drawable.menu_hide);
			} else {
				// TranslateAnimation t=new
				// TranslateAnimation(TranslateAnimation.RELATIVE_TO_PARENT, 0,
				// TranslateAnimation.RELATIVE_TO_PARENT, 1f,
				// TranslateAnimation.RELATIVE_TO_PARENT, 0,
				// TranslateAnimation.RELATIVE_TO_PARENT, 0);
				// t.setDuration(500);
				// t.setFillAfter(true);
				// t.
				// r.setAnimation(t);
				// t.start();
				new Thread(new anime(0,
						((LayoutParams) r.getLayoutParams()).topMargin,
						-r.getMeasuredWidth()+20+AccordionGroupItem.LOGO_SIZE,
						((LayoutParams) r.getLayoutParams()).bottomMargin, r,
						500)).start();
				// ((ImageButton)v).setImageResource(R.drawable.menu_show);
			}
		} else if (v.getId() == R.id.btn_show_cart) {
			new cartScreen(getContext(),this).show();
		} else if (v.getId() == R.id.btn_acount_firstpage) {
				startloading();
				getAcountScreen().show();
				endloading();
				
//			statics.getActivity().startActivity(new Intent(statics.getActivity(), accountactivity.class));
			
		} else if (v.getId() == R.id.btn_setting_firstpage) {
			new settingView(getContext()).show();
		}
	}
	private account_screen acountScreen;
	private Button compare_badger;
	public class anime extends customAnime {
		float left, right, top, bottom;
		float curentleft, curentright, curenttop, curentbottom;
		float lastleft, lastright, lasttop, lastbottom;
		float incleft, incright, inctop, incbottom;
		View v;
		// float max=0;
		float framerate = 50;
		float duration;
		LayoutParams p;
		public anime(float left, float top, float right, float bottom, View v,
				float duration) {
			p = (LayoutParams) v.getLayoutParams();
			this.left = left;
			this.right = right;
			this.top = top;
			this.bottom = bottom;
			this.v = v;
			curentleft = p.leftMargin;
			curentright = p.rightMargin;
			curentbottom = p.bottomMargin;
			curenttop = p.topMargin;
			lastleft = left - curentleft;
			lastright = right - curentright;
			lastbottom = bottom - curentbottom;
			lasttop = top - curenttop;
			this.duration = duration;
			incleft = lastleft / (duration / framerate);
			incright = lastright / (duration / framerate);
			inctop = lasttop / (duration / framerate);
			incbottom = lastbottom / (duration / framerate);
			// max=Math.max(bottom,Math.max(top,Math.max(left, right)));
			// TODO Auto-generated constructor stub
		}
		@Override
		public void run() {
			while (!((int) curentleft == (int) left
					&& (int) curentbottom == (int) bottom
					&& (int) curenttop == (int) top && (int) curentright == (int) right)) {
				curentleft += incleft;
				curentright += incright;
				curentbottom += incbottom;
				curenttop += inctop;
				if ((int) curentleft == (int) lastleft)
					incleft = 0;
				if ((int) curentright == (int) lastright)
					incright = 0;
				if ((int) curentbottom == (int) lastbottom)
					incbottom = 0;
				if ((int) curenttop == (int) lasttop)
					inctop = 0;
				((Activity) getContext()).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						p.leftMargin = (int) curentleft;
						p.rightMargin = (int) curentright;
						p.bottomMargin = (int) curentbottom;
						p.topMargin = (int) curenttop;
						v.setLayoutParams(p);
						// v.setPadding((int)curentleft,(int) curenttop,(int)
						// curentright,(int) curentbottom);
						((Activity) getContext()).getWindow().getDecorView()
								.requestLayout();
						((Activity) getContext()).getWindow().getDecorView()
								.invalidate();
					}
				});
			}
			try {
				Thread.sleep((long) framerate);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block

			}

			handler.post(new Runnable() {

				@Override
				public void run() {
					((accrodion)findViewById(R.id.first_page_accordion_menu)).getPreferences().setInSmallMode(!((accrodion)findViewById(R.id.first_page_accordion_menu)).getPreferences().isInSmallMode());
					((accrodion)findViewById(R.id.first_page_accordion_menu)).updatechilds(null);
					RelativeLayout r = (RelativeLayout) (findViewById(R.id.menu_Layout));
					LayoutParams lp = (LayoutParams) (r.getLayoutParams());
					RelativeLayout vribbon = (RelativeLayout) findViewById(R.id.first_page_v_ribbon_layout);
					if (vribbon.getChildAt(0) instanceof showall_layout) {
						if (lp.rightMargin != 0) {

							pager.NUMCULMNS = 5;
							showall_layout sh = (showall_layout) vribbon
									.getChildAt(0);
							sh.getpager().setNumColumns(pager.NUMCULMNS);
							sh.setparentgroup(sh.getParentgroupId(), sh
									.getpager().getMeasuredWidth(), -1);

						} else {
							pager.NUMCULMNS = 4;
							showall_layout sh = (showall_layout) vribbon
									.getChildAt(0);
							sh.getpager().setNumColumns(pager.NUMCULMNS);
							sh.setparentgroup(sh.getParentgroupId(), sh
									.getpager().getMeasuredWidth(), -1);
						}
						endloading();
					}

				}
			});
		}

	}

	@Override
	public void accordionSelectedChangeed(accrodion parent,
			accordionItem selected,boolean update) {
		if(update){
		startloading();
		new Thread(new pp(selected)).start();
		}
		ProductGroup p = new ProductGroup();
		p.setGrpID(Integer.parseInt(selected.getValue()));
		p.load();
		ProductGroup pParent = new ProductGroup();
		pParent.setGrpID(p.getGrpParentID());
		pParent.load();
		if (pParent.getGrpID() == -1)
			pParent.setGrpName("همه گروه های کالا");
		if (p.getGrpID() == -1) {
			getTxtx_header().setText("سامانه ملی ساختمان کالا");
			getBackbutton().setVisibility(GONE);
		} else {
			getTxtx_header().setText(p.getGrpNamehtml());
			getBackbutton().setVisibility(VISIBLE);
			getBackbutton().setText(pParent.getGrpName());
			selectedValue = p.getGrpID() + "";
		}
	}
	@Override
	public void showallSelected(ProductGroup selected) {
		showall_layout shl = new showall_layout(getContext());
		RelativeLayout vRibbonLayout = (RelativeLayout) findViewById(R.id.first_page_v_ribbon_layout);
		shl.setparentgroup(selected.getGrpID() + "",
				vRibbonLayout.getMeasuredWidth(), -1);
		vRibbonLayout.removeAllViews();
		vRibbonLayout.addView(shl);
		accordionItem ai=((accrodion) findViewById(R.id.first_page_accordion_menu)).findselectedvalue(selected.getGrpID() + "", null);
		ai.onClick(ai.getHeader(),false);
	}

	public TextView getTxtx_header() {
		if (txtx_header == null)
			txtx_header = (TextView) findViewById(R.id.txt_main_header);
		return txtx_header;
	}

	public class pp implements Runnable {
		accordionItem s;

		public pp(accordionItem s) {
			this.s = s;
		}

		@Override
		public void run() {
			ArrayList<horizentalriboonholder> hribbonlist = new ArrayList<horizentalriboonholder>();
			ArrayList<Limit> limitsArray = new ArrayList<Limit>();
			limitsArray.add(new Limit(dataBase.DBUtil.TblFields.GrpParentID, s
					.getValue(), DBUtil.LimitType.ItIs, DBUtil.LimitTail.AND));
			ArrayList<ProductGroup> result = new ProductGroup().getAll(null,
					limitsArray, null, null);
			if (result.size() > 0) {
				verticalRibbon v = new verticalRibbon(getContext());
				v.setgroup(s.getValue(), homeScreen.this,true);
				final View child = v;
				handler.post(new Runnable() {
					@Override
					public void run() {
						RelativeLayout vRibbonLayout = (RelativeLayout) findViewById(R.id.first_page_v_ribbon_layout);
						vRibbonLayout.removeAllViews();
						vRibbonLayout.addView(child);
					}
				});
			} else {
				handler.post(new Runnable() {
					@Override
					public void run() {
						showall_layout shl = new showall_layout(getContext());
						RelativeLayout vRibbonLayout = (RelativeLayout) findViewById(R.id.first_page_v_ribbon_layout);
						shl.setparentgroup(s.getValue(),
								vRibbonLayout.getMeasuredWidth(), -1);
						vRibbonLayout.removeAllViews();
						vRibbonLayout.addView(shl);
					}
				});
			}
		}
	}

	@Override
	public void cartchanged(cart c) {
//		TextView t = (TextView) findViewById(R.id.txtview_count_cart_firstpage);
		if (c.getcount() == 0) {
//			t.setText("");
			getCart_badger().setVisibility(INVISIBLE);
		} else {
//			t.setText("تعداد کالا: " + c.getcount());
			getCart_badger().setText(" " + c.getcount() + " ");
			getCart_badger().setVisibility(VISIBLE);
		}
	}

	public Button getBackbutton() {
		if (backbutton == null)
			backbutton = (Button) findViewById(R.id.btn_home_screen_back);
		return backbutton;
	}

	public void setBackbutton(Button backbutton) {
		this.backbutton = backbutton;
	}

	@Override
	public void showSupplierSelected(ProductGroup selected) {
		new supplierScreen(getContext(), selected).show();
	}

	@Override
	public void showBrandSelected(ProductGroup selected) {
		new BrandScreen(getContext(), selected).show();

	}

	@Override
	public void showNewsSelected(ProductGroup selected) {
		new NewsScreen(getContext(), selected).show();
	}

	public Button getCart_badger() {
		if (cart_badger == null)
			cart_badger = (Button) findViewById(R.id.btn_cart_badger_first_page_view);
		return cart_badger;
	}
	public Button getcompare_badger() {
		if (compare_badger == null)
			compare_badger = (Button) findViewById(R.id.btn_compare_badger_first_page_view);
		return compare_badger;
	}
	
	@Override
	public void linkclicked(String url[]) {
		
	}

	public ToggleButton getBtn_filter() {
		if (btn_filter == null)
			btn_filter = (ToggleButton) findViewById(R.id.btn_filter_home_screen);
		return btn_filter;
	}

	@Override
	public void filterChanged() {
		if (statics.getMyfilter().isEnabled())
			getBtn_filter().setChecked(true);
		updateData();
	}

	@Override
	public void endadding() {
		// TODO Auto-generated method stub
		endloading();
	}

	@Override
	public void startadding() {

	}

	public void startloading() {
		findViewById(R.id.loading_rtl_layout).setVisibility(VISIBLE);
	}

	public void endloading() {
		findViewById(R.id.loading_rtl_layout).setVisibility(GONE);
	}
	@Override
	public void updateData() {
		handler.post(new Runnable() {
			
			@Override
			public void run() {
				
				startloading();
				new Thread(new Runnable() {
					
					@Override
					public void run() {
						RelativeLayout vRibbonLayout = (RelativeLayout) findViewById(R.id.first_page_v_ribbon_layout);
						// TODO Auto-generated method stub
						if(vRibbonLayout.getChildAt(0) instanceof updateable){
							((updateable)vRibbonLayout.getChildAt(0)).updateData();
						}
						handler.post(new Runnable() {
							
							@Override
							public void run() {
								endloading();	
							}
						});
					}
				}).start();
				
				
			}
		});
		
	}

	public account_screen getAcountScreen() {
		if(acountScreen==null)
			acountScreen=new account_screen(getContext());
		return acountScreen;
	}

	public void setAcountScreen(account_screen acountScreen) {
		this.acountScreen = acountScreen;
	}

	@Override
	public void compareChanged(CompareList c) {
		if (c.getcount() == 0) {
			getcompare_badger().setVisibility(INVISIBLE);
		} else {
			getcompare_badger().setText(" " + c.getcount() + " ");
			getcompare_badger().setVisibility(VISIBLE);
		}
		
	}
}