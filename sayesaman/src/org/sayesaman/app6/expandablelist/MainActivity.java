package org.sayesaman.app6.expandablelist;

import android.app.Activity;
import android.widget.ExpandableListView;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.database.dao.GoodsGroupDao;
import org.sayesaman.database.model.GoodsGroup;

import java.util.ArrayList;

@EActivity(R.layout.app6_activity_main)
public class MainActivity extends Activity {
    @Bean
    GoodsGroupDao dao;
    @ViewById
    ExpandableListView expandableListView;
    ArrayList<GoodsGroup> list;
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ExpandableListAdapter adapter;

    @AfterViews
    protected void afterViews() {
        list = dao.getList1();
        adapter = new ExpandableListAdapter(this, list);
        expandableListView.setAdapter(adapter);

    }
}
