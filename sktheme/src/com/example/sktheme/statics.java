package com.example.sktheme;

import java.io.File;
import java.util.ArrayList;
import java.util.Random;

import com.ara.filter.Filter;
import com.example.sktheme.mainScreens.homeScreen;

import dataBase.Customer;
import dataBase.Product;
import dataBase.SupplierProduct;
import accordionPkg.accordionItem;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ImageFormat;
import android.graphics.Typeface;
import android.graphics.Bitmap.Config;
import android.os.Environment;
import android.os.Handler;
import android.view.View;
import android.widget.TextView;

public final class statics {
	static Typeface titrfontfac;
	static Context context;
	private static cart Mycart;
	private static Filter myfilter;
	private static CompareList myCompare;
	private static String filePath;
	static Activity activity;
	public static int width;
	public static int height;
	private static Bitmap activeStar;
	private static Bitmap onOff[];
	private static Bitmap inactiveStar;
	private static Bitmap addToCart[];
	private static Bitmap addToCompare[];
	private static homeScreen homescreen;
	private static Handler handler;
	private static Bitmap[] checkingPic;
	private static accordionItem parentAccordion;
	private static ArrayList<View> content=new ArrayList<View>();
	private static Random random;
	public static void setTitrfontfac() {
		statics.titrfontfac = Typeface.createFromAsset(context.getAssets(),
				"font.TTF");
	}

	public static Typeface getTitrfontfac() {
		if (titrfontfac == null)
			setTitrfontfac();
		return titrfontfac;
	}
	public static void setContext(Context c) {
		statics.context = c;
		width = getActivity().getWindowManager().getDefaultDisplay().getWidth();
		height =  getActivity().getWindowManager().getDefaultDisplay().getHeight();
	}

	public static cart getMycart() {
		if (Mycart == null)
			Mycart = new cart();
		return Mycart;
	}
	public static Activity getActivity() {
		if (activity == null)
			activity = (Activity) getContext();
		return activity;
	}

	public static Context getContext() {
		return context;
	}
	
	public static String getSupplier(Product product){
		
		int count=new SupplierProduct().getSuppliersCount(product.getProdID());
		if(count>1)
		return count+" تامین کننده";
		else
		{
			try{
			Customer customer=new Customer();
			if(product.getSupplierID()<1)
				product.load();
			customer.setCustID(product.getSupplierID());
			customer.load();
			return customer.getCompanyName().equals("")?((customer.getFirstName().equals("")?"فاقد نام":customer.getFirstName()+" "+customer.getLastName())):customer.getCompanyName();
			}catch(Exception ex){
				return "فاقد تامین کننده";
			}
		}
	}

	public static CompareList getMyCompare() {
		if(myCompare==null)
			myCompare=new CompareList();
		return myCompare;
	}

	public static String getFilePath() {
		if(filePath==null){
			File f=Environment.getExternalStorageDirectory();
			filePath=f.getAbsolutePath()+File.separator+"databases"+File.separator;
		}
		return filePath;
	}

	public static Filter getMyfilter() {
		if(myfilter==null)
			myfilter=new Filter();
		return myfilter;
	}

	public static Bitmap getActiveStar() {
		if(activeStar==null)
			activeStar=BitmapFactory.decodeResource(getContext().getResources(), R.drawable.star);
		return activeStar;
	}

	public static void setActiveStar(Bitmap activeStar) {
		statics.activeStar = activeStar;
	}

	public static Bitmap getInactiveStar() {
		if(inactiveStar==null)
			inactiveStar=BitmapFactory.decodeResource(getContext().getResources(), R.drawable.starempty);
		return inactiveStar;
	}

	public static void setInactiveStar(Bitmap inactiveStar) {
		statics.inactiveStar = inactiveStar;
	}
static Bitmap bitmap1in1;
	public static Bitmap get1in1bitmap() {
		if(bitmap1in1==null)
			bitmap1in1=Bitmap.createBitmap(1,1,Config.ARGB_8888);
		return bitmap1in1;
	}

	public static Bitmap[] getAddToCart() {
		if(addToCart==null){
			addToCart=new Bitmap[3];
			addToCart[0]=BitmapFactory.decodeResource(getContext().getResources(), R.drawable.cart);
			addToCart[1]=BitmapFactory.decodeResource(getContext().getResources(), R.drawable.cart0);
			addToCart[2]=BitmapFactory.decodeResource(getContext().getResources(), R.drawable.cart1);
		}
		return addToCart;
	}

	public static Bitmap[] getAddToCompare() {
		if(addToCompare==null){
			addToCompare=new Bitmap[3];
			addToCompare[0]=BitmapFactory.decodeResource(getContext().getResources(), R.drawable.compare);
			addToCompare[1]=BitmapFactory.decodeResource(getContext().getResources(), R.drawable.compare0);
			addToCompare[2]=BitmapFactory.decodeResource(getContext().getResources(), R.drawable.compare1);
		}
		return addToCompare;
	}

	public static homeScreen getHomescreen() {
		return homescreen;
	}

	public static void setHomescreen(homeScreen homescreen) {
		statics.homescreen = homescreen;
	}

	public static Handler getHandler() {
		return handler;
	}

	public static void setHandler(Handler handler) {
		statics.handler = handler;
	}

	public static Bitmap[] getOnOff() {
		if(onOff==null){
			onOff=new Bitmap[2];
			onOff[0]=BitmapFactory.decodeResource(getContext().getResources(), R.drawable.off);
			onOff[1]=BitmapFactory.decodeResource(getContext().getResources(), R.drawable.on);
		}
		return onOff;
	}
	public static Bitmap[] getcheckingPic() {
		if(checkingPic==null){
			checkingPic=new Bitmap[2];
			checkingPic[0]=BitmapFactory.decodeResource(getContext().getResources(), R.drawable.checkbox_off_background);
			checkingPic[1]=BitmapFactory.decodeResource(getContext().getResources(), R.drawable.checkbox_on_background);
		}
		return checkingPic;
	}

	public static accordionItem getParentAccordion() {
		return parentAccordion;
	}

	public static void setParentAccordion(accordionItem parentAccordion) {
		statics.parentAccordion = parentAccordion;
	}
	public static void addContent(View v) {
			getContent().remove(v);
			getContent().add(v);
	}

	public static ArrayList<View> getContent() {
		return content;
	}

	public static void removeContent(View v) {
		getContent().remove(v);
		
	}

	public static View getContentTop() {
		if(getContent().size()==0)
			return null;
		return getContent().get(getContent().size()-1);
	}

	public static Random getRandom() {
		if(random==null)
			random=new Random(System.currentTimeMillis());
		return random;
	}

	public static void setRandom(Random random) {
		statics.random = random;
	}


}
