//
// DO NOT EDIT THIS FILE, IT HAS BEEN GENERATED USING AndroidAnnotations.
//


package org.sayesaman.bpp7;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;
import org.sayesaman.R.id;
import org.sayesaman.R.layout;
import org.sayesaman.database.dao.BuyTypeDao_;
import org.sayesaman.database.dao.CustomerDao_;
import org.sayesaman.database.dao.DamageDao_;
import org.sayesaman.database.dao.GoodsGroupDao_;
import org.sayesaman.database.dao.OrderDao_;

public final class OrderMainGroup_
    extends OrderMainGroup
{


    @Override
    public void onCreate(Bundle savedInstanceState) {
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        setContentView(layout.bpp7_goodsgrpoup_order);
    }

    private void init_(Bundle savedInstanceState) {
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(android.view.WindowManager.LayoutParams.FLAG_FULLSCREEN, android.view.WindowManager.LayoutParams.FLAG_FULLSCREEN);
        damageDao = DamageDao_.getInstance_(this);
        customerDao = CustomerDao_.getInstance_(this);
        buyTypeDao = BuyTypeDao_.getInstance_(this);
        goodsGroupDao = GoodsGroupDao_.getInstance_(this);
        orderDao = OrderDao_.getInstance_(this);
    }

    private void afterSetContentView_() {
        bpp7_footer5 = ((TextView) findViewById(id.bpp7_footer5));
        bpp7_spinner_buytype = ((Spinner) findViewById(id.bpp7_spinner_buytype));
        bpp7_header_img = ((ImageView) findViewById(id.bpp7_header_img));
        bpp7_footer6 = ((TextView) findViewById(id.bpp7_footer6));
        bpp7_footer2 = ((TextView) findViewById(id.bpp7_footer2));
        bpp7_footer3 = ((TextView) findViewById(id.bpp7_footer3));
        bpp7_footer1 = ((TextView) findViewById(id.bpp7_footer1));
        bpp7_header2 = ((TextView) findViewById(id.bpp7_header2));
        bpp7_footer4 = ((TextView) findViewById(id.bpp7_footer4));
        bpp7_header_title = ((TextView) findViewById(id.bpp7_header_title));
        ((DamageDao_) damageDao).afterSetContentView_();
        ((CustomerDao_) customerDao).afterSetContentView_();
        ((BuyTypeDao_) buyTypeDao).afterSetContentView_();
        ((GoodsGroupDao_) goodsGroupDao).afterSetContentView_();
        ((OrderDao_) orderDao).afterSetContentView_();
        after();
    }

    @Override
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        afterSetContentView_();
    }

    @Override
    public void setContentView(View view, android.view.ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        afterSetContentView_();
    }

    @Override
    public void setContentView(View view) {
        super.setContentView(view);
        afterSetContentView_();
    }

    public static OrderMainGroup_.IntentBuilder_ intent(Context context) {
        return new OrderMainGroup_.IntentBuilder_(context);
    }

    public static class IntentBuilder_ {

        private Context context_;
        private final Intent intent_;

        public IntentBuilder_(Context context) {
            context_ = context;
            intent_ = new Intent(context, OrderMainGroup_.class);
        }

        public Intent get() {
            return intent_;
        }

        public OrderMainGroup_.IntentBuilder_ flags(int flags) {
            intent_.setFlags(flags);
            return this;
        }

        public void start() {
            context_.startActivity(intent_);
        }

        public void startForResult(int requestCode) {
            if (context_ instanceof Activity) {
                ((Activity) context_).startActivityForResult(intent_, requestCode);
            } else {
                context_.startActivity(intent_);
            }
        }

    }

}
