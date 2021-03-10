package org.sayesaman.app3;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
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
import org.sayesaman.database.model.Goods;
import org.sayesaman.dialog.Statics;

import java.util.ArrayList;

@EActivity(R.layout.app3)
@NoTitle
@Fullscreen
public class MyActivity3 extends Activity {
    @Bean
    GoodsDao goodsDao;
    ArrayList<Goods> list = null;

    LayoutInflater inflater;
    LinearLayout parent1;

    @ViewById
    TextView app3_header_desc1;

    String groupId1;
    String groupName1;
    String groupId2;
    String groupName2;

    @AfterViews
    public void afterViews() {
        inflater = (LayoutInflater) this.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        parent1 = (LinearLayout) findViewById(R.id.app3_list);

        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            groupId1 = extras.getString("groupId1");
            groupName1 = extras.getString("groupName1");

            groupId2 = extras.getString("groupId2");
            groupName2 = extras.getString("groupName2");

            String prevString = (String) app3_header_desc1.getText();
            app3_header_desc1.setText(prevString + " > " + groupName1 + " > " + groupName2);
        }

        list = goodsDao.getAllBySubGroup(groupId2);

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

        Goods goods = list.get(i);

        ImageView goodsGroupImage = (ImageView) view.findViewById(R.id.goodsGroupImage);
        TextView goodsGroupQty = (TextView) view.findViewById(R.id.goodsQtyActive);
        TextView rownum = (TextView) view.findViewById(R.id.rownum);
        TextView goodsGroupName = (TextView) view.findViewById(R.id.goodsGroupName);

        rownum.setText(String.valueOf(++i));
        goodsGroupName.setText(goods.getCode() + " : " + goods.getName());
        goodsGroupQty.setText(goods.getCode());
        Statics.setImg2(goodsGroupImage, "Goods", goods.getCode());

        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                TextView bpp1_code = (TextView) view.findViewById(R.id.goodsQtyActive);
                TextView bpp1_name = (TextView) view.findViewById(R.id.goodsGroupName);

                final Dialog dialog = new Dialog(MyActivity3.this);
                dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
                dialog.setContentView(R.layout.dialog_goods);
                dialog.getWindow().getAttributes().windowAnimations = R.style.DialogAnimation;
                dialog.show();

                ImageView imageView123 = (ImageView) dialog.findViewById(R.id.imageView123);
                Statics.setImg3(imageView123, "Goods", bpp1_code.getText().toString(), 200, 400);

                TextView custCode2 = (TextView) dialog.findViewById(R.id.app3_header_desc2);
                custCode2.setTypeface(Statics.getFontTypeFace_Titr());
                custCode2.setText(bpp1_code.getText().toString());

                TextView custName2 = (TextView) dialog.findViewById(R.id.app3_header_desc1);
                custName2.setTypeface(Statics.getFontTypeFace_Titr());
                custName2.setText(bpp1_name.getText().toString());
            }
        });

        return view;
    }
}