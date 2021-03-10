package org.sayesaman.dialog.order;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;

import org.sayesaman.database.model.OrderHdr;
import org.sayesaman.database.model.OrderItem;

public class OrderHdrView extends ScrollView {
    Handler handler;
    OrderHdr orderHdr;

    public OrderHdrView(Context context) {
        super(context);
        customizeMethod();
    }

    public OrderHdrView(Context context, OrderHdr orderHdr) {
        super(context);
        this.orderHdr = orderHdr;
        customizeMethod();
    }

    public OrderHdrView(Context context, AttributeSet attrs) {
        super(context, attrs);
        customizeMethod();
    }

    final void customizeMethod() {
        try {
            handler = new Handler();
        } catch (Exception ex) {
        }
        setBackgroundColor(0xffffffff);

        linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(LinearLayout.VERTICAL);
        addView(linearLayout);

        setLayoutParams(new android.widget.RelativeLayout.LayoutParams(android.widget.RelativeLayout.LayoutParams.FILL_PARENT, android.widget.RelativeLayout.LayoutParams.FILL_PARENT));

        for (int i = 0; i < orderHdr.getOrderItems().size(); i++) {
            //l.addView(new DamageItmView(getContext())); //created without using thread
            OrderItem orderItem = orderHdr.getOrderItems().get(i);
            AsyncTaskRunner runner = new AsyncTaskRunner();
            runner.execute(orderItem);
        }
    }

    LinearLayout linearLayout;

    private class AsyncTaskRunner extends AsyncTask<OrderItem, Void, View> {
        @Override
        protected View doInBackground(OrderItem... params) {
            /*try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }*/

            return new OrderItmView(getContext(),params[0]);
        }

        @Override
        protected void onPostExecute(View view) {
            linearLayout.addView(view);
        }
    }
}
