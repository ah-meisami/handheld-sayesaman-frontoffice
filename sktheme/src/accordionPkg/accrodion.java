package accordionPkg;

import java.util.ArrayList;
import java.util.Vector;

import com.ara.filter.FilterItem;
import com.ara.filter.filterView;
import com.ara.filter.filterView.FilterViewChangeListener;
import com.example.sktheme.R;


import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class accrodion extends LinearLayout implements
		android.view.View.OnClickListener, accordionItemOnClickListener {
	public static final int TYPE_CLOSE =  AccordionPreferences.TYPE_NOT_SELECTED;
	public static final int TYPE_OPEN_1 =  AccordionPreferences.TYPE_SELECTED;
	public static final int TYPE_OPEN_2 =  AccordionPreferences.TYPE_CHILD_SELECTED;
	private AccordionPreferences preferences;
	
	Vector<AccordionSelectedChangeListenr> selectedChangelisteners = new Vector<AccordionSelectedChangeListenr>();
	private String selectedValue;

	public accrodion(Context context) {
		super(context);
		dojobs();
	}

	public void addSelectedChangeListener(AccordionSelectedChangeListenr s) {
		selectedChangelisteners.add(s);
	}

	public void removeSelectedChangeListener(AccordionSelectedChangeListenr s) {
		selectedChangelisteners.remove(s);
	}

	public accrodion(Context context, AttributeSet attrs) {
		super(context, attrs);
		dojobs();
	}

	final void dojobs() {
		if(preferences==null)
			preferences=new AccordionPreferences();
		setOrientation(VERTICAL);
	}
	public ViewGroup addacordeonto(ViewGroup child, String k1, int id) {
		// TODO Auto-generated method stub
		accordionItem k = new accordionItem(getContext(),preferences);
		k.addAccordionItemOnClickListener(this);
		child.addView(k);
		try {
			((TextView) (k.findViewById(R.id.header)
					.findViewById(R.id.headertext))).setText((k1));
		} catch (Exception ex) {
		}
		try {
			((ImageView) (k.findViewById(R.id.header)
					.findViewById(R.id.headerImage))).setImageResource(id);
		} catch (Exception ex) {
		}
		return (ViewGroup) k.findViewById(R.id.child);
	}

	public void setheaderopened(int type, AcordionHeader header) {
		accordionItem Aitem = (accordionItem) header.getParent();
		Aitem.setState(type);
	}
	public void addacordeonto(ViewGroup child, ArrayList<MenuItemF> mitems,FilterViewChangeListener fchlistener) {
		int statePressed = android.R.attr.state_pressed;
		int stateChecked = android.R.attr.state_checked;
		BitmapDrawable none=new BitmapDrawable(BitmapFactory.decodeResource(getResources(), R.drawable.transparent11));
		BitmapDrawable on=new BitmapDrawable(BitmapFactory.decodeResource(getResources(), R.drawable.checkbox_on_background));
		for (int i = 0; i < mitems.size(); i++) {
			accordionItem ai = new accordionItem(getContext(),mitems.get(i),
					this,getPreferences());
			child.addView(ai);
			if (mitems.get(i).getChilds().size() == 0) {
				ai.getChild().setBackgroundColor(0x00ffffff);
				ai.getChild().setGravity(Gravity.CENTER_HORIZONTAL);
				((android.widget.RelativeLayout.LayoutParams) ai.getChild()
						.getLayoutParams())
						.addRule(android.widget.RelativeLayout.ALIGN_PARENT_LEFT);
				((android.widget.RelativeLayout.LayoutParams) ai.getChild()
						.getLayoutParams())
						.addRule(android.widget.RelativeLayout.ALIGN_PARENT_RIGHT);
				for (int j = 0; j < mitems.get(i).getValues().size(); j++) {
					filterView f=new filterView(getContext(), new FilterItem(mitems.get(i).getValues().get(j).value,dataBase.DBUtil.TblFields.SupplierID),mitems.get(i).getValues().get(j).caption);
					f.addChangeListeners(fchlistener);
					f.addChangeListeners(ai);
					ai.getChild().addView(f);
					((LayoutParams) f.getLayoutParams()).height = 60;
				}
			}
			addacordeonto(ai.getChild(), mitems.get(i).getChilds(),fchlistener);
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
	public void getchilds(ViewGroup parent) {
		// for (int i = 0; i < parent.getChildCount(); i++) {
		// if (parent.getChildAt(i).getId() == R.id.accordion) {
		// ViewGroup v1 = (ViewGroup) parent.getChildAt(i);
		// try {
		// ViewGroup header = (ViewGroup) v1.findViewById(R.id.header);
		// ((TextView) header.findViewById(R.id.headertext)).getText();
		// header.setOnClickListener(this);
		// } catch (Exception ex) {
		// }
		// try {
		// ViewGroup child = (ViewGroup) v1.findViewById(R.id.child);
		// getchilds(child);
		// } catch (Exception ex) {
		// }
		// }
		// }
	}
@Override
public void addView(View child) {
	super.addView(child);
	if(child instanceof accordionItem)
	{
		((accordionItem)child).addAccordionItemOnClickListener(this);
	}
}
	@Override
	public void onClick(View header) {
		try {
			accordionItem accordion = (accordionItem) header.getParent();
			accordionChild child = (accordionChild) accordion
					.findViewById(R.id.child);
			if (!isAnimationRunning(accordion)) {
				if (child.getTempvisiblity() == GONE) {
					setvisiblityVisible(accordion);
					setBrothersVisiblity(accordion, GONE);
				} else {
					setvisiblityGone(accordion);
					setBrothersVisiblity(accordion, VISIBLE);
					closechilds(accordion);
				}
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}

	private boolean isAnimationRunning(ViewGroup accordion) {
		accordionChild child = (accordionChild) accordion
				.findViewById(R.id.child);
		boolean b = child.animationTRD == null || !child.animationTRD.isAlive();
		return !b;
	}

	public void closechilds(ViewGroup parent) {
		if (preferences.isClosechildswhenclose()) {
			accordionChild v = (accordionChild) parent.findViewById(R.id.child);
			for (int i = 0; i < v.getChildCount(); i++) {
				if (v.getChildAt(i).getId() == R.id.accordion) {
					if (v.getChildAt(i).getVisibility() == GONE)
						v.getChildAt(i).setVisibility(VISIBLE);
					if (((accordionChild) v.getChildAt(i).findViewById(
							R.id.child)).getTempvisiblity() == VISIBLE) {
						setheaderopened(TYPE_CLOSE,((accordionItem)v.getChildAt(i)).getHeader());
						((accordionChild) v.getChildAt(i).findViewById(
								R.id.child)).setTempvisiblity(GONE);
						closechilds((ViewGroup) v.getChildAt(i));
					}
					android.widget.LinearLayout.LayoutParams p = (android.widget.LinearLayout.LayoutParams) (v
							.getChildAt(i)).getLayoutParams();
					p.height = android.view.ViewGroup.LayoutParams.WRAP_CONTENT;
					v.getChildAt(i).setLayoutParams(p);
				}
			}
		}
	}

	public void setvisiblityVisible(accordionItem accordion) {
		AcordionHeader header = accordion.getHeader();
		android.view.ViewGroup.LayoutParams p = (android.widget.LinearLayout.LayoutParams) accordion
				.getLayoutParams();
		p.height = android.view.ViewGroup.LayoutParams.WRAP_CONTENT;
		accordion.setLayoutParams(p);

		accordionChild child = (accordionChild) accordion
				.findViewById(R.id.child);
		child.setTempvisiblity(VISIBLE);
		boolean haveChildVisible = false;
		for (int i = 0; i < child.getChildCount(); i++) {
			if (child.getChildAt(i).getId() == R.id.accordion) {
				if (((accordionChild) child.getChildAt(i).findViewById(
						R.id.child)).getTempvisiblity() == VISIBLE)
					haveChildVisible = true;
			}
		}
		if (haveChildVisible) {
			setheaderopened(TYPE_OPEN_2, header);
		} else {
			setheaderopened(TYPE_OPEN_1, header);
		}
		setparentbg(accordion.getParent().getParent());
	}

	public void setBrothersVisiblity(ViewGroup accordion, int v) {
		ViewGroup uper = (ViewGroup) accordion.getParent();
		if (preferences.isHideUpperBrothers()) {
			for (int i = 0; i < uper.getChildCount(); i++) {
				if ((uper.getChildAt(i).getId() == R.id.accordion)) {
					if (uper.getChildAt(i) == accordion) {
						if (!preferences.isHidebelowBrothers())
							break;
						else
							continue;
					}
					if (uper.getChildAt(i) != accordion)
						;
					accordionItem Aitem = ((accordionItem) uper.getChildAt(i));
					Aitem.setTempvisiblity(v);
				}
			}
		}
		if (v == GONE)
			for (int i = 0; i < uper.getChildCount(); i++) {
				if ((uper.getChildAt(i).getId() == R.id.accordion)
						&& uper.getChildAt(i) != accordion) {
					setvisiblityGone((accordionItem) uper.getChildAt(i));
					closechilds((ViewGroup) uper.getChildAt(i));
				}
			}
	}
	public void setvisiblityGone(accordionItem accordion) {
		AcordionHeader header = accordion.getHeader();
		accordionChild child = (accordionChild) accordion
				.findViewById(R.id.child);
		child.setTempvisiblity(GONE);
		setheaderopened(TYPE_CLOSE, header);
		ViewGroup onelevelupparent = (ViewGroup) accordion.getParent();
		boolean b = true;
		for (int i = 0; i < onelevelupparent.getChildCount(); i++) {
			if (onelevelupparent.getChildAt(i).getId() == R.id.accordion) {
				if (((accordionChild) onelevelupparent.getChildAt(i)
						.findViewById(R.id.child)).getTempvisiblity() == VISIBLE) {
					b = false;
					break;
				}
			}
		}
		if (b)
			setparentbgOneLevelUp(accordion.getParent().getParent());
	}

	public void setparentbgOneLevelUp(ViewParent parent) {
		ViewGroup parentview = (ViewGroup) parent;
		if (parentview.getId() == R.id.accordion) {

			setheaderopened(TYPE_OPEN_1,
					((accordionItem) parentview).getHeader());
		}
	}

	public void setparentbg(ViewParent Iparent) {
		try {
			ViewGroup parent = (ViewGroup) Iparent;
			if (parent != null) {
				if (parent.getId() == R.id.accordion) {
					setheaderopened(TYPE_OPEN_2,
							((accordionItem) parent).getHeader());
					setparentbg((ViewGroup) parent.getParent().getParent());
				}
			}
		} catch (Exception ex) {
		}
	}

	@Override
	public void OnAccordionItemClicked(View v,boolean b) {
		onClick(v.findViewById(R.id.header));
		accordionItem aItem = findselectedItem(this);
		if (aItem == null) {
			aItem = new accordionItem(getContext(),preferences);
			aItem.setValue("-1");
		}
		for (int i = 0; i < selectedChangelisteners.size(); i++) {
			selectedChangelisteners.elementAt(i).accordionSelectedChangeed(
					this, aItem,b);
		}
	}
	@Override
	public void OnAccordionItemClicked(View v) {
		onClick(v.findViewById(R.id.header));
		accordionItem aItem = findselectedItem(this);
		if (aItem == null) {
			aItem = new accordionItem(getContext(),preferences);
			aItem.setValue("-1");
		}
		for (int i = 0; i < selectedChangelisteners.size(); i++) {
			selectedChangelisteners.elementAt(i).accordionSelectedChangeed(
					this, aItem,true);
		}
	}
	public static accordionItem findselectedItem(ViewGroup child) {
		for (int i = 0; i < child.getChildCount(); i++) {
			if (child.getChildAt(i).getId() == R.id.accordion) {
				accordionItem v1 = (accordionItem) child.getChildAt(i);
				try {
					if (v1.getState() ==  AccordionPreferences.TYPE_NOT_SELECTED)
						continue;
					if (v1.getState() ==  AccordionPreferences.TYPE_SELECTED)
						return v1;
					else if (v1.getState() ==  AccordionPreferences.TYPE_CHILD_SELECTED) {
						return findselectedItem(v1.child);
					}
				} catch (Exception ex) {
				}
			}
		}
		return null;
	}

	public static accordionItem findACvalue(String value, ViewGroup child) {
		for (int i = 0; i < child.getChildCount(); i++) {
			if (child.getChildAt(i).getId() == R.id.accordion) {
				accordionItem v1 = (accordionItem) child.getChildAt(i);
				((TextView) v1.getHeader().findViewById(R.id.headertext))
						.getText();
				try {
					if (v1.getValue().compareToIgnoreCase(value) == 0)
						return v1;
					accordionItem ai=findACvalue(value, v1.child);
					if(ai!=null)
						return ai;

				} catch (Exception ex) {
				}
			}
		}
		return null;
	}

	public accordionItem findACvalue(String value) {
		ViewGroup child = this;
		for (int i = 0; i < child.getChildCount(); i++) {
			if (child.getChildAt(i).getId() == R.id.accordion) {
				accordionItem v1 = (accordionItem) child.getChildAt(i);
				try {

					if (v1.getValue().compareToIgnoreCase(value) == 0)
						return v1;
					accordionItem ai=findACvalue(value, v1.child);
					if(ai!=null)
						return ai;
				} catch (Exception ex) {
				}
			}
		}
		return null;
	}

	public accordionItem findselectedvalue(String value, ViewGroup child) {
		if(child==null)
			child = this;
		for (int i = 0; i < child.getChildCount(); i++) {
			if (child.getChildAt(i) instanceof accordionItem) {
				accordionItem v1 = (accordionItem) child.getChildAt(i);
				try {
 {
						if (v1.getValue().compareToIgnoreCase(value) == 0)
							return v1;
						v1=findselectedvalue(value, v1.child);
						if(v1!=null)
							return v1;
					}
				} catch (Exception ex) {
				}
			}
		}
		return null;
	}

	public String getSelectedValue() {
		return selectedValue;
	}

	public void setSelectedValue(String selectedValue) {
		this.selectedValue = selectedValue;
	}

	public AccordionPreferences getPreferences() {
		return preferences;
	}

	public void setPreferences(AccordionPreferences preferences) {
		this.preferences = preferences;
	}

	public void updatechilds(ViewGroup me) {
		if(me==null)
			me=this;
		me.invalidate();
		for(int i=0;i<me.getChildCount();i++){
			if(me.getChildAt(i) instanceof accordionItem){
				((accordionItem)me.getChildAt(i)).updatechilds(null);
			}
		}
	}
}
