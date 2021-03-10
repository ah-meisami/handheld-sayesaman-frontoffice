package org.sayesaman.app3;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.Fullscreen;
import com.googlecode.androidannotations.annotations.NoTitle;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.database.dao.GoodsDao;
import org.sayesaman.database.dao.GoodsGroupDao;
import org.sayesaman.database.model.GoodsGroup;
import org.sayesaman.dialog.Statics;

import java.util.ArrayList;

@EActivity(R.layout.app3)
@NoTitle
@Fullscreen
public class MyActivity2 extends Activity {
    @Bean
    GoodsGroupDao groupDao;
    @Bean
    GoodsDao goodsDao;
    ArrayList<GoodsGroup> list = null;

    LayoutInflater inflater;
    LinearLayout parent1;

    @ViewById
    TextView app3_header_desc1;

    String groupId1;
    String groupName1;

    @AfterViews
    public void afterViews() {
        inflater = (LayoutInflater) this.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        parent1 = (LinearLayout) findViewById(R.id.app3_list);

        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            groupId1 = extras.getString("groupId1");
            groupName1 = extras.getString("groupName1");

            String prevString = (String) app3_header_desc1.getText();
            app3_header_desc1.setText(prevString + " > " + groupName1);
        }

        list = groupDao.getList2(groupId1);

        if (list.size() == 0) {
            TextView v = new TextView(this);
            v.setText("رکوردی يافت نشد.");
            v.setTypeface(Statics.getFontTypeFace_Titr());
            v.setTextSize(30);
            v.setTextColor(Color.RED);
            parent1.addView(v);
        } else {
            for (int i = 0; i < list.size(); i++) {
                AsyncTaskRunner runner = new AsyncTaskRunner();
                runner.execute(String.valueOf(i));
            }
        }
    }

    private class AsyncTaskRunner extends AsyncTask<String, Void, View> {
        @Override
        protected View doInBackground(String... params) {
            /*
            try {
                Thread.sleep(50);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            */
            return getNewView(Integer.valueOf(params[0]));
        }

        @Override
        protected void onPostExecute(View view) {
            parent1.addView(view);
        }
    }

    private View getNewView(int i) {
        View view = inflater.inflate(R.layout.app3_row_list, null, false);

        if (i % 2 == 0) {
            view.setBackgroundColor(Statics.getColorOdd());
        } else {
            view.setBackgroundColor(Statics.getColorEven());
        }

        GoodsGroup group = list.get(i);

        ImageView goodsGroupImage = (ImageView) view.findViewById(R.id.goodsGroupImage);
        TextView goodsGroupQty = (TextView) view.findViewById(R.id.goodsQtyActive);
        TextView rownum = (TextView) view.findViewById(R.id.rownum);
        TextView goodsGroupName = (TextView) view.findViewById(R.id.goodsGroupName);

        rownum.setText(String.valueOf(++i));
        goodsGroupName.setText(group.getName());
        goodsGroupQty.setText(group.getId());
        Statics.setImg2(goodsGroupImage, "GoodsGroup", group.getId());

        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                TextView tvGroupId = (TextView) view.findViewById(R.id.goodsQtyActive);
                TextView tvGroupName = (TextView) view.findViewById(R.id.goodsGroupName);


                Intent i = new Intent();
                i.setClass(getApplicationContext(), org.sayesaman.app3.MyActivity3_.class);
                i.putExtra("groupId1", groupId1);
                i.putExtra("groupName1", groupName1);
                i.putExtra("groupId2", tvGroupId.getText());
                i.putExtra("groupName2", tvGroupName.getText());
                startActivity(i);
            }
        });

        return view;
    }
}