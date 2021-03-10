package com.example.sktheme;


import com.example.sktheme.paintedProductLayout.ProductClicked;

import dataBase.ProductGroup;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class horizontalRibbonParent extends RelativeLayout{
TextView header;
private ProductClicked pclick;
public horizontalRibbon horezontalR;
    public horizontalRibbonParent(Context context) {
        super(context);
        customizeMethod();
    }
public TextView getHeader() {
	if(header==null)
		header=((TextView)findViewById(R.id.txt_horizontal_ribbon_caption));
	return header;
}
    public horizontalRibbonParent(Context context, AttributeSet attrs) {
        super(context, attrs);
        customizeMethod();
    }
    public horizontalRibbonParent(Context context, ProductClicked productclicked) {
    	super(context);
    	this.setPclick(productclicked);
        customizeMethod();
	}
	public horizontalRibbon getHorezontalR() {
    	if(horezontalR==null)
    		horezontalR=(horizontalRibbon) findViewById(R.id.horizontalRibbon1);
		return horezontalR;
	}
    final void customizeMethod(){
        LayoutInflater inflater = (LayoutInflater) getContext()
    		.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        inflater.inflate(R.layout.horizontal_ribbon_parent,this, true);
    }
    public ProductClicked getPclick() {
		return pclick;
	}
	public void setPclick(ProductClicked pclick) {
		this.pclick = pclick;
	}
	public interface showallListener{
    	public void showallSelected(ProductGroup selected);
    }
}
