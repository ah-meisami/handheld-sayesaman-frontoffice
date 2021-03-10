package org.sayesaman.tut5.cust;

import android.content.Intent;
import android.support.v4.app.Fragment;
import android.widget.ImageButton;
import android.widget.TextView;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.Click;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.FragmentArg;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.database.dao.CustomerDao;
import org.sayesaman.database.model.Customer;
import org.sayesaman.dialog.Statics;

@EFragment(R.layout.tut5_fragment)
public class MyFragment extends Fragment {
    @FragmentArg
    String fragmentArgCustId;

    @Bean
    CustomerDao dao;

    @ViewById
    TextView tvId;
    @ViewById
    TextView tvName;
    @ViewById
    TextView tvCode;
    @ViewById
    TextView tvAddress;
    @ViewById
    TextView tvRealName;

    @ViewById
    ImageButton custImage;

    @AfterViews
    void xx() {
        Customer customer = dao.getCustomerSpecById(fragmentArgCustId);

        tvId.setText(customer.getId());
        tvCode.setText(customer.getCode());
        tvName.setText(customer.getName());
        tvRealName.setText(customer.getRealName());
        tvAddress.setText(customer.getAddress());

        Statics.setImg2(custImage, "Customer", customer.getCode());
    }

    @Click
    public void custImage() {
        Intent i = new Intent();
        i.setClass(getActivity().getApplicationContext(), org.sayesaman.tut6.goods.PageViewActivity_.class);
        i.putExtra("fragmentArgCustId", fragmentArgCustId);
        startActivity(i);
    }
}
