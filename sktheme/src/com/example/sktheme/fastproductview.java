package com.example.sktheme;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

public class fastproductview extends LinearLayout {
	public static int index=0;
    int picId;
    String captre;
    public fastproductview(Context context) {
        super(context);
        customizeMethod();
    }

    public fastproductview(Context context, AttributeSet attrs) {
        super(context, attrs);
        customizeMethod();
    }
    
    public fastproductview(int picId, String captre, Context context) {
        super(context);
        this.picId = picId;
        this.captre = captre;
        customizeMethod();
    }
    final void customizeMethod(){
//    	inflate(getContext(), R.layout.myviewxx, this);
    	LayoutParams l=new LayoutParams(LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT);
    	l.setMargins(5,5,5,5);
    	setGravity(Gravity.CENTER_HORIZONTAL);
    	l.gravity=Gravity.CENTER_HORIZONTAL|Gravity.CENTER_VERTICAL;
    	setOrientation(HORIZONTAL);
    	setLayoutParams(l);
    	getProductParent();
    }

	private ViewGroup getProductParent() {
		LayoutParams productparentLayout=new LayoutParams(250, LayoutParams.WRAP_CONTENT);
    	RelativeLayout productparent=new RelativeLayout(getContext());
    	productparent.setBackgroundResource(R.drawable.product_parent_background);
    	productparent.setLayoutParams(productparentLayout);
    	return productparent;		
	}
//	private ViewGroup getProductParent() {
//		LayoutParams productparentLayout=new LayoutParams(250, LayoutParams.WRAP_CONTENT);
//    	RelativeLayout productparent=new RelativeLayout(getContext());
//    	productparent.setBackgroundResource(R.drawable.product_parent_background);
//    	productparent.setLayoutParams(productparentLayout);
//    	return productparent;
//		
//	}
}
