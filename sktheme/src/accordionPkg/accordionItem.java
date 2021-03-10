package accordionPkg;

import java.util.ArrayList;
import java.util.Vector;

import com.ara.filter.Filter.filterItemAddRemoveListener;
import com.ara.filter.FilterItem;
import com.ara.filter.filterView;
import com.ara.filter.filterView.FilterViewChangeListener;
import com.example.sktheme.R;
import com.example.sktheme.customAnimationListener;
import com.example.sktheme.customAnime;
import com.example.sktheme.statics;
import com.example.sktheme.mainScreens.account_screen;

import dataBase.Customer;
import dataBase.DataSourceTools;
import dataBase.SupplierProduct;
import android.R.integer;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class accordionItem extends RelativeLayout implements
		customAnimationListener, android.view.View.OnClickListener,
		filterItemAddRemoveListener, FilterViewChangeListener {
	private int tempvisiblity = VISIBLE;
	public boolean initial = true;
	int height_v = 0;
	int width_v = 0;
	private String value = "";
	private boolean closemyself = false;
	private boolean lock = false;
	private AccordionPreferences preferences;
	Vector<accordionItemOnClickListener> clicklisteners = new Vector<accordionItemOnClickListener>();
	private int state = AccordionPreferences.TYPE_NOT_SELECTED;
	accordionChild child;
	private AcordionHeader header;
	View footer;
	
	public accordionItem(Context context, AccordionPreferences preferences) {
		super(context);
		this.preferences = preferences;
		dojobs(true);
	}

	public accordionItem(Context context, MenuItemF menuItemF,
			accrodion accrodion, AccordionPreferences preferences) {
		super(context);
		clicklisteners.add(accrodion);
		this.preferences = preferences;
		dojobs(true);
		getHeader().setCaption(menuItemF.caption);
		setValue(menuItemF.getValue() + "");
	}

	public void open() {

	}

	final void dojobs(boolean b) {
		setId(R.id.accordion);
		// setOrientation(LinearLayout.VERTICAL);
		LayoutInflater inflater = (LayoutInflater) getContext()
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		header = new AcordionHeader(getContext(), getPreferences());
		header.setId(R.id.header);
		addView(header);
		child = new accordionChild(getContext());
		addView(child);
		inflater.inflate(R.layout.accordion_footer, this, true);
		footer = findViewById(R.id.footer);
		LayoutParams params = (RelativeLayout.LayoutParams) child
				.getLayoutParams();
		params.addRule(ALIGN_PARENT_LEFT);
		params.addRule(ALIGN_PARENT_RIGHT);
		params.addRule(RelativeLayout.BELOW, header.getId());
		child.setLayoutParams(params);
		params = (RelativeLayout.LayoutParams) footer.getLayoutParams();
		params.addRule(ALIGN_PARENT_LEFT);
		params.addRule(RelativeLayout.BELOW, child.getId());
		footer.setLayoutParams(params);
		if(getPreferences().isShowFooterAtstart())
			footer.setVisibility(VISIBLE);
		header.setOnClickListener(this);
		getViewTreeObserver().addOnGlobalLayoutListener(
				new ViewTreeObserver.OnGlobalLayoutListener() {
					@Override
					public void onGlobalLayout() {
						try {
							LinearLayout ch = (LinearLayout) findViewById(R.id.child);
							if (initial) {
								// for (int i = 0; i < ch.getChildCount(); i++)
								// {
								// if (ch.getChildAt(i).getId() ==
								// R.id.accordion) {
								// childs_h += ch.getChildAt(i).findViewById(
								// R.id.child).getMeasuredHeight();
								// footer_h+=ch.getChildAt(i).findViewById(R.id.footer).getMeasuredHeight();
								// }
								// }
								height_v = getMeasuredHeight()
										- (ch.getMeasuredHeight());
								width_v = getMeasuredWidth();
								initial = !initial;
							} else {

							}
						} catch (Exception ex) {
						}
						;
					}
				});
		if (b) {
			// header.findViewById(R.id.headerImage).setVisibility(GONE);
			// header.findViewById(R.id.btn_open_close).setVisibility(GONE);
			// LayoutParams l=(LayoutParams)
			// (header.findViewById(R.id.headertext).getLayoutParams());
			// l.addRule(CENTER_HORIZONTAL);
		}
	}

	@Override
	public void setVisibility(int visibility) {
		super.setVisibility(visibility);
	}

	public int getTempvisiblity() {
		return tempvisiblity;
	}

	public accordionChild getChild() {
		return child;
	}

	public View getFooter() {
		return footer;
	}

	Thread animationTRD;

	public void setTempvisiblity(int tempvisiblity) {
		if (animationTRD == null || !animationTRD.isAlive()) {
			this.tempvisiblity = tempvisiblity;
			try {
				myAnim a = new myAnim(this, 300);
				animationTRD = new Thread(a);
				animationTRD.start();
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
	}
public accordionItem getparent() {
	ViewGroup v=this;
	while(v!=getRootView()){
		if(v.getParent() instanceof accordionItem)
			return (accordionItem) v.getParent();
		v=(ViewGroup) v.getParent();
	}
	return null;
}
public accordionItem getRootAccordionItem() {
	accordionItem parent=this;
	ViewGroup v=this;
	while(v!=getRootView()){
		if(v.getParent() instanceof accordionItem)
			parent=(accordionItem) v.getParent();
		v=(ViewGroup) v.getParent();
	}
	if(parent==this)
		return null;
	return parent;
}
	public class myAnim extends customAnime {
		public ViewGroup v;
		public long duration;
		public int framerate = 50;
		public LinearLayout.LayoutParams p;
		public myAnim(ViewGroup v, long duration) {
			this.v = v;
			this.duration = duration;
			p = (android.widget.LinearLayout.LayoutParams) v.getLayoutParams();
		}
		@Override
		public void run() {
			if (getTempvisiblity() == VISIBLE) {
				visibleAnime();
			} else if (getTempvisiblity() == GONE) {
				goneAnimation();
			}
		}

		public void goneAnimation() {
			try {
				animationStarted(Thread.currentThread(), this);
				// TODO Auto-generated method stub
				int h = getMeasuredHeight();
				p = (android.widget.LinearLayout.LayoutParams) v
						.getLayoutParams();
				p.height = getMeasuredHeight();
				float f = (float) h / ((float) duration / (float) framerate);
				float newh = p.height;
				while (p.height > 0) {
					try {
						try {
							Thread.sleep(framerate);
						} catch (InterruptedException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						p = (android.widget.LinearLayout.LayoutParams) (v
								.getLayoutParams());
						newh -= f;
						p.height = (int) newh;
						if (p.height < 0)
							p.height = 0;
						statics.getHandler().post(new Runnable() {
									public void run() {
										myAnim.this.v
												.setLayoutParams(myAnim.this.p);
										measure(0, 0);
										// ((Activity) getContext()).getWindow()
										// .getDecorView().requestLayout();
										// ((Activity) getContext()).getWindow()
										// .getDecorView().invalidate();
									}
								});
					} catch (Exception ex) {
					}
				}
				if (getTempvisiblity() == GONE) {
					((Activity) accordionItem.this.getContext())
							.runOnUiThread(new Runnable() {
								public void run() {
									setVisibility(getTempvisiblity());
								}
							});
				}
			} catch (Exception ex) {

			}
			animationFinished(Thread.currentThread(), this);
		}

		public void visibleAnime() {
					statics.getHandler().post(new Runnable() {
						public void run() {
							setVisibility(tempvisiblity);
						}
					});
			try {
				animationStarted(Thread.currentThread(), this);
				// TODO Auto-generated method stub
				int h = height_v;
				p = (android.widget.LinearLayout.LayoutParams) v
						.getLayoutParams();
				p.height = 0;
				statics.getHandler().post(new Runnable() {
							public void run() {
								myAnim.this.v.setLayoutParams(myAnim.this.p);
								measure(0, 0);
								// ((Activity) getContext()).getWindow()
								// .getDecorView().requestLayout();
								// ((Activity) getContext()).getWindow()
								// .getDecorView().invalidate();
							}
						});
				v.postInvalidate();
				float f = (float) h / ((float) duration / (float) framerate);
				float newh = 0;
				while (p.height < h) {
					try {
						try {
							Thread.sleep(framerate);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
						p = (android.widget.LinearLayout.LayoutParams) (v
								.getLayoutParams());
						newh += f;
						p.height = (int) newh;
						if (p.height > h)
							p.height = h;
						statics.getHandler().post(new Runnable() {
									public void run() {
										myAnim.this.v
												.setLayoutParams(myAnim.this.p);
										measure(0, 0);
										// ((Activity) getContext()).getWindow()
										// .getDecorView().requestLayout();
										// ((Activity) getContext()).getWindow()
										// .getDecorView().invalidate();
									}
								});
					} catch (Exception ex) {
					}
				}
			} catch (Exception ex) {

			}
			animationFinished(Thread.currentThread(), this);
		}
	}

	@Override
	public void animationStarted(Thread t, customAnime a) {
		// TODO Auto-generated method stub

	}

	@Override
	public void animationFinished(Thread t, customAnime a) {

	}

	@Override
	public void animationRepeat(Thread t, customAnime a) {
		// TODO Auto-generated method stub

	}
public void addfilterToChild(){
	
}
	@Override
	public void onClick(View v) {
		if (child.getChildCount() == 0
				&& preferences.getMenutype() == AccordionPreferences.MENU_TYPE_DEFUALT) {
			additems(child, getValue());
			child.measure(0, 0);
			child.setVisibility(VISIBLE);
			child.getLayoutParams().height=0;
			requestLayout();
			invalidate();
		}
		if (v.getId() == R.id.header)
			for (int i = 0; i < clicklisteners.size(); i++) {
				clicklisteners.elementAt(i).OnAccordionItemClicked(
						(View) v.getParent());
			}
	}
	public void onClick(View v,boolean b) {
		if(state!=AccordionPreferences.TYPE_SELECTED){
		if (child.getChildCount() == 0
				&& preferences.getMenutype() == AccordionPreferences.MENU_TYPE_DEFUALT) {
			additems(child, getValue());
			child.measure(0, 0);
			child.setVisibility(VISIBLE);
			requestLayout();
			invalidate();
		}
		if (v.getId() == R.id.header)
			for (int i = 0; i < clicklisteners.size(); i++) {
				clicklisteners.elementAt(i).OnAccordionItemClicked(
						(View) v.getParent(),b);
			}
		}
	}
	private void additems(accordionChild child2, String value2) {
		AccordionPreferences ap = new AccordionPreferences();
		ap.setHideUpperBrothers(false);
		ap.setAlign(ap.ALIGN_RIGHT);
		ap.setMenutype(AccordionPreferences.MENUTYPE_FILTER);
//		ap.setAlign(ap.ALIGN_CENTER);
		ap.getBgs()[1] = ap.getBgs()[0];
		ap.getBgs()[2] = ap.getBgs()[0];
		ap.getColors()[1]=ap.getColors()[0];
		ap.getColors()[2]=ap.getColors()[0];
		final accrodion f = new accrodion(getContext());
		f.setPreferences(ap);
		final ArrayList<MenuItemF> mitems = new ArrayList<MenuItemF>();
		MenuItemF mm = new MenuItemF(1, "تامین کننده",
				com.example.sktheme.R.drawable.ic_launcher);
		ArrayList<Customer> customers = DataSourceTools.getSuppliersByProductGroup(Integer.parseInt(getValue()));
		for (Customer customer : customers) {
			mm.addvalue((mm).new Values(customer.getCustID(), customer
					.getCompanyName()));
		}
		mitems.add(mm);
		mm = new MenuItemF(2, "کشور سازنده",
				com.example.sktheme.R.drawable.ic_launcher);
		mm.addvalue((mm).new Values(1, "ایران"));
		mm.addvalue((mm).new Values(2, "عراق"));
		mm.addvalue((mm).new Values(3, "ایتالیا"));
		mm.addvalue((mm).new Values(4, "آلمان"));
		mitems.add(mm);
		mitems.add(new MenuItemF(3, "تولید کننده",
				com.example.sktheme.R.drawable.ic_launcher));
		mitems.add(new MenuItemF(4, "قیمت",
				com.example.sktheme.R.drawable.ic_launcher));
		f.addacordeonto((ViewGroup) f, mitems, this);
		f.measure(0, 0);
		child.addView(f);
		updatechilds(null);
		statics.getParentAccordion().updatechilds(null);
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public void addAccordionItemOnClickListener(accordionItemOnClickListener a) {
		if(!clicklisteners.contains(a))
		clicklisteners.add(a);
	}

	public void removeAccordionItemOnClickListener(
			accordionItemOnClickListener a) {
		clicklisteners.remove(a);
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		if (closemyself)
			return;
		this.state = state;
		getHeader().setState(state);
	}

	public boolean isClosemyself() {
		return closemyself;
	}

	public void setClosemyself(boolean closemyself) {
		this.closemyself = closemyself;
		this.state = AccordionPreferences.TYPE_CHILD_SELECTED;
		getChild().setClosemyself(closemyself);
		header.setState(AccordionPreferences.TYPE_CHILD_SELECTED);
		// header.setBackgroundResource(preferences.getBgs(2));
		// header.setrightImg(preferences.getOpenclose(1));
		// header.setTextColor(0xffffffff);
		// header.headerImageSetVisibility(INVISIBLE);
		getChild().setVisibility(VISIBLE);
	}

	public AcordionHeader getHeader() {
		return header;
	}

	public void setHeader(AcordionHeader ah) {
		this.header = ah;
	}

	public boolean isLock() {
		return lock;
	}

	public void setLock(boolean lock) {
		this.lock = lock;
	}

	public AccordionPreferences getPreferences() {
		return preferences;
	}

	public void setPreferences(AccordionPreferences preferences) {
		this.preferences = preferences;
	}

	int filternum = 0;

	@Override
	public void filterAdded(FilterItem fitem) {

	}

	@Override
	public void filterRemoved(FilterItem fitem) {

	}

	ArrayList<filterView> filterlist = new ArrayList<filterView>();

	@Override
	public void filterviewChecked(filterView fv) {
		accordionItem ac=getparent();
		if(ac!=null)
			ac.filterviewChecked(fv);
		if (!filterlist.contains(fv)) {
			filterlist.add(fv);
		}
		if (filterlist.size() > 0) {
			header.setOnOffState(header.ON_STATE);
			header.setShowOnOff(true);
		} else {
			header.setShowOnOff(false);
			header.setOnOffState(header.OFF_STATE);
		}
		requestLayout();
		updatemyself();
	}
	@Override
	public void filterviewUnChecked(filterView fv) {
		accordionItem ac=getparent();
		if(ac!=null)
			ac.filterviewUnChecked(fv);
		filterlist.remove(fv);
		if (filterlist.size() > 0) {
			header.setOnOffState(header.ON_STATE);
			header.setShowOnOff(true);
		} else {
			header.setShowOnOff(false);
			header.setOnOffState(header.OFF_STATE);
		}
		requestLayout();
		updatemyself();
	}
	public void setAllOFilterOff() {
		for (int i = 0; i < filterlist.size(); i++) {
			filterlist.get(i).setChecked(false);
			i--;
		}
	}
	@Override
	protected void onDraw(Canvas canvas) {
		getHeader().invalidate();
		getChild().invalidate();
		super.onDraw(canvas);
	}
	public void updatechilds(ViewGroup me) {
		if(me==null)
			me=this;
		me.invalidate();
		((accordionItem)me).getChild().invalidate();
		((accordionItem)me).getHeader().invalidate();
		((accordionItem)me).getHeader().stateChanged();
		me=((accordionItem)me).getChild();
		for(int i=0;i<me.getChildCount();i++){
			if(me.getChildAt(i) instanceof accordionItem){
			((accordionItem)me.getChildAt(i)).updatechilds(null);
			}
			else
				me.getChildAt(i).invalidate();
		}
	}
	public void updatemyself(){
		invalidate();
		getHeader().invalidate();
		getChild().invalidate();
		getFooter().invalidate();
	}
}
