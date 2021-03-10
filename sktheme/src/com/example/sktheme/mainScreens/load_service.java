package com.example.sktheme.mainScreens;


import webservice.Caller;
import webservice.StaticWebService;

import com.example.sktheme.R;
import com.example.sktheme.customDialog;
import com.example.sktheme.productLayout;
import dataBase.Product;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.EditText;
import android.widget.LinearLayout;

public class load_service extends customDialog implements android.view.View.OnClickListener{
    public load_service(Context context) {
    	super(context, R.style.mydialogstyle);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(LayoutParams.FLAG_FULLSCREEN, LayoutParams.FLAG_FULLSCREEN);
		getWindow().setBackgroundDrawable(
				new ColorDrawable(android.graphics.Color.TRANSPARENT));
		setContentView(R.layout.hamidtest);
		findViewById(R.id.btn_load).setOnClickListener(this);
        
    }
	final void dojobs(){
		
	}
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_load:
		{
			
			int id=-1;
			try{
				id=Integer.parseInt(((EditText)findViewById(R.id.txt_product_to_load)).getText()+"");
				if(id>-1){			
					StaticWebService.state = "Start";
					Caller c =new Caller();
					c.a = id;
					c.join();
					c.start();
					while (StaticWebService.state == "Start") {	
						try{
							Thread.sleep(10);
						}catch(Exception ex){}
					}
					Product p = StaticWebService.product;
					if(p != null){
					    productLayout playout=new  productLayout(p, getContext(),2);
					    ((LinearLayout)findViewById(R.id.productList)).addView(playout);
					}
				}
			}
			catch(Exception ex){
				
			}
			
		}
			break;

		default:
			break;
		}
	}

}
