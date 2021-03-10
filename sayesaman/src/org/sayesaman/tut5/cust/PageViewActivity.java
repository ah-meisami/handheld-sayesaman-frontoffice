package org.sayesaman.tut5.cust;

import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.widget.ImageButton;
import android.widget.TextView;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.Fullscreen;
import com.googlecode.androidannotations.annotations.NoTitle;
import com.googlecode.androidannotations.annotations.ViewById;
import com.viewpagerindicator.TabPageIndicator;

import org.sayesaman.R;
import org.sayesaman.database.dao.CustomerDao;
import org.sayesaman.database.model.Customer;

import java.util.ArrayList;
import java.util.List;

@EActivity(R.layout.tut5_page)
@NoTitle
@Fullscreen
public class PageViewActivity extends FragmentActivity {
    @Bean
    CustomerDao customer;

    @ViewById
    ViewPager tut5_viewpager;
    @ViewById
    TabPageIndicator tut5_indicator;

    @ViewById
    TextView salePathId;
    @ViewById
    TextView salePathName;
    @ViewById
    TextView salePathCustQty;
    @ViewById
    ImageButton salePathImage;

    @AfterViews
    public void xx() {
        Bundle extras = getIntent().getExtras();
        String fragmentArgSalePathId = "";
        String fragmentArgSalePathName = "";
        String fragmentArgSalePathQty = "";
        if (extras != null) {
            fragmentArgSalePathId = extras.getString("fragmentArgSalePathId");
            fragmentArgSalePathName = extras.getString("fragmentArgSalePathName");
            fragmentArgSalePathQty = extras.getString("fragmentArgSalePathQty");

            salePathId.setText(fragmentArgSalePathId);
            salePathName.setText(fragmentArgSalePathName);
            salePathCustQty.setText(fragmentArgSalePathQty);
        }

        List<Fragment> fragments = getFragments(fragmentArgSalePathId);
        MyPageAdapter pageAdapter = new MyPageAdapter(getSupportFragmentManager(), fragments);
        tut5_viewpager.setAdapter(pageAdapter);
        tut5_indicator.setViewPager(tut5_viewpager);
    }

    private List<Fragment> getFragments(String extraSalePathId) {
        ArrayList<Customer> list = customer.getAll(extraSalePathId);

        List<Fragment> fList = new ArrayList<Fragment>();
        for (Customer obj : list) {
            MyFragment f = MyFragment_.builder()
                    .fragmentArgCustId(obj.getId())
                    .build();

            fList.add(f);
        }

        return fList;
    }

    private class MyPageAdapter extends FragmentPagerAdapter {
        private List<Fragment> fragments;

        public MyPageAdapter(FragmentManager fm, List<Fragment> fragments) {
            super(fm);
            this.fragments = fragments;
        }

        @Override
        public CharSequence getPageTitle(int position) {
            return String.valueOf(++position);
        }

        @Override
        public Fragment getItem(int position) {
            return this.fragments.get(position);
        }

        @Override
        public int getCount() {
            return this.fragments.size();
        }
    }
}
