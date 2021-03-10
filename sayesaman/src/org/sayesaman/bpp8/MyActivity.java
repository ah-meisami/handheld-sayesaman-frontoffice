package org.sayesaman.bpp8;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.Click;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.Fullscreen;
import com.googlecode.androidannotations.annotations.NoTitle;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.database.dao.OrderDao;
import org.sayesaman.database.model.Goods;
import org.sayesaman.database.model.OrderStatus;
import org.sayesaman.database.model.reports.Report1;
import org.sayesaman.database.model.reports.Report2Hdr;
import org.sayesaman.dialog.Statics;
import org.sayesaman.dialog.report2.Report2Dialog;

import java.util.ArrayList;

/**
 * Created by ameysami on 8/26/13.
 */
@EActivity(R.layout.bpp8)
@NoTitle
@Fullscreen
public class MyActivity extends Activity {
    LayoutInflater inflater;
    LinearLayout parent1;
    @Bean
    OrderDao orderDao;
    ArrayList<Report1> list = new ArrayList<Report1>();

    @ViewById
    TextView bpp8_header1;
    @ViewById
    TextView bpp8_header2;
    @ViewById
    TextView bpp8_header3;
    @ViewById
    TextView bpp8_header4;
    @ViewById
    TextView bpp8_footer1;
    @ViewById
    TextView bpp8_footer2;
    @ViewById
    ImageView bpp8_chart_img;

    @AfterViews
    protected void after() {
        list = orderDao.getReport1();

        bpp8_footer1.setText(String.valueOf(list.size()));
        bpp8_footer2.setText("<< مجموع >>");
//        bpp8_footer3.setText(Statics.commas.insertCommas(orderStatusPath.getOrder_qty()));
//        bpp8_footer4.setText(Statics.commas.insertCommas(damageStatusPath.getDamage_qty()));

        inflater = (LayoutInflater) this.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        parent1 = (LinearLayout) findViewById(R.id.bpp8_list_order);

        if (list.size() == 0) {
            TextView v = new TextView(this);
            v.setText("رکوردی يافت نشد.");
            v.setTypeface(Statics.getFontTypeFace_Titr());
            v.setTextSize(30);
            v.setTextColor(Color.RED);
            parent1.addView(v);

            bpp8_footer1.setText("");
            bpp8_footer2.setText("");/*
            bpp8_footer3.setText("");
            bpp8_footer4.setText("");*/
        } else {
            for (int i = 0; i <     list.size(); i++) {
                AsyncTaskRunner runner = new AsyncTaskRunner();
                runner.execute(String.valueOf(i));
            }
        }
    }
    AsyncTaskRunner runner = new AsyncTaskRunner();

    private View getNewView(int i) {
        View view = inflater.inflate(R.layout.bpp8_row, null, false);

        if (i % 2 == 0) {
            view.setBackgroundColor(Statics.getColorOdd());
        } else {
            view.setBackgroundColor(Statics.getColorEven());
        }

        Goods goods = list.get(i).getGoods();
        OrderStatus reportStatus = list.get(i).getStatus();

        TextView bpp8_row_no = (TextView) view.findViewById(R.id.bpp8_row_no);
        TextView bpp8_id = (TextView) view.findViewById(R.id.bpp8_id);
        TextView bpp8_code = (TextView) view.findViewById(R.id.bpp8_code);
        TextView bpp8_name = (TextView) view.findViewById(R.id.bpp8_name);
        ImageView bpp8_img = (ImageView) view.findViewById(R.id.bpp8_img);
        TextView bpp8_qty = (TextView) view.findViewById(R.id.bpp8_qty);
        TextView bpp8_sum = (TextView) view.findViewById(R.id.bpp8_sum);
        TextView bpp8_price = (TextView) view.findViewById(R.id.bpp8_price);

        bpp8_row_no.setText(String.valueOf(++i));
        bpp8_id.setText(goods.getId());
        bpp8_code.setText(goods.getCode());
        bpp8_name.setText(goods.getName());
        bpp8_qty.setText(Statics.commas.insertCommas(reportStatus.getOrder_qty()));
        bpp8_sum.setText(Statics.commas.insertCommas(reportStatus.getOrder_sum()));
        bpp8_price.setText(Statics.commas.insertCommas(reportStatus.getOrder_price()));
        Statics.setImg2(bpp8_img, "Goods", goods.getCode());

        bpp8_img.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    String goodsRef = (String) ((TextView) parent.findViewById(R.id.bpp8_id)).getText();
                    String bpp8_qty = (String) ((TextView) parent.findViewById(R.id.bpp8_qty)).getText();
                    String bpp8_sum = (String) ((TextView) parent.findViewById(R.id.bpp8_sum)).getText();
                    String bpp8_price = (String) ((TextView) parent.findViewById(R.id.bpp8_price)).getText();
                    OrderStatus reportStatus = new OrderStatus(bpp8_qty, bpp8_sum, bpp8_price);

                    Report2Hdr report2Hdr = orderDao.getReport2(goodsRef, reportStatus);

                    Report2Dialog dialog = new Report2Dialog(view.getContext(), report2Hdr);
                    WindowManager.LayoutParams lWindowParams = new WindowManager.LayoutParams();
                    lWindowParams.copyFrom(dialog.getWindow().getAttributes());
                    lWindowParams.width = WindowManager.LayoutParams.FILL_PARENT; // this is where the magic happens
                    lWindowParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
                    dialog.show();// I was told to call show first I am not sure if this it to cause layout to happen so that we can override width?
                    dialog.getWindow().setAttributes(lWindowParams);
                }
            }
        });
        return view;
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

    @Click
    public void bpp8_chart_img() {
        Intent i = new Intent();
        i.setClass(getApplicationContext(), org.sayesaman.chartdemo.demo.ChartDemo.class);
        startActivity(i);
    }
}