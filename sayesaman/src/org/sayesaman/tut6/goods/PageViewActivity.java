package org.sayesaman.tut6.goods;

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
import org.sayesaman.database.dao.GoodsDao;
import org.sayesaman.database.model.Goods;

import java.util.ArrayList;
import java.util.List;

@EActivity(R.layout.tut6_page)
@NoTitle
@Fullscreen
public class PageViewActivity extends FragmentActivity {
    @ViewById
    ViewPager tut6_viewpager;
    @ViewById
    TabPageIndicator tut6_indicator;

    @Bean
    GoodsDao goodsDao;

    @AfterViews
    public void xx() {
        List<Fragment> fragments = getFragments();
        MyPageAdapter pageAdapter = new MyPageAdapter(getSupportFragmentManager(), fragments);
        tut6_viewpager.setAdapter(pageAdapter);
        tut6_indicator.setViewPager(tut6_viewpager);
    }

    private List<Fragment> getFragments() {
        ArrayList<Goods> list = null;
        list = goodsDao.getAll();

        List<Fragment> fList = new ArrayList<Fragment>();
        for (Goods obj : list) {
            FragmentGoods f = FragmentGoods_.builder()
                    .fragmentArgGoodsId(obj.getId())
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
