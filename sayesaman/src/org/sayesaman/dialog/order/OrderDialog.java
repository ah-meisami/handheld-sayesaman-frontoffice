package org.sayesaman.dialog.order;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;

import org.sayesaman.R;
import org.sayesaman.dialog.CustomDialog;
import org.sayesaman.dialog.Statics;

public class OrderDialog extends CustomDialog implements View.OnClickListener {
    org.sayesaman.database.model.OrderHdr orderHdr;

    public OrderDialog(Context context, org.sayesaman.database.model.OrderHdr orderHdr) {
        super(context);
        this.orderHdr = orderHdr;
        dojobs();
    }

    private void dojobs() {
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setBackgroundDrawable(new ColorDrawable(android.graphics.Color.TRANSPARENT));
        setContentView(R.layout.dialog_order);

        ((ViewGroup) findViewById(R.id.dialog_order_list)).addView(new OrderHdrView(getContext(), orderHdr));

        ((TextView) findViewById(R.id.dialog_order_title)).setText(orderHdr.getCustomer().getCode() + " : " + orderHdr.getCustomer().getName());
        ((TextView) findViewById(R.id.dialog_order_title)).setTypeface(Statics.getFontTypeFace_Yekan());

        findViewById(R.id.dialog_order_close).setOnClickListener(this);

        ((TextView) findViewById(R.id.dialog_order_buy_type)).setTypeface(Statics.getFontTypeFace_Yekan());
        ((TextView) findViewById(R.id.dialog_order_buy_type_)).setTypeface(Statics.getFontTypeFace_Yekan());

        ((TextView) findViewById(R.id.dialog_order_price_)).setTypeface(Statics.getFontTypeFace_Titr());
        ((TextView) findViewById(R.id.dialog_order_price)).setText(Statics.commas.insertCommas(orderHdr.getCustomer().getOrderStatus().getOrder_price()));
        ((TextView) findViewById(R.id.dialog_order_price)).setTypeface(Statics.getFontTypeFace_Yekan());
        ((TextView) findViewById(R.id.dialog_order_buy_type)).setText(orderHdr.getCustomer().getBuyTypeName());
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
}
