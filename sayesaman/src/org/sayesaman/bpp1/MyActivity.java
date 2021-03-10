package org.sayesaman.bpp1;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.ImageButton;
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
import org.sayesaman.database.dao.GoalDao;
import org.sayesaman.database.model.GoalHdr;
import org.sayesaman.database.model.GoalItm;
import org.sayesaman.dialog.Statics;
import org.sayesaman.util.PersianDate;

import java.util.ArrayList;

/**
 * Created by ameysami on 8/26/13.
 */
@EActivity(R.layout.bpp1)
@NoTitle
@Fullscreen
public class MyActivity extends Activity {
    LayoutInflater inflater;
    LinearLayout parent1;

    @Bean
    GoalDao dao;
    GoalHdr goalHdr;
    ArrayList<GoalItm> list = new ArrayList<GoalItm>();

    @ViewById
    TextView bpp1_footer_records;
    @ViewById
    TextView bpp1_footer_records_;

    @ViewById
    TextView bpp1_footer_date1;
    @ViewById
    TextView bpp1_footer_date2;

    @AfterViews
    protected void after() {
        goalHdr = dao.getList1();
        inflater = (LayoutInflater) this.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        parent1 = (LinearLayout) findViewById(R.id.bpp1_list);

        list = goalHdr.getItms();
        for (int i = 0; i < list.size(); i++) {
            AsyncTaskRunner runner = new AsyncTaskRunner();
            runner.execute(String.valueOf(i));
        }

        PersianDate persianDate = new PersianDate("1392", goalHdr.getAccMonth());
        bpp1_footer_records.setText(String.valueOf(list.size()));
        bpp1_footer_date1.setText(persianDate.getDate1());
        bpp1_footer_date2.setText(persianDate.getDate2());
    }

    private View getNewView(int i) {
        View view = inflater.inflate(R.layout.bpp1_row, null, false);

        if (i % 2 == 0) {
            view.setBackgroundColor(Statics.getColorOdd());
        } else {
            view.setBackgroundColor(Statics.getColorEven());
        }

        GoalItm goalItm = list.get(i);

        TextView bpp1_no = (TextView) view.findViewById(R.id.bpp1_no);
        TextView bpp1_code = (TextView) view.findViewById(R.id.bpp1_code);
        TextView bpp1_name = (TextView) view.findViewById(R.id.bpp1_name);
        TextView bpp1_group_name = (TextView) view.findViewById(R.id.bpp1_group_name);
        TextView bpp1_qty_sale = (TextView) view.findViewById(R.id.bpp1_qty_sale);
        TextView bpp1_qty_goal = (TextView) view.findViewById(R.id.bpp1_qty_goal);
        TextView bpp1_qty_percent = (TextView) view.findViewById(R.id.bpp1_qty_percent);
        TextView bpp1_qty_residue = (TextView) view.findViewById(R.id.bpp1_qty_residue);
        ImageView bpp1_image = (ImageView) view.findViewById(R.id.bpp1_image);

        bpp1_no.setText(String.valueOf(++i));
        bpp1_code.setText(goalItm.getGoodsCode());
        bpp1_name.setText(goalItm.getGoodsName());
        bpp1_group_name.setText(goalItm.getGoodsSubGroupName());
        bpp1_qty_sale.setText(goalItm.getQtySale());
        bpp1_qty_goal.setText(goalItm.getQtyGoal());

        float numSale = Float.parseFloat(goalItm.getQtySale());
        float numGoal = Float.parseFloat(goalItm.getQtyGoal());
        float numPercent = Math.round(numSale / numGoal * 100);
        float numResidue = numGoal - numSale;

        bpp1_qty_percent.setText(String.valueOf(numPercent).replace(".0", "") + " %");

        if (numResidue < 0)
            bpp1_qty_residue.setText("+" + String.valueOf(Math.abs(numResidue)).replace(".0", ""));
        else
            bpp1_qty_residue.setText("-" + String.valueOf(Math.abs(numResidue)).replace(".0", ""));

        if (numPercent >= 70) {
            bpp1_image.setImageResource(R.drawable.compare_green);
        } else if (numPercent < 70 && numPercent >= 30) {
            bpp1_image.setImageResource(R.drawable.compare_yellow);
        } else {
            bpp1_image.setImageResource(R.drawable.compare_red);
        }

        bpp1_image.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    TextView bpp1_code = (TextView) parent.findViewById(R.id.bpp1_code);
                    TextView bpp1_name = (TextView) parent.findViewById(R.id.bpp1_name);

                    final Dialog dialog = new Dialog(MyActivity.this);
                    dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
                    dialog.setContentView(R.layout.dialog_goods);
                    dialog.getWindow().getAttributes().windowAnimations = R.style.DialogAnimation;
                    dialog.show();

                    ImageView imageView123 = (ImageView) dialog.findViewById(R.id.imageView123);
                    Statics.setImg3(imageView123, "Goods", bpp1_code.getText().toString() , 200 , 400);

                    TextView custCode2 = (TextView) dialog.findViewById(R.id.app3_header_desc2);
                    custCode2.setTypeface(Statics.getFontTypeFace_Titr());
                    custCode2.setText(bpp1_code.getText().toString());

                    TextView custName2 = (TextView) dialog.findViewById(R.id.app3_header_desc1);
                    custName2.setTypeface(Statics.getFontTypeFace_Titr());
                    custName2.setText(bpp1_name.getText().toString());
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

}