package org.sayesaman.bpp6;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.Fullscreen;
import com.googlecode.androidannotations.annotations.NoTitle;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.database.dao.CustomerDao;
import org.sayesaman.database.dao.TourDao;
import org.sayesaman.database.model.Customer;
import org.sayesaman.database.model.DamageStatus;
import org.sayesaman.database.model.OrderStatus;
import org.sayesaman.database.model.Tour;
import org.sayesaman.dialog.Statics;
import org.sayesaman.dialog.customer.CustomerDialog;

import java.util.ArrayList;

/**
 * Created by ameysami on 8/26/13.
 */
@EActivity(R.layout.bpp6)
@NoTitle
@Fullscreen
public class MyActivity extends Activity {
    LayoutInflater inflater;
    LinearLayout parent1;
    @Bean
    CustomerDao customerDao;
    ArrayList<Customer> list = new ArrayList<Customer>();
    @Bean
    TourDao tourDao;
    String mainPathId;
    String minPriceSale;
    String maxPriceWaste;
    @ViewById
    TextView bpp6_header1;
    @ViewById
    TextView bpp6_header2;
    @ViewById
    TextView bpp6_header3;
    @ViewById
    TextView bpp6_header4;
    @ViewById
    TextView bpp6_footer1;
    @ViewById
    TextView bpp6_footer2;
    @ViewById
    TextView bpp6_footer3;
    @ViewById
    TextView bpp6_footer4;
    @ViewById
    TextView bpp6_footer5;
    @ViewById
    TextView bpp6_footer6;

    String fragmentArgSalePathId = "0";

    @AfterViews
    protected void after() {
        Bundle extras = getIntent().getExtras();
        if (extras != null)
            fragmentArgSalePathId = extras.getString("fragmentArgSalePathId");

        list = customerDao.getAll(fragmentArgSalePathId);
        Tour tour = tourDao.getTour();
        mainPathId = tour.getMainPathId();
        minPriceSale = tour.getMinPriceSale();

        fillFooter();

        inflater = (LayoutInflater) this.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        parent1 = (LinearLayout) findViewById(R.id.bpp6_list_order);

        if (list.size() == 0) {
            TextView v = new TextView(this);
            v.setText("رکوردي يافت نشد.");
            v.setTypeface(Statics.getFontTypeFace_Titr());
            v.setTextSize(30);
            v.setTextColor(Color.RED);
            parent1.addView(v);

            bpp6_footer1.setText("");
            bpp6_footer2.setText("");
            bpp6_footer3.setText("");
            bpp6_footer4.setText("");
            bpp6_footer5.setText("");
            bpp6_footer6.setText("");
        } else {
            for (int i = 0; i < list.size(); i++) {
                AsyncTaskRunner runner = new AsyncTaskRunner();
                runner.execute(String.valueOf(i));
            }
        }

    }

    private void fillFooter() {
        OrderStatus orderStatusPath = customerDao.getOrderStatusByPath(fragmentArgSalePathId);
        DamageStatus damageStatusPath = customerDao.getDamageStatusByPath(fragmentArgSalePathId);

        bpp6_footer1.setText(String.valueOf(list.size()));
        bpp6_footer2.setText("<< مجموع >>");
        bpp6_footer3.setText(Statics.commas.insertCommas(orderStatusPath.getOrder_qty()));
        bpp6_footer4.setText(Statics.commas.insertCommas(damageStatusPath.getDamage_qty()));
        bpp6_footer5.setText(Statics.commas.insertCommas(orderStatusPath.getOrder_price()));
        bpp6_footer6.setText(Statics.commas.insertCommas(damageStatusPath.getDamage_price()));
    }

    private View getNewView(int i) {
        View view = inflater.inflate(R.layout.bpp6_row, null, false);

        if (i % 2 == 0) {
            view.setBackgroundColor(Statics.getColorOdd());
        } else {
            view.setBackgroundColor(Statics.getColorEven());
        }

        Customer cust = list.get(i);
        cust = customerDao.getCustomerSpecById(cust.getId());

        TextView bpp6_row_no = (TextView) view.findViewById(R.id.bpp6_row_no);
        TextView bpp6_cust_id = (TextView) view.findViewById(R.id.bpp6_cust_id);
        TextView bpp6_cust_code = (TextView) view.findViewById(R.id.bpp6_cust_code);
        TextView bpp6_cust_name = (TextView) view.findViewById(R.id.bpp6_cust_name);
        ImageButton bpp6_cust_img = (ImageButton) view.findViewById(R.id.bpp6_cust_img);

        TextView bpp6_order_qty = (TextView) view.findViewById(R.id.bpp6_order_qty);
        TextView bpp6_order_price = (TextView) view.findViewById(R.id.bpp6_order_price);
        ImageButton bpp6_order_img = (ImageButton) view.findViewById(R.id.bpp6_order_img);

        TextView bpp6_damage_qty = (TextView) view.findViewById(R.id.bpp6_damage_qty);
        TextView bpp6_damage_price = (TextView) view.findViewById(R.id.bpp6_damage_price);
        ImageButton bpp6_damage_img = (ImageButton) view.findViewById(R.id.bpp6_damage_img);

        bpp6_row_no.setText(String.valueOf(++i));
        bpp6_cust_id.setText(cust.getId());
        bpp6_cust_code.setText(cust.getCode());
        bpp6_cust_name.setText(cust.getName() + " (" + cust.getRealName() + ")");

        String orderQty = cust.getOrderStatus().getOrder_qty();
        String damageQty = cust.getDamageStatus().getDamage_qty();

        String orderPrice = cust.getOrderStatus().getOrder_price();
        String damagePrice = cust.getDamageStatus().getDamage_price();

        if (orderQty.equals("0")) {
            bpp6_order_img.setImageResource(R.drawable.tut8_order1);
            bpp6_order_qty.setText("0");
            bpp6_order_price.setText("0");
        } else {
            bpp6_order_img.setImageResource(R.drawable.tut8_order2);
            bpp6_order_qty.setText(Statics.commas.insertCommas(orderQty) + " (" + cust.getBuyTypeName() + ")");
            bpp6_order_price.setText(Statics.commas.insertCommas(orderPrice));
        }

        if (damageQty.equals("0")) {
            bpp6_damage_img.setImageResource(R.drawable.tut8_damage1);
            bpp6_damage_qty.setText("0");
            bpp6_damage_price.setText("0");
        } else {
            bpp6_damage_img.setImageResource(R.drawable.tut8_damage2);
            bpp6_damage_qty.setText(Statics.commas.insertCommas(damageQty));
            bpp6_damage_price.setText(Statics.commas.insertCommas(damagePrice));
        }

        bpp6_cust_img.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    TextView bpp6_cust_id = (TextView) parent.findViewById(R.id.bpp6_cust_id);
                    String id = (String) bpp6_cust_id.getText();

                    Customer customer2 = customerDao.getCustomerSpecById(id);

                    CustomerDialog dialog = new CustomerDialog(view.getContext(), customer2);
                    WindowManager.LayoutParams lWindowParams = new WindowManager.LayoutParams();
                    lWindowParams.copyFrom(dialog.getWindow().getAttributes());
                    lWindowParams.width = WindowManager.LayoutParams.FILL_PARENT; // this is where the magic happens
                    lWindowParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
                    dialog.show();// I was told to call show first I am not sure if this it to cause layout to happen so that we can override width?
                    dialog.getWindow().setAttributes(lWindowParams);
                }
            }
        });

        bpp6_order_img.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    TextView bpp6_cust_id = (TextView) parent.findViewById(R.id.bpp6_cust_id);
                    String id = (String) bpp6_cust_id.getText();

                    TextView bpp6_row_no = (TextView) parent.findViewById(R.id.bpp6_row_no);
                    selectedView = Integer.parseInt((String) bpp6_row_no.getText());
                    --selectedView;

                    Intent i = new Intent();
                    i.setClass(getApplicationContext(), org.sayesaman.bpp7.OrderMainGroup_.class);
                    i.putExtra("formId", id);
                    i.putExtra("formType", "order");
                    startActivity(i);
                }
            }
        });


        bpp6_damage_img.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    TextView bpp6_cust_id = (TextView) parent.findViewById(R.id.bpp6_cust_id);
                    String id = (String) bpp6_cust_id.getText();

                    TextView bpp6_row_no = (TextView) parent.findViewById(R.id.bpp6_row_no);
                    selectedView = Integer.parseInt((String) bpp6_row_no.getText());
                    --selectedView;

                    Intent i = new Intent();
                    i.setClass(getApplicationContext(), org.sayesaman.bpp7.DamageMainGroup_.class);
                    i.putExtra("formId", id);
                    i.putExtra("formType", "damage");
                    startActivity(i);
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

    private int selectedView; // used for detecting selected view when clling back to activity

    @Override
    protected void onRestart() {
        super.onRestart();
        parent1.removeViewAt(selectedView);
        View view = getNewView(selectedView);
        view.setBackgroundColor(Statics.getColorHighLight());
        parent1.addView(view, selectedView);

        fillFooter();
    }
}