package com.example.sktheme;

import android.content.Context;
import android.widget.Button;
import android.widget.PopupMenu;
import android.widget.RelativeLayout;

public class popupmenu extends RelativeLayout{

	public popupmenu(Context context) {
		super(context);
		addView(new Button(getContext())); 
	}

}
