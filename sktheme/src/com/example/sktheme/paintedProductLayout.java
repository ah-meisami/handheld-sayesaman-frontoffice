package com.example.sktheme;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Formatter.BigDecimalLayoutForm;
import java.util.Random;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Bitmap.Config;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.ara.map.Graphics;
import com.example.sktheme.R.drawable;
import com.example.sktheme.mainScreens.productViewScreen;

import dataBase.Customer;
import dataBase.Product;
import dataBase.SupplierProduct;

@SuppressLint("WrongCall")
public class paintedProductLayout extends View implements View.OnClickListener {
	public static int count = 0;
	public static int index = 0;
	private Product product;
	public static String picextention = ".hmd";
	public static String picpath = "product" + File.separator;
	private Bitmap prodimage;
	String supplier = "";
	String brand = "";
	String name = "";
	String grade = "";
	private Paint pname;
	private Paint psupplier;
	private Paint pbrand;
	Rect rectSupplier = new Rect();
	Rect rectName = new Rect();
	Rect rectBrand = new Rect();
	Rect recGrade = new Rect();
	public static final int WIDTH = 150;
	public static final int HEIGHT = 300;
	private int w = -1;
	private int h = -1;
	private ArrayList<ProductClicked> pclickedListener = new ArrayList<paintedProductLayout.ProductClicked>();
	private int imageSize = 100;
	StarRating star = new StarRating();
	int paintx, painty;
	private Paint pimage;
	boolean b = true;
	public static final int TYPE_DEFUALT = 0;
	public static final int TYPE_PRESSED = 1;
	public static final int ANCHOR_LEFT = 0x00000001;
	public static final int ANCHOR_RIGHT = 0x00000002;
	public static final int ANCHOR_TOP = 0x00000003;
	public static final int ANCHOR_BOTTOM = 0x00000004;
	private boolean addedToCart = false;
	private boolean addedToCOmpare = false;
	int carttype = TYPE_DEFUALT;
	int comparetype = TYPE_DEFUALT;
	

	public paintedProductLayout(Context context) {
		super(context);
		dojobs();
	}

	public paintedProductLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		dojobs();
	}

	public paintedProductLayout(Product p, Context context) {
		super(context);
		setProduct(p);
		dojobs();
	}

	public paintedProductLayout(Product p, Context context, int w2, int h2) {
		super(context);
		setProduct(p);
		setW(w2 - 10);
		setH(h2);
		dojobs();
	}
	final void dojobs() {
		setAddedToCart(statics.getMycart().hasProductInlist(getProduct()));
		setAddedToCOmpare(statics.getMyCompare().hasProductInlist(getProduct()));
		setOnClickListener(this);
		setBackgroundResource(R.drawable.tiny_product_parent_background);
		setimage();
		getstrings();
		onDraw(new Canvas());
		star.setRate((int) (statics.getRandom().nextFloat()*10));
//		setMeasuredDimension(getW(), getH());
	}

	@Override
	public boolean onTouchEvent(MotionEvent event) {
		float x = event.getX();
		float y = event.getY();

		switch (event.getAction()) {
		case MotionEvent.ACTION_DOWN:
			pointerPressed(x, y);
			invalidate();
			break;
		case MotionEvent.ACTION_MOVE:
			pointerDragged(x, y);
			invalidate();
			break;
		case MotionEvent.ACTION_UP:
			pointerReleased(x, y);
			invalidate();
			break;
		default:
			carttype = TYPE_DEFUALT;
			comparetype = TYPE_DEFUALT;
			invalidate();
		}
		return super.onTouchEvent(event);
	}

	boolean drageed = false;
	float lastx, lasty;
	public static final int MAXDRAG = 20;
	public static final float percent_Y_TOP = .75f;
	public static final float percent_X_LEFT = .4f;
	public static final float percent_X_RIGHT = .6f;

	private void pointerPressed(float x, float y) {
		lastx = x;
		lasty = y;
		drageed = false;
		if (y > getH() * percent_Y_TOP) {
			if (x < getW() * percent_X_LEFT) {
				comparetype = TYPE_PRESSED;
			} else if (x > getW() * percent_X_RIGHT) {
				carttype = TYPE_PRESSED;
			}
		}
	}

	private void pointerDragged(float x, float y) {
		drageed = true;
		lastx = x;
		lasty = y;
		if (y > getH() * percent_Y_TOP) {
			if (x < getW() * percent_X_LEFT) {
				comparetype = TYPE_PRESSED;
			} else if (x > getW() * percent_X_RIGHT) {
				carttype = TYPE_PRESSED;
			}
		}
	}

	private void pointerReleased(float x, float y) {
		if (((Math.abs(lastx) - x) < MAXDRAG)
				|| ((Math.abs(lasty) - y) < MAXDRAG)) {
			if (y > getH() * percent_Y_TOP) {
				if (x < getW() * percent_X_LEFT) {
					touced(touch_selected.btn_add_to_compare_list);
				} else if (x > getW() * percent_X_RIGHT) {
					touced(touch_selected.btn_add_to_cart_product);
				}
			} else
				touced(touch_selected.product_image);
		}
		carttype = TYPE_DEFUALT;
		comparetype = TYPE_DEFUALT;
	}

	@Override
	protected void onFocusChanged(boolean gainFocus, int direction,
			Rect previouslyFocusedRect) {
		if (!gainFocus) {
			carttype = TYPE_DEFUALT;
			comparetype = TYPE_DEFUALT;
		}
		super.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
	}

	private void getstrings() {
		name = gettext(getPname(), getProduct().getProdName(), getBoundWidth());
		supplier = gettext(getPsupplier(), statics.getSupplier(getProduct()),
				getBoundWidth());
		brand = gettext(getPbrand(), "نوع کالا", getBoundWidth());
		grade = gettext(getPGrade(), "1000بازدید", getBoundWidth());
		getPname().getTextBounds(name, 0, name.length(), rectName);
		getPsupplier().getTextBounds(supplier, 0, supplier.length(),
				rectSupplier);
		getPbrand().getTextBounds(brand, 0, brand.length(), rectBrand);
		getPGrade().getTextBounds(grade, 0, grade.length(), recGrade);
	}

	@Override
	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		setMeasuredDimension(getW(), getH());
	}

	void setimage() {
		try {
			try {
				File f = new File(Environment.getExternalStorageDirectory()
						.getAbsoluteFile() + File.separator + "pics");
				if (!f.exists())
					f.mkdir();
				try {
					prodimage = imagefactory.decodeSampledBitmapFormAssest(
							getContext(), getpicpath(getProduct()),
							getImageWidth(), imageSize);
				} catch (IOException e) {
					prodimage = (imagefactory.decodeSampledBitmapFromResource(
							getContext().getResources(), R.drawable.no_pic1,
							getImageWidth(), imageSize));
				}
			} catch (OutOfMemoryError e) {

			}
		} catch (OutOfMemoryError e) {
		}
	}

	private int getImageWidth() {
		return getW() - getPaddingLeft() - getPaddingRight();
	}

	public static String getpicpath(Product product2) {
		// TODO Auto-generated method stub
		return picpath + product2.getProdID() + File.separator
				+ product2.getProdID() + "_thumb" + picextention;
	}

	public static String getbigpicpath(Product product2) {
		// TODO Auto-generated method stub
		return picpath + product2.getProdID() + File.separator
				+ product2.getProdID() + "" + picextention;

	}

	public enum touch_selected {
		btn_add_to_cart_product, btn_add_to_compare_list, product_image
	}

	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub

	}

	public void touced(touch_selected v) {
		switch (v) {
		case btn_add_to_cart_product:
			String str = "";
			if (statics.getMycart().addProductlist(this.getProduct())) {
				str = "کالا به سبد اضافه شد";
				addedToCart = true;
			} else {
				if (statics.getMycart().removeProductlist(this.getProduct())) {
					str = "کالا از سبد حذف شد";
					addedToCart = false;
				}
			}
			Toast.makeText(getContext(), str, 2000).show();
			break;
		case btn_add_to_compare_list:
			String str1 = "";
			if (statics.getMyCompare().addProductlist(this.getProduct())) {
				str1 = "کالا به لیست مقایسه  اضافه شد";
				addedToCOmpare = true;
			} else {
				if (statics.getMyCompare().removeProductlist(this.getProduct())) {
					str1 = "کالا از لیست حذف شد";
					addedToCOmpare = false;
				}
			}
			Toast.makeText(getContext(), str1, 2000).show();

			break;
		case product_image:
			for (ProductClicked p : pclickedListener) {
				try {
					p.productClicked(this);
				} catch (Exception ex) {
				}
			}
			if (pclickedListener.size() == 0) {
				productViewScreen dialog = new productViewScreen(getContext(),
						getProduct());
				dialog.show();
				Button b = new Button(getContext()) {
					@Override
					public void setBackground(Drawable background) {
						// TODO Auto-generated method stub
						super.setBackground(background);
					}
				};
			}
			break;
		default:
			break;
		}
	}

	@Override
	protected void onDraw(Canvas canvas) {
		// if(b){
		// int[] n=new int[]{0,0};
		// getLocationInWindow(n);
		// if(n[0]<=statics.width&&n[1]<=statics.height){
		// getstrings();
		// requestLayout();
		// count++;
		// System.out.println(count+":"+n[0]+":"+n[1]+":"+statics.width+":"+statics.height+":"+getProduct().getProdName());
		// b=!b;
		// }
		// }
		paintx = getPaddingLeft();
		painty = getPaddingTop();
		super.onDraw(canvas);
		try {
			canvas.drawBitmap(prodimage, getW() / 2 - prodimage.getWidth() / 2,
					painty + (getImageWidth() / 2 - prodimage.getHeight() / 2),
					getPimage());
		} catch (Exception e) {
			// TODO: handle exception
		}
		painty += getImageWidth() + 10;
		canvas.drawLine(paintx, painty, getBoundWidth() + paintx, painty,
				getPimage());
		painty += 5 + rectName.height();
		canvas.drawText(name, getW() / 2 - rectName.width() / 2, painty,
				getPname());
		painty += rectSupplier.height() + 5;
		canvas.drawText(supplier, getW() / 2 - rectSupplier.width() / 2,
				painty, getPsupplier());
		painty += rectBrand.height() + 5;
		canvas.drawText(brand, getW() / 2 - rectBrand.width() / 2, painty,
				getPbrand());
		painty += 10;

		painty += star.onDraw(canvas, paintx + getBoundWidth() / 4, painty,
				getBoundWidth() / 2, getPimage());
		painty += recGrade.height() + 5;
		canvas.drawText(grade, getW() / 2 - recGrade.width() / 2, painty,
				getPGrade());
		painty += 10;
		if (addedToCart && carttype == TYPE_DEFUALT)
			drawcart = statics.getAddToCart()[2];
		else
			drawcart = statics.getAddToCart()[carttype];
		drawimage(canvas, getPimage(), drawcart, painty - getPaddingBottom()
				+ 2, getW() - 5, getBoundWidth(), -1, 30, 30, ANCHOR_RIGHT
				| ANCHOR_BOTTOM);

		if (addedToCOmpare && comparetype == TYPE_DEFUALT)
			drawcompare = statics.getAddToCompare()[2];
		else
			drawcompare = statics.getAddToCompare()[comparetype];
		drawimage(canvas, getPimage(), drawcompare,
				painty - getPaddingBottom(), 5, getBoundWidth(), -1, 23, 23,
				ANCHOR_LEFT | ANCHOR_BOTTOM);
		if (getH() != painty) {
			setH(painty);
			invalidate();
		}
	}

	private Bitmap drawcart, drawcompare;

	private void drawimage(Canvas c, Paint p, Bitmap image, int top, int left,
			int w, int h, int distW, int distH, int anchor) {
		if (isRight(anchor))
			left -= distW;
		if (isBottom(anchor))
			top -= distH;
		Rect r = new Rect(left, top, left + distW, top + distH);
		c.drawBitmap(image, null, r, p);
	}

	private int getBoundWidth() {
		// TODO Auto-generated method stub
		return getW() - getPaddingLeft() - getPaddingRight();
	}

	public static String gettext(Paint p, String txt, int w) {
		if (w == 0)
			return ".";
		try {
			// return txt;
			Rect rect = new Rect();
			p.getTextBounds(txt, 0, txt.length(), rect);
			if (rect.width() < w)
				return txt;
			else {
				Rect rect3 = new Rect();
				p.getTextBounds("...", 0, 3, rect3);
				int i = p.breakText(txt, true, w - rect3.width(), null);
				return txt.substring(0, i) + "...";
			}
		} catch (Exception ex) {
			return txt;
		}
	}

	@Override
	protected void onSizeChanged(int w, int h, int oldw, int oldh) {
		// TODO Auto-generated method stub
		super.onSizeChanged(w, h, oldw, oldh);
		// measure(0,0);
		fitToSize(w, h);
	}

	int mymesuredW = 0;
	int mymesuredH = 0;
	private Paint pGrade;

	public void fitToSize(int w, int h) {
		setW(w);
		setH(h);
		getstrings();
		invalidate();

	}

	private void fontSizeFit(TextView t, float max) {
		if (max >= 1)
			t.setTextSize(t.getTextSize() / max);
	}

	public void addPclickedListener(ProductClicked pclickedlistener) {
		this.pclickedListener.add(pclickedlistener);
	}

	public void removePclickedListener(ProductClicked pclickedlistener) {
		this.pclickedListener.remove(pclickedlistener);
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getW() {
		if (w < 0)
			return WIDTH;
		return w;
	}

	public void setW(int w) {
		if (w < 0)
			return;
		this.w = w;
	}

	public int getH() {
		if (h < 0)
			return HEIGHT;
		return h;
	}

	public void setH(int h) {
		if (h < 0)
			return;
		this.h = h;
	}

	public Paint getPname() {
		if (pname == null) {
			pname = new Paint();
			pname.setFlags(Paint.ANTI_ALIAS_FLAG);
			pname.setTextSize(18);
			pname.setColor(0xff000000);
		}
		return pname;
	}

	public Paint getPGrade() {
		if (pGrade == null) {
			pGrade = new Paint();
			pGrade.setFlags(Paint.ANTI_ALIAS_FLAG);
			pGrade.setTextSize(13);
			pGrade.setColor(0xff909090);
		}

		return pGrade;
	}

	public void setPname(Paint pname) {
		this.pname = pname;
	}

	public Paint getPsupplier() {
		if (psupplier == null) {
			psupplier = new Paint();
			psupplier.setFlags(Paint.ANTI_ALIAS_FLAG);
			psupplier.setTextSize(15);
			psupplier.setColor(0xff000000);
		}
		return psupplier;
	}

	public void setPsupplier(Paint psupplier) {
		this.psupplier = psupplier;
	}

	public Paint getPbrand() {
		if (pbrand == null) {
			pbrand = new Paint();
			pbrand.setFlags(Paint.ANTI_ALIAS_FLAG);
			pbrand.setTextSize(15);
			pbrand.setColor(0xff000000);
		}
		return pbrand;
	}

	public void setPbrand(Paint pbrand) {
		this.pbrand = pbrand;
	}

	public Paint getPimage() {
		if (pimage == null) {
			pimage = new Paint();
			pimage.setFlags(Paint.FILTER_BITMAP_FLAG);
		}
		return pimage;
	}

	public void setPimage(Paint pimage) {
		this.pimage = pimage;
	}

	public interface ProductClicked {
		public void productClicked(paintedProductLayout p);
	}

	public boolean isTop(int value) {
		return (value & ANCHOR_TOP) == ANCHOR_TOP;
	}

	public boolean isBottom(int value) {
		return (value & ANCHOR_BOTTOM) == ANCHOR_BOTTOM;
	}

	public boolean isRight(int value) {
		return (value & ANCHOR_RIGHT) == ANCHOR_RIGHT;
	}

	public boolean isLeft(int value) {
		return (value & ANCHOR_LEFT) == ANCHOR_LEFT;
	}

	public boolean isAddedToCart() {
		return addedToCart;
	}

	public void setAddedToCart(boolean addedToCart) {
		this.addedToCart = addedToCart;
	}

	public boolean isAddedToCOmpare() {
		return addedToCOmpare;
	}

	public void setAddedToCOmpare(boolean addedToCOmpare) {
		this.addedToCOmpare = addedToCOmpare;
	}
}
