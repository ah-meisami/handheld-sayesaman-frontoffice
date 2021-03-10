package org.sayesaman.dialog.report2;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import org.sayesaman.R;
import org.sayesaman.database.model.Customer;
import org.sayesaman.database.model.OrderHdr;
import org.sayesaman.database.model.reports.Report2Hdr;
import org.sayesaman.database.model.reports.Report2Itm;
import org.sayesaman.dialog.CustomDialog;
import org.sayesaman.dialog.Statics;
import org.sayesaman.dialog.customer.CustomerDialog;

public class Report2Dialog extends CustomDialog implements View.OnClickListener {
    LayoutInflater inflater;
    LinearLayout parent1;
    Report2Hdr report2Hdr;

    public Report2Dialog(Context context, Report2Hdr report2Hdr) {
        super(context);
        this.report2Hdr = report2Hdr;
        init(context);
    }

    private void init(Context context) {
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setBackgroundDrawable(new ColorDrawable(android.graphics.Color.TRANSPARENT));
        setContentView(R.layout.dialog_report2);

        ((TextView) findViewById(R.id.dialog_order_title)).setText(report2Hdr.getGoods().getCode() + " : " + report2Hdr.getGoods().getName());
        ((TextView) findViewById(R.id.dialog_qty)).setText(report2Hdr.getReportStatus().getOrder_qty());
        ((TextView) findViewById(R.id.dialog_sum)).setText(report2Hdr.getReportStatus().getOrder_sum());
        ((TextView) findViewById(R.id.dialog_price)).setText(report2Hdr.getReportStatus().getOrder_price());
        ImageView imageView = (ImageView) findViewById(R.id.imageView);
        Statics.setImg3(imageView, "Goods", report2Hdr.getGoods().getCode(), 200, 400);

        findViewById(R.id.dialog_order_close).setOnClickListener(this);

        inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        parent1 = (LinearLayout) findViewById(R.id.dialog_report2_list);
        for (int i = 0; i < report2Hdr.getReport2Itms().size(); i++) {
            AsyncTaskRunner runner = new AsyncTaskRunner();
            runner.execute(String.valueOf(i));
        }
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.dialog_order_close:
                dismiss();
                break;

            default:
                break;
        }
    }

    private class AsyncTaskRunner extends AsyncTask<String, Void, View> {
        @Override
        protected View doInBackground(String... params) {
            /*try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }*/
            return getNewView(Integer.valueOf(params[0]));
        }

        @Override
        protected void onPostExecute(View view) {
            parent1.addView(view);
        }
    }

    private View getNewView(int i) {
        View view = inflater.inflate(R.layout.dialog_report2_row, null, false);

        if (i % 2 == 0) {
            view.setBackgroundColor(Statics.getColorOdd());
        } else {
            view.setBackgroundColor(Statics.getColorEven());
        }

        Report2Itm report2Itm = report2Hdr.getReport2Itms().get(i);

        TextView dialog_report2_row_no = (TextView) view.findViewById(R.id.dialog_report2_row_no);
        TextView dialog_report2_cust_code = (TextView) view.findViewById(R.id.dialog_report2_cust_code);
        TextView dialog_report2_cust_name = (TextView) view.findViewById(R.id.dialog_report2_cust_name);
        TextView dialog_report2_cust_id = (TextView) view.findViewById(R.id.dialog_report2_cust_id);
        TextView dialog_report2_itm_qty = (TextView) view.findViewById(R.id.dialog_report2_itm_qty);
        ImageButton dialog_report2_image_cust = (ImageButton) view.findViewById(R.id.dialog_report2_image_cust);

        dialog_report2_row_no.setText(String.valueOf(++i));
        dialog_report2_cust_code.setText(report2Itm.getCustomer().getCode());
        dialog_report2_cust_name.setText(report2Itm.getCustomer().getName());
        dialog_report2_itm_qty.setText(report2Itm.getGoodsQty());
        dialog_report2_cust_id.setText(report2Itm.getCustomer().getId());

        dialog_report2_image_cust.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    String i = (String) ((TextView) parent.findViewById(R.id.dialog_report2_row_no)).getText();
                    int j = Integer.parseInt(i);
                    Customer customer = report2Hdr.getReport2Itms().get(--j).getCustomer();

                    CustomerDialog dialog = new CustomerDialog(view.getContext(), customer);
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
