package org.sayesaman.tut4.path;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.Fullscreen;
import com.googlecode.androidannotations.annotations.NoTitle;
import com.googlecode.androidannotations.annotations.ViewById;
import com.viewpagerindicator.TabPageIndicator;

import org.sayesaman.R;
import org.sayesaman.database.dao.SalePathDao;
import org.sayesaman.database.model.SalePath;

import java.util.ArrayList;
import java.util.List;

@EActivity(R.layout.tut4_page)
@NoTitle
@Fullscreen
public class PageViewActivity extends FragmentActivity {
    @ViewById
    ViewPager tut4_viewpager;
    @ViewById
    TabPageIndicator tut4_indicator;

    @Bean
    SalePathDao dao;

    @AfterViews
    public void xx() {
        List<Fragment> fragments = getFragments();
        MyPageAdapter pageAdapter = new MyPageAdapter(getSupportFragmentManager(), fragments);
        tut4_viewpager.setAdapter(pageAdapter);
        tut4_indicator.setViewPager(tut4_viewpager);
    }

    private List<Fragment> getFragments() {
        ArrayList<SalePath> salePathArrayList = null;
        salePathArrayList = dao.getAll();

        List<Fragment> fList = new ArrayList<Fragment>();
        for (SalePath salePath1 : salePathArrayList) {
            FragmentSalePath f = FragmentSalePath_.builder()
                    .fragmentArgSalePathId(salePath1.getId())
                    .fragmentArgSalePathName(salePath1.getName())
                    .fragmentArgSalePathQty(salePath1.getQty())
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
