package com.example.sktheme.mainScreens;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.TextView;

import com.example.sktheme.NewsList;
import com.example.sktheme.R;
import com.example.sktheme.customDialog;
import com.example.sktheme.statics;

import dataBase.ProductGroup;

public class NewsScreen extends customDialog implements
        android.view.View.OnClickListener {
    ;
    ProductGroup myself;

    public NewsScreen(Context context, ProductGroup myself) {
        super(context, R.style.mydialogstyle);
        this.myself = myself;
        dojobs();
    }

    private void dojobs() {
        // TODO Auto-generated method stub
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(LayoutParams.FLAG_FULLSCREEN, LayoutParams.FLAG_FULLSCREEN);
        getWindow().setBackgroundDrawable(new ColorDrawable(android.graphics.Color.TRANSPARENT));

        setContentView(R.layout.news_view);
        ((ViewGroup) findViewById(R.id.rlt_l_supplier_list_view)).addView(new NewsList(getContext(), myself));
        ((TextView) findViewById(R.id.txtview_header_supplierscreen)).setText("اخبار " + myself.getGrpName());
        ((TextView) findViewById(R.id.txtview_header_supplierscreen)).setTypeface(statics.getTitrfontfac());
        findViewById(R.id.btn_supplier_screen_back).setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.btn_supplier_screen_back:
                dismiss();
                break;

            default:
                break;
        }
    }

}
