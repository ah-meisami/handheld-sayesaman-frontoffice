package org.sayesaman.dialog.customer;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;

import org.sayesaman.R;
import org.sayesaman.database.model.Customer;
import org.sayesaman.dialog.CustomDialog;
import org.sayesaman.dialog.Statics;

public class CustomerDialog extends CustomDialog implements View.OnClickListener {
    org.sayesaman.database.model.Customer customer;

    public CustomerDialog(Context context, Customer customer) {
        super(context);
        this.customer = customer;
        init();
    }

    private void init() {
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setBackgroundDrawable(new ColorDrawable(android.graphics.Color.TRANSPARENT));
        setContentView(R.layout.dialog_cust);

        ((TextView) findViewById(R.id.dialog_order_title)).setText(customer.getCode() + " : " + customer.getName());

        findViewById(R.id.dialog_order_close).setOnClickListener(this);

        bind(customer);
    }

    private void bind(Customer customer) {
        ImageView dialog_cust_image = (ImageView) findViewById(R.id.dialog_cust_image);
        TextView dialog_cust_code = (TextView) findViewById(R.id.dialog_cust_code);
        TextView dialog_cust_name = (TextView) findViewById(R.id.dialog_cust_name);
        TextView dialog_cust_real_name = (TextView) findViewById(R.id.dialog_cust_real_name);
        TextView dialog_cust_phone = (TextView) findViewById(R.id.dialog_cust_phone);
        TextView dialog_cust_mobile = (TextView) findViewById(R.id.dialog_cust_mobile);
        TextView dialog_cust_address = (TextView) findViewById(R.id.dialog_cust_address);
        TextView dialog_cust_act = (TextView) findViewById(R.id.dialog_cust_act);
        TextView dialog_cust_ctgr = (TextView) findViewById(R.id.dialog_cust_ctgr);
        TextView dialog_cust_level = (TextView) findViewById(R.id.dialog_cust_level);
        TextView dialog_cust_pelak = (TextView) findViewById(R.id.dialog_cust_pelak);
        TextView dialog_cust_path = (TextView) findViewById(R.id.dialog_cust_path);

        dialog_cust_code.setText(customer.getCode());
        dialog_cust_name.setText(customer.getName());
        dialog_cust_real_name.setText(customer.getRealName());
        dialog_cust_phone.setText(customer.getPhone());
        dialog_cust_mobile.setText(customer.getMobile());
        dialog_cust_address.setText(customer.getAddress());
        dialog_cust_act.setText(customer.getCustActName());
        dialog_cust_ctgr.setText(customer.getCustCtgrName());
        dialog_cust_level.setText(customer.getCustLevelName());
        dialog_cust_pelak.setText(customer.getPelak());
        dialog_cust_path.setText(customer.getPathName());

        Statics.setImg2(dialog_cust_image, "Customer", customer.getCode());
    }

    @Override
    public void onClick(View v) {
        Log.d("123", "456");
        switch (v.getId()) {
            case R.id.dialog_order_close:
                dismiss();
                break;

            default:
                break;
        }
    }
}
