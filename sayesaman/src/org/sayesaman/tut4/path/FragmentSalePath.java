package org.sayesaman.tut4.path;

import android.content.Intent;
import android.graphics.Typeface;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.widget.ImageButton;
import android.widget.TextView;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.Click;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.FragmentArg;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.database.dao.SalePathDao;
import org.sayesaman.database.model.SalePath;
import org.sayesaman.dialog.Statics;

@EFragment(R.layout.tut4_fragment)
public class FragmentSalePath extends Fragment {
    @FragmentArg
    String fragmentArgSalePathId;
    @FragmentArg
    String fragmentArgSalePathName;
    @FragmentArg
    String fragmentArgSalePathQty;

    @Bean
    SalePathDao dao;

    @ViewById
    TextView salePathId;
    @ViewById
    TextView salePathName;
    @ViewById
    TextView salePathCustQty;
    @ViewById
    ImageButton salePathImage;

    @AfterViews
    void after() {
        SalePath obj1 = dao.getOneById(fragmentArgSalePathId);
        salePathId.setText(obj1.getId());
        salePathName.setText(obj1.getName());
        salePathCustQty.setText(obj1.getQty());
        Statics.setImg3(salePathImage, "SalePath", obj1.getId() , 300 , 400);
    }

    @Click
    public void salePathImage() {
        Intent i = new Intent();
        i.setClass(getActivity().getApplicationContext(), org.sayesaman.bpp6.MyActivity_.class);

        i.putExtra("fragmentArgSalePathId", fragmentArgSalePathId);
        i.putExtra("fragmentArgSalePathName", fragmentArgSalePathName);
        i.putExtra("fragmentArgSalePathQty", fragmentArgSalePathQty);
        startActivity(i);
    }
}
