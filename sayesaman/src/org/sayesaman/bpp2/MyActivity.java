package org.sayesaman.bpp2;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.os.AsyncTask;
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
import org.sayesaman.database.dao.DamageDao;
import org.sayesaman.database.dao.TourDao;
import org.sayesaman.database.model.Customer;
import org.sayesaman.database.model.DamageHdr;
import org.sayesaman.database.model.DamageStatus;
import org.sayesaman.database.model.OrderHdr;
import org.sayesaman.database.model.Tour;
import org.sayesaman.dialog.Statics;
import org.sayesaman.dialog.customer.CustomerDialog;
import org.sayesaman.dialog.damage.DamageDialog;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ameysami on 8/26/13.
 */
@EActivity(R.layout.bpp3)
@NoTitle
@Fullscreen
public class MyActivity extends Activity {
    LayoutInflater inflater;
    LinearLayout parent1;

    @Bean
    DamageDao damageDao;
    List<OrderHdr> list = new ArrayList<OrderHdr>();
    @Bean
    CustomerDao customerDao;
    @Bean
    TourDao tourDao;
    String mainPathId;
    String maxPriceWaste;

    @ViewById
    TextView bpp3_header1;
    @ViewById
    TextView bpp3_header2;
    @ViewById
    TextView bpp3_header3;
    @ViewById
    TextView bpp3_header4;
    @ViewById
    TextView bpp3_header5;

    @ViewById
    TextView bpp3_footer1;
    @ViewById
    TextView bpp3_footer2;
    @ViewById
    TextView bpp3_footer3;
    @ViewById
    TextView bpp3_footer4;
    @ViewById
    TextView bpp3_footer5;

    @AfterViews
    protected void after() {
        list = damageDao.getAll();
        Tour tour = tourDao.getTour();
        mainPathId = tour.getMainPathId();
        maxPriceWaste = tour.getMaxPriceWaste();
        DamageStatus damageStatusAll = damageDao.getDamageStatusAll();

        bpp3_footer1.setText(String.valueOf(list.size()));
        bpp3_footer2.setText("<< مجموع >>");
        bpp3_footer3.setText(Statics.commas.insertCommas(damageStatusAll.getDamage_qty()));
        bpp3_footer4.setText(Statics.commas.insertCommas(damageStatusAll.getDamage_sum()));
        bpp3_footer5.setText(Statics.commas.insertCommas(damageStatusAll.getDamage_price()));

        inflater = (LayoutInflater) this.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        parent1 = (LinearLayout) findViewById(R.id.bpp3_list_order);

        if (list.size() == 0) {
            TextView v = new TextView(this);
            v.setText("رکوردی يافت نشد.");
            v.setTypeface(Statics.getFontTypeFace_Titr());
            v.setTextSize(30);
            v.setTextColor(Color.RED);
            parent1.addView(v);

            bpp3_footer1.setText("");
            bpp3_footer2.setText("");
            bpp3_footer3.setText("");
            bpp3_footer4.setText("");
            bpp3_footer5.setText("");
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
        View view = inflater.inflate(R.layout.bpp3_row, null, false);

        if (i % 2 == 0) {
            view.setBackgroundColor(Statics.getColorOdd());
        } else {
            view.setBackgroundColor(Statics.getColorEven());
        }

        OrderHdr orderHdr = list.get(i);
        Customer cust = orderHdr.getCustomer();

        TextView bpp3_row_no = (TextView) view.findViewById(R.id.bpp3_row_no);
        TextView bpp3_cust_id = (TextView) view.findViewById(R.id.bpp3_cust_id);
        TextView bpp3_cust_code = (TextView) view.findViewById(R.id.bpp3_cust_code);
        TextView bpp3_cust_name = (TextView) view.findViewById(R.id.bpp3_cust_name);
        TextView bpp3_itm_qty = (TextView) view.findViewById(R.id.bpp3_itm_qty);
        TextView bpp3_itm_sum = (TextView) view.findViewById(R.id.bpp3_itm_sum);
        TextView bpp3_itm_price = (TextView) view.findViewById(R.id.bpp3_itm_price);
        ImageButton bpp3_image_cust = (ImageButton) view.findViewById(R.id.bpp3_image_cust);
        ImageButton bpp3_image_order = (ImageButton) view.findViewById(R.id.bpp3_image_order);

        if (!cust.getPathId().equals(mainPathId))
            bpp3_image_order.setImageResource(R.drawable.tut8_order1);
        else
            bpp3_image_order.setImageResource(R.drawable.tut8_order2);

        bpp3_row_no.setText(String.valueOf(++i));
        bpp3_cust_id.setText(cust.getId());
        bpp3_cust_code.setText(cust.getCode());
        bpp3_cust_name.setText(cust.getName());
        bpp3_itm_qty.setText(cust.getDamageStatus().getDamage_qty());
        bpp3_itm_sum.setText(cust.getDamageStatus().getDamage_sum());
        String damagePrice = cust.getDamageStatus().getDamage_price();
        bpp3_itm_price.setText(Statics.commas.insertCommas(damagePrice));

        try {
            if (Double.parseDouble(damagePrice) >= Double.parseDouble(maxPriceWaste))
                bpp3_itm_price.setTextColor(Statics.getColorError());
        } catch (NullPointerException e) {
            bpp3_itm_price.setTextColor(Statics.getColorError());
        }

        bpp3_image_cust.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    TextView bpp3_cust_id = (TextView) parent.findViewById(R.id.bpp3_cust_id);
                    String id = (String) bpp3_cust_id.getText();

                    DamageHdr damageHdr2 = damageDao.getOneDamageWithItemsById(id);

                    CustomerDialog dialog = new CustomerDialog(view.getContext(), damageHdr2.getCustomer());
                    WindowManager.LayoutParams lWindowParams = new WindowManager.LayoutParams();
                    lWindowParams.copyFrom(dialog.getWindow().getAttributes());
                    lWindowParams.width = WindowManager.LayoutParams.FILL_PARENT; // this is where the magic happens
                    lWindowParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
                    dialog.show();// I was told to call show first I am not sure if this it to cause layout to happen so that we can override width?
                    dialog.getWindow().setAttributes(lWindowParams);
                }
            }
        });

        bpp3_image_order.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    TextView bpp3_cust_id = (TextView) parent.findViewById(R.id.bpp3_cust_id);
                    String id = (String) bpp3_cust_id.getText();

                    DamageHdr damageHdr2 = damageDao.getOneDamageWithItemsById(id);

                    DamageDialog dialog = new DamageDialog(view.getContext(), damageHdr2);
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
}