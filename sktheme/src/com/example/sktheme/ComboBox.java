package com.example.sktheme;

import java.util.ArrayList;

import com.ara.greendroid.widget.AraPopupItem;
import com.ara.greendroid.widget.AraPopupWindow;

import android.app.ActionBar.LayoutParams;
import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class ComboBox extends TextView implements android.view.View.OnClickListener {
	private ArrayList<ComboItemSelectedListenr> comboItemSelectedListenrs = new ArrayList<ComboBox.ComboItemSelectedListenr>();
	private ArrayList<comboItem> comboItems = new ArrayList<comboItem>();
	private AraPopupWindow popup;
	String header="تست";
	public ComboBox(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		customizeMethod();
	}

	public ComboBox(Context context, AttributeSet attrs) {
		super(context, attrs);
		customizeMethod();
	}

	public ComboBox(Context context) {
		super(context);
		customizeMethod();
	}

	public void customizeMethod() {
			setGravity(Gravity.RIGHT);
		if(getBackground()==null){
			setBackgroundResource(R.drawable.combo_bg);
			setTextColor(0xff000000);
		}
		setOnClickListener(new android.view.View.OnClickListener() {
			@Override
			public void onClick(View v) {
				getPopup().show(ComboBox.this);
			}
		});
		for(int i=0;i<10;i++){
			addComboItem(new comboItem(getContext(),"test"+i));
		}
	}
	public void addComboItemSelectedListenrs(
			ComboItemSelectedListenr comboItemSelectedListenr) {
		if (this.comboItemSelectedListenrs.contains(comboItemSelectedListenr))
			this.comboItemSelectedListenrs.add(comboItemSelectedListenr);
	}

	public void removeComboItemSelectedListenrs(
			ComboItemSelectedListenr comboItemSelectedListenr) {
		this.comboItemSelectedListenrs.remove(comboItemSelectedListenr);
	}

	public void addComboItem(comboItem comboItem) {
		if (!this.comboItems.contains(comboItem)) {
			this.comboItems.add(comboItem);
			comboItem.setOnClickListener(this);
		}
	}

	public void removeComboItem(comboItem comboItem) {
		this.comboItems.remove(comboItem);
	}

	public interface ComboItemSelectedListenr {
		public void ComboItemSelected(ComboBox combo, comboItem selected);
	}
	public class comboItem extends TextView {
		public comboItem(Context context, String st) {
			super(context);
			setText(st);
			setTextColor(0xff000000);
			setClickable(true);
			setSingleLine();
			setGravity(Gravity.CENTER);
			setBackgroundResource(R.drawable.bottom_bar_light);
		}
	}
	@Override
	public void onClick(View v) {
		if(v instanceof comboItem){
			setText(((comboItem) v).getText());
		for (ComboItemSelectedListenr listener : comboItemSelectedListenrs) {
			listener.ComboItemSelected(this, (comboItem) v);
		}
		getPopup().dismiss();
		}
	}

	public AraPopupWindow getPopup() {
		if(popup==null){
			popup=getnewinstanceOfPopup();
		}
		return popup;
	}
	
	private AraPopupWindow getnewinstanceOfPopup() {
		AraPopupWindow p=new AraPopupWindow(getContext());
		
		LinearLayout popuplayout=new LinearLayout(getContext());
		popuplayout.setOrientation(LinearLayout.VERTICAL);
		for (comboItem	item : comboItems) {
			popuplayout.addView(item);
			ImageView img=new ImageView(getContext());
			img.setImageResource(R.drawable.divider_light);
			popuplayout.addView(img);
			img.getLayoutParams().width=LayoutParams.FILL_PARENT;
		}
		AraPopupItem a=new AraPopupItem(popuplayout,getContext(),header);
		p.addQuickAction(a);
		popuplayout.getLayoutParams().width=LayoutParams.FILL_PARENT;
		return p;
	}

	public void setPopup(AraPopupWindow popup) {
		this.popup = popup;
	}
}
