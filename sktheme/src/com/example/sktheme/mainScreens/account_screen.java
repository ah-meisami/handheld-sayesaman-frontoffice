package com.example.sktheme.mainScreens;

import java.util.ArrayList;

import com.ara.greendroid.widget.AraPopupWindow;
import com.ara.map.vector.mapview;
import com.example.sktheme.R;
import com.example.sktheme.R.layout;
import com.example.sktheme.customDialog;
import com.example.sktheme.imagefactory;
import com.example.sktheme.popupmenu;
import com.example.sktheme.statics;
import com.example.sktheme.accountMenu.menuAccordion;
import com.example.sktheme.accountMenu.menuItem;

import accordionPkg.AccordionPreferences;
import accordionPkg.AccordionSelectedChangeListenr;
import accordionPkg.MenuItemF;
import accordionPkg.accordionItem;
import accordionPkg.accordionItemOnClickListener;
import accordionPkg.accrodion;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.PopupMenu;
import android.widget.RelativeLayout;
import android.widget.TabHost;
import android.widget.TabHost.TabContentFactory;
import android.widget.TabHost.TabSpec;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewFlipper;

public class account_screen extends customDialog implements
		android.view.View.OnClickListener, accordionItemOnClickListener,
		AccordionSelectedChangeListenr {
	private TabHost project;
	accrodion info_accordion;
	private ViewFlipper menuFliper;

	public account_screen(Context context) {
		super(context, R.style.mydialogstyle);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(LayoutParams.FLAG_FULLSCREEN,
				LayoutParams.FLAG_FULLSCREEN);
		getWindow().setBackgroundDrawable(
				new ColorDrawable(android.graphics.Color.TRANSPARENT));

		setContentView(R.layout.account_view);
		menuAccordion accountmenu = (menuAccordion) findViewById(R.id.menu_account_accordion);
		AccordionPreferences acp = new AccordionPreferences();
		acp.setHideUpperBrothers(false);
		acp.setMenutype(acp.MENUTYPE_ACCOUNT_MENU);
		accountmenu.setPreferences(acp);
		ArrayList<menuItem> mitems = new ArrayList<menuItem>();
		int i = 0;
		mitems.add(new menuItem(++i, "پروفایل کاربر",
				R.drawable.account_profile));
		mitems.add(new menuItem(++i, "مشخصات پروژه", R.drawable.account_project));
		mitems.add(new menuItem(++i, "درخواست های خرید",
				R.drawable.account_cart));
		mitems.add(new menuItem(++i, "استعلام های دریافتی",
				R.drawable.account_recived_query));
		mitems.add(new menuItem(++i, "مناقصات", R.drawable.account_monaqese));
		mitems.add(new menuItem(++i, "پرداخت ها و دریافت ها",
				R.drawable.account_cash));
		mitems.add(new menuItem(++i, "گزارشات", R.drawable.account_report));
		// mitems.add(new menuItem(2,"پروژه",R.drawable.ic_launcher));
		// menuItem m1=new menuItem(3,"اطلاعات تماس",R.drawable.ic_launcher);
		// m1.addChild(new menuItem(4, "اطلاعات محلی", R.drawable.ic_launcher));
		// mitems.add(m1);
		accountmenu.addacordeonto1(accountmenu, mitems);
		accountmenu.addSelectedChangeListener(this);
		Button b = (Button) findViewById(R.id.btn_account_screen_back);
		b.setOnClickListener(this);
		b.requestFocus();
		// creating accordion for profile infprmation
		acp = new AccordionPreferences();
		acp.setHideUpperBrothers(false);
		acp.setMenutype(acp.MENUTYPE_ACCOUNT_MENU);
		acp.setShowFooterAtstart(true);
		acp.setShowFooterAtEnd(false);
		acp.getBgs()[0] = R.drawable.profile_accordion_bg_2;
		acp.getBgs()[1] = acp.getBgs()[0];
		acp.getBgs()[2] = acp.getBgs()[0];
		acp.getColors()[1] = acp.getColors()[0];
		acp.getColors()[2] = acp.getColors()[0];
		info_accordion = new accrodion(getContext());
		info_accordion.setPreferences(acp);
		accordionItem ai = new accordionItem(getContext(),
				info_accordion.getPreferences());
		ai.getChild().setBackgroundColor(0x00ffffff);
		View.inflate(getContext(), R.layout.profile_sub, ai.getChild());
		// /accordion مشخصات فردی
		ai.getHeader().setCaption("مشخصات فردی");
		ai.getHeader().setImageBitmap(
				imagefactory.decodeSampledBitmapFromResource(statics
						.getContext().getResources(),
						R.drawable.profile_personal_info, 30, 30));
		info_accordion.addView(ai);
		// accordion مشخصات تحصیلی
		ai = new accordionItem(getContext(), info_accordion.getPreferences());
		ai.getChild().setBackgroundColor(0x00ffffff);
		View.inflate(getContext(), R.layout.prof_edu, ai.getChild());
		ai.getHeader().setCaption("مشخصات تحصیلی");
		ai.getHeader().setImageBitmap(
				imagefactory.decodeSampledBitmapFromResource(statics
						.getContext().getResources(),
						R.drawable.profile_studi_info, 30, 30));
		info_accordion.addView(ai);
		// accordion مشخصات سازمانی
		ai = new accordionItem(getContext(), info_accordion.getPreferences());
		ai.getChild().setBackgroundColor(0x00ffffff);
		View.inflate(getContext(), R.layout.prof_unit, ai.getChild());
		ai.getHeader().setCaption("مشخصات سازمانی");
		ai.getHeader().setImageBitmap(
				imagefactory.decodeSampledBitmapFromResource(statics
						.getContext().getResources(),
						R.drawable.profile_unit_info, 30, 30));
		info_accordion.addView(ai);
		// accordion اطلاعات تماس
		ai = new accordionItem(getContext(), info_accordion.getPreferences());
		ai.getChild().setBackgroundColor(0x00ffffff);
		View.inflate(getContext(), R.layout.prof_contact, ai.getChild());
		ai.getHeader().setCaption("اطلاعات تماس");
		ai.getHeader().setImageBitmap(
				imagefactory.decodeSampledBitmapFromResource(statics
						.getContext().getResources(),
						R.drawable.profile_contact_info, 30, 30));

		info_accordion.addView(ai);
		((accrodion) (findViewById(R.id.accrodion_info1)))
				.addView(info_accordion);
		getProject();

	}

	final void dojobs() {

	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_account_screen_back:
			dismiss();
			break;
		case R.id.btn_project_address_new:
			setProjectAddressNew(v);
			break;
			case R.id.btn_project_document_new:
			setProjectDocumentNew(v);
			break;
			case R.id.btn_project_photo_new:
				setProjectPhotoNew(v);
			break;
		case R.id.profile_profpicture_imageview:
			AraPopupWindow q = new AraPopupWindow(getContext());
			com.ara.greendroid.widget.AraPopupItem a = new com.ara.greendroid.widget.AraPopupItem(
					R.layout.account, getContext(), "ساختمان کالا");
			q.addQuickAction(a);
			q.show(v);
			break;
		case R.id.btn_project_accounts_new:
			AraPopupWindow q1 = new AraPopupWindow(getContext());
			com.ara.greendroid.widget.AraPopupItem a1 = new com.ara.greendroid.widget.AraPopupItem(
					R.layout.project_accounts_new, getContext(), "حساب جدید");
			q1.addQuickAction(a1);
			q1.show(v);
			break;
		default:
			break;
		}
	}
	public TabHost getProject() {
		if (project == null) {
			project = (TabHost) findViewById(android.R.id.tabhost);
			project.setup();
			setupTab(R.id.project_project_photo_layout, "تصاویر پروژه",R.drawable.setting);
			setupTab(R.id.project_project_document_layout,"مدارک پروژه",R.drawable.setting);
			setupTab(R.id.project_project_accounts_layout,"شماره حساب ها",R.drawable.setting);
			setupTab(R.id.project_project_address_layout,"آدرس پروژه",R.drawable.setting);
			setupTab(R.id.project_project_info_layout,"مشخصات پروژه",R.drawable.setting);
			mapview m = new mapview(statics.getContext());
			m.setClickable(true);
			((RelativeLayout) findViewById(R.id.address_map_layout)).addView(m);
			setupTab(R.id.project_project_about_layout,"درباره پروژه",R.drawable.setting);
			project.setCurrentTab(project.getTabWidget().getTabCount() - 1);
			findViewById(R.id.btn_project_accounts_new)
					.setOnClickListener(this);
			findViewById(R.id.btn_project_address_new).setOnClickListener(this);
			findViewById(R.id.btn_project_document_new).setOnClickListener(this);
			findViewById(R.id.btn_project_photo_new).setOnClickListener(this);
			findViewById(R.id.profile_profpicture_imageview)
					.setOnClickListener(this);
			// tb.setIndicator(",
			// icon)setBackgroundResource(R.drawable.accordion_bg);
		}
		return project;
	}
	private void setupTab(int layoutId,String header,int picId) {
		TabSpec tb = project.newTabSpec(header);
		View tabview = createTabView(project.getContext(), header,picId);
		tb.setIndicator(tabview);
		tb.setContent(layoutId);
		project.addTab(tb);
	}

	private static View createTabView(final Context context, final String text,int picId) {
		View view = LayoutInflater.from(context)
				.inflate(R.layout.tabs_bg, null);
		TextView tv = (TextView) view.findViewById(R.id.tabsText);
		((ImageView) view.findViewById(R.id.tabs_image)).setImageResource(picId);
		tv.setText(text);
		return view;
	}
	public void setProject(TabHost project) {
		this.project = project;
	}

	@Override
	public void OnAccordionItemClicked(View v, boolean b) {
		accordionItem ai = (accordionItem) v;
		aiclicked(ai);
	}

	private void aiclicked(accordionItem ai) {
		try {
			int i = Integer.parseInt(ai.getValue()) - 1;
			if (i >= 0 && i <= 1)
				getMenuFliper().setDisplayedChild(i);
		} catch (Exception ex) {
		}
	}

	@Override
	public void OnAccordionItemClicked(View v) {
		accordionItem ai = (accordionItem) v;
		aiclicked(ai);
	}
	public ViewFlipper getMenuFliper() {
		if (menuFliper == null)
			menuFliper = (ViewFlipper) findViewById(R.id.viewFlipper2);
		return menuFliper;
	}

	public void setMenuFliper(ViewFlipper menuFliper) {
		this.menuFliper = menuFliper;
	}
	
	@Override
	public void accordionSelectedChangeed(accrodion parent,
			accordionItem selected, boolean update) {
		aiclicked(selected);
	}
	mapview m;
	
	public void setProjectAddressNew(View v) {
		AraPopupWindow q = new AraPopupWindow(getContext());
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
	public void setProjectDocumentNew(View v) {
		AraPopupWindow q = new AraPopupWindow(getContext());
		com.ara.greendroid.widget.AraPopupItem a = new com.ara.greendroid.widget.AraPopupItem(
				R.layout.project_document_new, getContext(), "مدارک جدید");
		q.addQuickAction(a);
		q.show(v);
	}
	public void setProjectPhotoNew(View v) {
		AraPopupWindow q = new AraPopupWindow(getContext());
		com.ara.greendroid.widget.AraPopupItem a = new com.ara.greendroid.widget.AraPopupItem(
				R.layout.project_photo_new, getContext(), "تصویر جدید");
		q.addQuickAction(a);
		q.show(v);
	}
}
