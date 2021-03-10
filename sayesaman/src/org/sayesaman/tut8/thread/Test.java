package org.sayesaman.tut8.thread;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.EActivity;

import org.sayesaman.R;
import org.sayesaman.database.dao.CustomerDao;
import org.sayesaman.database.model.Customer;
import org.sayesaman.database.model.OrderHdr;
import org.sayesaman.dialog.Statics;
import org.sayesaman.dialog.customer.CustomerDialog;

import java.util.ArrayList;

/**
 * Created by ameysami on 8/26/13.
 */
@EActivity(R.layout.tut8)
public class Test extends Activity {
    LayoutInflater inflater;
    LinearLayout parent1;

    private String TAG = " ***************** Test";

    @Bean
    CustomerDao customerDao;
    ArrayList<Customer> list = new ArrayList<Customer>();

    @AfterViews
    public void after(){
        Bundle extras = getIntent().getExtras();
        String fragmentArgSalePathId = "0";
        if (extras != null) {
            fragmentArgSalePathId = extras.getString("fragmentArgSalePathId");
        }

        list = customerDao.getAll(fragmentArgSalePathId);
        inflater = (LayoutInflater) this.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        parent1 = (LinearLayout) findViewById(R.id.tut8_list_customer);

        for (int i = 0; i < list.size(); i++) {
            AsyncTaskRunner runner = new AsyncTaskRunner();
            runner.execute(String.valueOf(i));
        }
    }

    private View getNewView(int i) {
        View view = inflater.inflate(R.layout.tut8_customer, null, false);

        if (i % 2 == 0) {
            view.setBackgroundColor(Color.DKGRAY);
        } else {
            view.setBackgroundColor(Color.GRAY);
        }

        //for better performance we use this code to load customer specifications in another thread
        Customer customer1 = list.get(i);
        Customer customer2 = customerDao.getCustomerSpecById(customer1.getId());

        TextView tut8_cust_id = (TextView) view.findViewById(R.id.tut8_cust_id);
        TextView tut8_no = (TextView) view.findViewById(R.id.tut8_no);
        ImageView tut8_image = (ImageView) view.findViewById(R.id.tut8_image);
        TextView tut8_code = (TextView) view.findViewById(R.id.tut8_code);
        TextView tut8_real_name = (TextView) view.findViewById(R.id.tut8_real_name);
        TextView tut8_name = (TextView) view.findViewById(R.id.tut8_name);

        TextView tut8_order_qty = (TextView) view.findViewById(R.id.tut8_order_qty);
        TextView tut8_order_sum = (TextView) view.findViewById(R.id.tut8_order_sum);

        TextView tut8_damage_qty = (TextView) view.findViewById(R.id.tut8_damage_qty);
        TextView tut8_damage_sum = (TextView) view.findViewById(R.id.tut8_damage_sum);

        ImageView tut8_order_img = (ImageView) view.findViewById(R.id.tut8_order_img);
        ImageView tut8_damage_img = (ImageView) view.findViewById(R.id.tut8_damage_img);

        tut8_no.setText(String.valueOf(++i));
        tut8_cust_id.setText(customer1.getId());
        tut8_code.setText(customer1.getCode());
        tut8_real_name.setText(customer1.getRealName());
        tut8_name.setText(customer1.getName());

        tut8_order_qty.setText(customer2.getOrderStatus().getOrder_qty());
        tut8_order_sum.setText(customer2.getOrderStatus().getOrder_sum());

        tut8_damage_qty.setText(customer2.getDamageStatus().getDamage_qty());
        tut8_damage_sum.setText(customer2.getDamageStatus().getDamage_sum());

        if (!customer2.getOrderStatus().getOrder_qty().equals("0")) {
            tut8_image.setImageResource(R.drawable.social_person2);
            tut8_order_img.setImageResource(R.drawable.tut8_order2);
        } else {
            tut8_image.setImageResource(R.drawable.social_person1);
            tut8_order_img.setImageResource(R.drawable.tut8_order1);
        }

        if (!customer2.getDamageStatus().getDamage_qty().equals("0")) {
            tut8_image.setImageResource(R.drawable.social_person3);
            tut8_damage_img.setImageResource(R.drawable.tut8_damage2);
        } else {
            tut8_damage_img.setImageResource(R.drawable.tut8_damage1);
        }

        tut8_code.setTypeface(Statics.getFontTypeFace_Titr());
        tut8_name.setTypeface(Statics.getFontTypeFace_Titr());
        tut8_real_name.setTypeface(Statics.getFontTypeFace_Titr());

        tut8_image.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    TextView bpp3_cust_id = (TextView) parent.findViewById(R.id.tut8_cust_id);
                    String id = (String) bpp3_cust_id.getText();

                    Customer customer3 = customerDao.getCustomerSpecById(id);

                    CustomerDialog dialog = new CustomerDialog(view.getContext(), customer3);
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
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
*/
            View xyz = getNewView(Integer.valueOf(params[0]));
            return xyz;
        }

        @Override
        protected void onPostExecute(View xyz) {
            parent1.addView(xyz);
        }
    }
}