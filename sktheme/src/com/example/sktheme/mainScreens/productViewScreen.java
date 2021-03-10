package com.example.sktheme.mainScreens;

import java.io.IOException;
import java.util.ArrayList;

import com.example.sktheme.ImageGallery;
import com.example.sktheme.R;
import com.example.sktheme.TechnicalView;
import com.example.sktheme.catalog;
import com.example.sktheme.customDialog;
import com.example.sktheme.imagefactory;
import com.example.sktheme.paintedProductLayout;
import com.example.sktheme.productLayout;
import com.example.sktheme.R.drawable;
import com.example.sktheme.R.id;
import com.example.sktheme.R.layout;
import com.example.sktheme.R.style;
import com.example.sktheme.statics;
import com.example.sktheme.updateable;
import com.example.sktheme.ribbon.horizentalriboonholder;
import com.example.sktheme.ribbon.horizentalriboonholderIngroup;

import dataBase.DBUtil;
import dataBase.Limit;
import dataBase.Product;
import dataBase.ProductGroup;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.opengl.Visibility;
import android.os.AsyncTask;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.SoundEffectConstants;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TabHost;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.TabHost.TabSpec;

public class productViewScreen extends customDialog implements
		android.view.View.OnClickListener, com.example.sktheme.paintedProductLayout.ProductClicked,updateable{
	private Product myProduct;
	private RelativeLayout product_left_side_layout;
	private LinearLayout leftmenu;
	private Animation out;
	private Animation in;
	Productrow productRow;
	private Handler handler;
	private TabHost groupRibbons;
	public productViewScreen(Context context, Product p) {
		super(context, R.style.mydialogstyle);
		handler=new Handler();
		this.setMyProduct(p);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(LayoutParams.FLAG_FULLSCREEN,
				LayoutParams.FLAG_FULLSCREEN);
		getWindow().setBackgroundDrawable(
				new ColorDrawable(android.graphics.Color.TRANSPARENT));
		setContentView(R.layout.productview);
		findViewById(R.id.dialog_parent).setOnClickListener(this);
		// dialog.setTitle("کالای انتخابی");
		// ((ImageView) findViewById(R.id.product_image_productview))
		// .setImageResource(p.picId);
		RelativeLayout l = (RelativeLayout) findViewById(R.id.gallery_layout);
		try {
			ImageGallery img = new ImageGallery(
					new Bitmap[] { imagefactory.decodeSampledBitmapFormAssest(
							getContext(), productLayout.getbigpicpath(p)) },
					getContext());

			l.addView(img);
			img.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(
					android.widget.RelativeLayout.LayoutParams.FILL_PARENT,
					android.widget.RelativeLayout.LayoutParams.FILL_PARENT));
			((android.widget.RelativeLayout.LayoutParams) img.getLayoutParams())
					.addRule(RelativeLayout.ALIGN_BOTTOM);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		leftmenu = (LinearLayout) findViewById(R.id.left_menu_lin_l);
		menuClickHandeler m = new menuClickHandeler();
		for (int i = 0; i < leftmenu.getChildCount(); i++) {
			ViewGroup v = (ViewGroup) leftmenu.getChildAt(i);
			if (v.getId() != R.id.none) {
				v.setOnClickListener(m);
			}
		}
		product_left_side_layout = (RelativeLayout) findViewById(R.id.product_view_left_side_layout);
		product_left_side_layout.setOnClickListener(this);
		findViewById(R.id.close_dailog).setOnClickListener(this);
		Button b = (Button) findViewById(R.id.btn_product_detail_screen_back);
		b.setOnClickListener(this);
		TextView txtHeader = (TextView) findViewById(R.id.txt_header_product_view);
		txtHeader.setTypeface(statics.getTitrfontfac());
		txtHeader.setText(p.getProdName());
		txtHeader.setTextSize(30);
		out = AnimationUtils
				.loadAnimation(getContext(), R.anim.goleftsideanime);
		in = AnimationUtils
				.loadAnimation(getContext(), R.anim.gorightsideanime);
		animationl alestiner = new animationl();
		out.setAnimationListener(alestiner);

		out.setAnimationListener(alestiner);
		// TODO Auto-generated constructor stub
		RelativeLayout pinfo_layout = (RelativeLayout) findViewById(R.id.relativeLayout2);
		pinfo_layout.getLayoutParams().width = (int) (getWindow()
				.getWindowManager().getDefaultDisplay().getWidth() * .30);
		findViewById(R.id.btn_add_to_cart_prodview).setOnClickListener(this);
		RelativeLayout ingroup = (RelativeLayout) findViewById(R.id.ingroup_layout);
		ProductGroup pg = new ProductGroup();
		pg.setGrpID(p.getProdGrpID());
		pg.load();
		horizentalriboonholderIngroup h = new horizentalriboonholderIngroup(
				getContext(), pg,p, true, this);
		ingroup.addView(h);
		productRow = new Productrow(p, false);
		findViewById(R.id.imgview_forward_prodview).setOnClickListener(this);
		findViewById(R.id.imgview_backward_prodview).setOnClickListener(this);
		if(statics.getMycart().hasProductInlist(p))
			((ImageButton)findViewById(R.id.btn_add_to_cart_prodview)).setImageResource(R.drawable.cart1);
		getgroupRibbons();
	}
	public TabHost getgroupRibbons() {
		if (groupRibbons == null) {
			groupRibbons = (TabHost) findViewById(android.R.id.tabhost);
			groupRibbons.setup();
			setupTab(R.id.ingroup_layout, "کالا های هم گروه",R.drawable.setting);
			groupRibbons.setCurrentTab(groupRibbons.getTabWidget().getTabCount() - 1);
			// tb.setIndicator(",
			// icon)setBackgroundResource(R.drawable.accordion_bg);
		}
		return groupRibbons;
	}
	private void setupTab(int layoutId,String header,int picId) {
		TabSpec tb = groupRibbons.newTabSpec(header);
		View tabview = createTabView(groupRibbons.getContext(), header,picId);
		tb.setIndicator(tabview);
		tb.setContent(layoutId);
		groupRibbons.addTab(tb);
	}
	private static View createTabView(final Context context, final String text,int picId) {
		View view = LayoutInflater.from(context)
				.inflate(R.layout.tabs_bg, null);
		TextView tv = (TextView) view.findViewById(R.id.tabsText);
		((ImageView) view.findViewById(R.id.tabs_image)).setImageResource(picId);
		tv.setText(text);
		return view;
	}
@Override
public void dismiss() {
	super.dismiss();
	new Thread(new Runnable() {
		
		@Override
		public void run() {
//			try {
//				Thread.sleep(500);
//			} catch (InterruptedException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			homeScreen h=statics.getHomescreen();
			if(h!=null)
				h.updateData();
		}
	}).start();
}
	int color = 0x00ffffff;
	int bgresource = R.drawable.product_view_seleted_left;
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_add_to_cart_prodview:
			String str = "";
			if (statics.getMycart().addProductlist(this.getMyProduct())){
				str = "کالا به سبد اضافه شد";
				((ImageButton)v).setImageResource(R.drawable.cart1);
			}
			else{
				statics.getMycart().removeProductlist(this.getMyProduct());
				str = "کالا از سبد حذف شد.";
				((ImageButton)v).setImageResource(R.drawable.cart);
			}
			Toast.makeText(getContext(), str, 2000).show();
			updateData();
			break;
		case R.id.imgview_forward_prodview:
			Product selected = productRow.getnext();
			if (selected != null) {
				productViewScreen dialog1 = new productViewScreen(getContext(),
						selected);
				setOutAnimation(outToRightAnimation());
				dialog1.setInAnimation(inFromLeftAnimation());
				dialog1.show();
				dismiss();
			}
			break;
		case R.id.imgview_backward_prodview:
			Product selected1 = productRow.getLast();
			if (selected1 != null) {
				productViewScreen dialog1 = new productViewScreen(getContext(),
						selected1);
				setOutAnimation(outToLeftAnimation());
				dialog1.setInAnimation(inFromRightAnimation());
				dialog1.show();
				dismiss();
			}
			break;
		default:
			break;
		}
		if (v.getId() == R.id.close_dailog) {
			dismiss();
		} else if (v.getId() == R.id.dialog_parent) {
			boolean b = false;
			for (int i = 0; i < leftmenu.getChildCount(); i++) {
				ViewGroup lmenu = (ViewGroup) leftmenu.getChildAt(i);
				if (lmenu.getId() != R.id.none) {
					TextView t = (TextView) lmenu
							.findViewById(R.id.left_menu_state);
					if (t.getText().toString().compareTo("0") != 0)
						b = true;
					if (t.getText().toString().compareTo("0") != 0) {
						lmenu.findViewById(R.id.product_view_left_side_selected)
								.setBackgroundColor(color);
						leftmenuchanged(0, lmenu);
					}
				}
			}
			if (b) {
				doin = false;
				product_left_side_layout.startAnimation(out);
			}
			product_left_side_layout.setVisibility(View.INVISIBLE);
		} else if (v.getId() == R.id.btn_product_detail_screen_back) {
			dismiss();
		}
	}
	public void setvisibleInvisble(View v) {
		RelativeLayout r = (RelativeLayout) v;
		RelativeLayout selected = (RelativeLayout) r
				.findViewById(R.id.product_view_left_side_selected);
		boolean b = false;
		for (int i = 0; i < leftmenu.getChildCount(); i++) {
			ViewGroup lmenu = (ViewGroup) leftmenu.getChildAt(i);
			if (lmenu.getId() != R.id.none) {
				if (lmenu != v) {
					TextView t = (TextView) lmenu
							.findViewById(R.id.left_menu_state);
					if (t.getText().toString().compareTo("0") != 0) {
						b = true;
						lmenu.findViewById(R.id.product_view_left_side_selected)
								.setBackgroundColor(color);
						leftmenuchanged(0, lmenu);
					}
				}
			}
		}

		if (product_left_side_layout != null) {
			if (product_left_side_layout.getVisibility() == View.VISIBLE && !b) {
				leftmenuchanged(0, (ViewGroup) v);
				selected.setBackgroundColor(color);
				doin = false;
				doOutanimation = true;

			} else {
				leftmenuchanged(1, (ViewGroup) v);
				selected.setVisibility(View.VISIBLE);
				selected.setBackgroundResource(bgresource);
				product_left_side_layout.setVisibility(View.VISIBLE);
				if (b) {
					doin = true;
					doOutanimation = true;

				} else
					doOutanimation = false;
			}
		}	
	}

	boolean doin = false;
	boolean doOutanimation = false;
	View layoutid;
	int layoutwidth;
	int images[][]=new int[][]{{R.drawable.tecnical_ico,R.drawable.catalog_ico,R.drawable.help_ico,R.drawable.survey_ico,R.drawable.warranty_ico}
	,{R.drawable.tecnical_ico1,R.drawable.catalog_ico1,R.drawable.help_ico1,R.drawable.survey_ico1,R.drawable.warranty_ico1}};
	public void leftmenuchanged(int value,ViewGroup v){
		((TextView) v.findViewById(R.id.left_menu_state)).setText(value+"");
		String a=getContext().getResources().getResourceName(v.getId());
		char ch=a.charAt(a.length()-1);
		int i=Integer.parseInt(ch+"");
		i--;
		if(value==1)
		((TextView)v.findViewById(R.id.txt_lmenu)).setTextColor(0xffffffff);
		else
			((TextView)v.findViewById(R.id.txt_lmenu)).setTextColor(0xff909090);
		((ImageView)v.findViewById(R.id.img_lmenu)).setImageResource(images[value][i]);
	}
	public class menuClickHandeler implements android.view.View.OnClickListener {

		@Override
		public void onClick(View v) {
			setvisibleInvisble(v);
			if (product_left_side_layout.getVisibility() == View.VISIBLE) {
				layoutid = null;
				layoutwidth = 670;
				boolean b=false;
				if (v.getId() == R.id.left_menu_1) {
					layoutid = new TechnicalView(getContext(),getMyProduct());
//					layoutwidth = 800;
				} else if (v.getId() == R.id.left_menu_2) {
					layoutid = new catalog(getContext(),getMyProduct());
				} else if (v.getId() == R.id.left_menu_3) {
					layoutid = View.inflate(getContext(), R.layout.product_using_help,null);
//					layoutwidth = 800;
				} else if (v.getId() == R.id.left_menu_4) {
					layoutid =View.inflate(getContext(), R.layout.product_survey,null); 
				} else if (v.getId() == R.id.left_menu_5) {
					layoutid =View.inflate(getContext(), R.layout.product_warranty,null);
				}
			}

			if (doOutanimation)
				product_left_side_layout.startAnimation(out);
			else {
				product_left_side_layout.getLayoutParams().width = layoutwidth;
				product_left_side_layout.removeAllViews();
				product_left_side_layout.addView(layoutid);
				product_left_side_layout.startAnimation(in);
				
			}
		}

	}
	public class animationl implements AnimationListener {
		@Override
		public void onAnimationEnd(Animation animation) {
			if (animation == out) {
				if (doin) {
					product_left_side_layout.getLayoutParams().width = layoutwidth;
					product_left_side_layout.removeAllViews();
					product_left_side_layout.addView(layoutid);
					product_left_side_layout.startAnimation(in);
				} else {
					product_left_side_layout.setVisibility(View.INVISIBLE);
				}
			}
		}

		@Override
		public void onAnimationRepeat(Animation animation) {
			// TODO Auto-generated method stub

		}

		@Override
		public void onAnimationStart(Animation animation) {
		}
	}

	public class Productrow {
		ArrayList<Product> list = new ArrayList<Product>();
		int index = 0;

		public Productrow(Product product, boolean b) {
			ArrayList<horizentalriboonholder> productGrplist = new ArrayList<horizentalriboonholder>();
			ArrayList<Limit> limitsArray = new ArrayList<Limit>();
			limitsArray.add(new Limit(dataBase.DBUtil.TblFields.GrpParentID,
					product.getProdGrpID() + "", DBUtil.LimitType.ItIs,
					DBUtil.LimitTail.AND));
			ArrayList<ProductGroup> result = new ProductGroup().getAll(null,
					limitsArray, null,null);
			ArrayList<Limit> limits = new ArrayList<Limit>();
			limits.add(new Limit(dataBase.DBUtil.TblFields.ProdGrpID, product
					.getProdGrpID() + "", DBUtil.LimitType.ItIs,
					DBUtil.LimitTail.AND));
			if (b)
				for (int i = 0; i < result.size(); i++)
					limits.add(new Limit(dataBase.DBUtil.TblFields.ProdGrpID,
							result.get(i).getGrpID() + "",
							DBUtil.LimitType.ItIs, DBUtil.LimitTail.OR));
			list = new dataBase.Product().getAll(null, limits, null,null);
			// TODO Auto-generated constructor stub
			for (int i = 0; i < list.size(); i++) {
				if (list.get(i).getProdID() == product.getProdID()) {
					index = i;
					break;
				}
			}
		}
		public Product getnext() {
			if (list.size() == 1)
				return null;
			index = (index + 1) % list.size();
			return list.get(index);
		}

		public Product getLast() {
			if (list.size() == 1)
				return null;
			index -= 1;
			if (index < 0)
				index = list.size() - 1;
			return list.get(index);
		}
	}
	@Override
	public void productClicked(paintedProductLayout p) {
		///////////this if is never happenning
		if(p.getProduct().getProdID()==getMyProduct().getProdID()){
			Toast.makeText(getContext(),"کالای مورد نظر هم اکنون در حال نمایش است", 2000).show();
			return;
		}
		setOutAnimation(outToLeftAnimation());
		productViewScreen pv=new productViewScreen(getContext(), p.getProduct());
		pv.setInAnimation(inFromRightAnimation());
		pv.show();
		dismiss();
	}
	@Override
	public void newdismis() {
		
		super.newdismis();
		
	}

	public Product getMyProduct() {
		return myProduct;
	}

	public void setMyProduct(Product myProduct) {
		this.myProduct = myProduct;
	}
private Animation inFromRightAnimation() {
		
		Animation inFromRight = new TranslateAnimation(
		Animation.RELATIVE_TO_PARENT,  +1.0f, Animation.RELATIVE_TO_PARENT,  0.0f,
		Animation.RELATIVE_TO_PARENT,  0.0f, Animation.RELATIVE_TO_PARENT,   0.0f
		);
		inFromRight.setDuration(500);
		inFromRight.setInterpolator(new AccelerateInterpolator());
		return inFromRight;
		}
	private Animation outToLeftAnimation() {
		Animation outtoLeft = new TranslateAnimation(
		  Animation.RELATIVE_TO_PARENT,  0.0f, Animation.RELATIVE_TO_PARENT,  -1.0f,
		  Animation.RELATIVE_TO_PARENT,  0.0f, Animation.RELATIVE_TO_PARENT,   0.0f
		);
		outtoLeft.setDuration(500);
		outtoLeft.setInterpolator(new AccelerateInterpolator());
		return outtoLeft;
		}
		private Animation inFromLeftAnimation() {
		Animation inFromLeft = new TranslateAnimation(
		Animation.RELATIVE_TO_PARENT,  -1.0f, Animation.RELATIVE_TO_PARENT,  0.0f,
		Animation.RELATIVE_TO_PARENT,  0.0f, Animation.RELATIVE_TO_PARENT,   0.0f
		);
		inFromLeft.setDuration(500);
		inFromLeft.setInterpolator(new AccelerateInterpolator());
		return inFromLeft;
		}
		private Animation outToRightAnimation() {
		Animation outtoRight = new TranslateAnimation(
		  Animation.RELATIVE_TO_PARENT,  0.0f, Animation.RELATIVE_TO_PARENT,  +1.0f,
		  Animation.RELATIVE_TO_PARENT,  0.0f, Animation.RELATIVE_TO_PARENT,   0.0f
		);
		outtoRight.setDuration(500);
		outtoRight.setInterpolator(new AccelerateInterpolator());
		return outtoRight;
		}
		@Override
		public void updateData() {
			handler.post(new Runnable() {
				
				@Override
				public void run() {
					ViewGroup h = (ViewGroup) findViewById(R.id.ingroup_layout);
					h=(ViewGroup) h.getChildAt(0);
					if(h!=null&&h instanceof updateable)
						((updateable)h).updateData();
					
				}
			});
			
			
		}
}
