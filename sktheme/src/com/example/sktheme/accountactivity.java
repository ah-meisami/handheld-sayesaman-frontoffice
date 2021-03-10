package com.example.sktheme;

import java.util.ArrayList;

import org.mapsforge.android.maps.MapActivity;

import com.ara.map.vector.mapview;
import com.example.sktheme.accountMenu.menuAccordion;
import com.example.sktheme.accountMenu.menuItem;
import com.example.sktheme.mainScreens.splashScreen;
import dataBase.AppConfig;
import dataBase.DatabaseHandler;
import dataBase.Product;
import accordionPkg.AccordionPreferences;
import accordionPkg.accordionItem;
import accordionPkg.accrodion;
import android.os.Bundle;
import android.os.Handler;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;

public class accountactivity extends MapActivity implements OnClickListener {
	private accrodion info_accordion;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		statics.setContext((Context) this);
		statics.setHandler(new Handler());
		AppConfig.CurrentContext = this;
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
		setContentView(R.layout.hamidtest);
		findViewById(R.id.btn_load).setOnClickListener(this);
//		ScrollView sv=new ScrollView(this);
//		sv.setBackgroundColor(0xff0000ff);
//		LinearLayout l=new LinearLayout(this);
//		sv.addView(l);
//		l.addView(View.inflate(this, R.layout.vector_map, null));
//		setContentView(sv);
//		menuAccordion accountmenu=(menuAccordion) findViewById(R.id.menu_account_accordion);
//		AccordionPreferences acp=new AccordionPreferences();
//		acp.setHideUpperBrothers(false);
//		acp.setMenutype(acp.MENUTYPE_ACCOUNT_MENU);
//		accountmenu.setPreferences(acp);
//		ArrayList<menuItem> mitems=new ArrayList<menuItem>();
//		int i=0;
//		mitems.add(new menuItem(++i,"پروفایل کاربر",R.drawable.ic_launcher));
//		mitems.add(new menuItem(++i,"مشخصات پروژه",R.drawable.ic_launcher));
//		mitems.add(new menuItem(++i,"درخواست های خرید",R.drawable.ic_launcher));
//		mitems.add(new menuItem(++i,"استعلام های دریافتی",R.drawable.ic_launcher));
//		mitems.add(new menuItem(++i,"مناقصات",R.drawable.ic_launcher));
//		mitems.add(new menuItem(++i,"پرداخت ها و دریافت ها",R.drawable.ic_launcher));
//		mitems.add(new menuItem(++i,"گزارشات",R.drawable.ic_launcher));		
////		mitems.add(new menuItem(2,"پروژه",R.drawable.ic_launcher));
////		menuItem m1=new menuItem(3,"اطلاعات تماس",R.drawable.ic_launcher);
////		m1.addChild(new menuItem(4, "اطلاعات محلی", R.drawable.ic_launcher));
////		mitems.add(m1);
//		accountmenu.addacordeonto1(accountmenu, mitems);
//        Button b=(Button) findViewById(R.id.btn_account_screen_back);
//        b.setOnClickListener(this);
//        b.requestFocus();
//        //creating accordion for profile infprmation
//        info_accordion=new accrodion(this);
//        info_accordion.setPreferences(acp);
//        accordionItem ai=new accordionItem(this, info_accordion.getPreferences());
//        ai.getChild().setBackgroundColor(0x00ffffff);
//        View.inflate(this, R.layout.profile_sub,ai.getChild());
//        ///accordion مشخصات فردی
//        ai.getHeader().setCaption("مشخصات فردی");
//        info_accordion.addView(ai);
//        //accordion مشخصات تحصیلی
//        ai=new accordionItem(this, info_accordion.getPreferences());
//        ai.getChild().setBackgroundColor(0x00ffffff);
//       View.inflate(this, R.layout.prof_edu, ai.getChild());
//        ai.getHeader().setCaption("مشخصات تحصیلی");
//        info_accordion.addView(ai);
//        //accordion مشخصات سازمانی
//        ai=new accordionItem(this, info_accordion.getPreferences());
//        ai.getChild().setBackgroundColor(0x00ffffff);
//        View.inflate(this, R.layout.prof_unit, ai.getChild());
//        ai.getHeader().setCaption("مشخصات سازمانی");
//        info_accordion.addView(ai);
//        ((accrodion) (findViewById(R.id.accrodion_info1))).addView(info_accordion);
        
	}
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		return true;
	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_load:
		{
			int id=-1;
			try{
				id=Integer.parseInt(((EditText)findViewById(R.id.txt_product_to_load)).getText()+"");
			}
			catch(Exception ex){
				
			}
			if(id>-1){
				Product p=new Product();
				p.setProdID(id);
				p.load();
				productLayout playout=new  productLayout(p, this,2);
				((LinearLayout)findViewById(R.id.productList)).addView(playout);
			}
		}
			break;

		default:
			break;
		}
	}

	@Override
	protected void onPause() {
		super.onPause();
	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		super.onConfigurationChanged(newConfig);
	}
}
