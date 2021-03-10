package org.sayesaman.dialog.damage;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;

import org.sayesaman.database.model.DamageHdr;
import org.sayesaman.database.model.DamageItem;
import org.sayesaman.database.model.OrderHdr;
import org.sayesaman.database.model.OrderItem;

public class DamageHdrView extends ScrollView {
    Handler handler;
    DamageHdr damageHdr;

    public DamageHdrView(Context context) {
        super(context);
        customizeMethod();
    }

    public DamageHdrView(Context context, DamageHdr damageHdr) {
        super(context);
        this.damageHdr = damageHdr;
        customizeMethod();
    }

    public DamageHdrView(Context context, AttributeSet attrs) {
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

        for (int i = 0; i < damageHdr.getDamageItems().size(); i++) {
            //l.addView(new DamageItmView(getContext())); //created without using thread
            DamageItem damageItem = damageHdr.getDamageItems().get(i);
            AsyncTaskRunner runner = new AsyncTaskRunner();
            runner.execute(damageItem);
        }
    }

    LinearLayout linearLayout;

    private class AsyncTaskRunner extends AsyncTask<DamageItem, Void, View> {
        @Override
        protected View doInBackground(DamageItem... params) {
            /*try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }*/

            return new DamageItmView(getContext(), params[0]);
        }

        @Override
        protected void onPostExecute(View view) {
            linearLayout.addView(view);
        }
    }
}
