package org.sayesaman.bpp7;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
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
import org.sayesaman.database.dao.CustomerDao;
import org.sayesaman.database.dao.DamageDao;
import org.sayesaman.database.dao.GoodsGroupDao;
import org.sayesaman.database.dao.OrderDao;
import org.sayesaman.database.model.DamageHdr;
import org.sayesaman.database.model.DamageItem;
import org.sayesaman.database.model.GoodsGroup;
import org.sayesaman.database.model.OrderHdr;
import org.sayesaman.database.model.OrderItem;
import org.sayesaman.database.model.OrderStatus;
import org.sayesaman.dialog.Statics;
import org.sayesaman.dialog.damage.DamageDialog;
import org.sayesaman.dialog.order.OrderDialog;

import java.util.ArrayList;

/**
 * Created by ameysami on 8/26/13.
 */
@EActivity(R.layout.bpp7_goodsgrpoup_order)
@NoTitle
@Fullscreen
public class OrderSubGroup extends Activity {
    LayoutInflater inflater;
    LinearLayout parent1;
    String formId = "";
    String formType = "";
    String groupId1 = "";
    String groupName1 = "";

    @ViewById
    ImageView bpp7_header_img;
    @ViewById
    TextView bpp7_header_title;
    @ViewById
    TextView bpp7_header2;

    @Bean
    OrderDao orderDao;
    ArrayList<OrderItem> orderItems = new ArrayList<OrderItem>();

    @Bean
    DamageDao damageDao;
    ArrayList<DamageItem> damageItems = new ArrayList<DamageItem>();

    @Bean
    GoodsGroupDao goodsGroupDao;
    ArrayList<GoodsGroup> list = new ArrayList<GoodsGroup>();

    @Bean
    CustomerDao customerDao;

    @AfterViews
    protected void after() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            formId = extras.getString("formId");
            formType = extras.getString("formType");
            groupId1 = extras.getString("groupId1");
            groupName1 = extras.getString("groupName1");
        }

        inflater = (LayoutInflater) this.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        parent1 = (LinearLayout) findViewById(R.id.bpp7_list_items);

        list = goodsGroupDao.getList4CreateNew2(formType, groupId1);
        if (list.size() == 0) {
            TextView v = new TextView(this);
            v.setText("???????????? ???????? ??????.");
            v.setTypeface(Statics.getFontTypeFace_Titr());
            v.setTextSize(30);
            v.setTextColor(Color.RED);
            parent1.addView(v);
        } else {
            for (int i = 0; i < list.size(); i++) {
                AsyncTaskRunner runner = new AsyncTaskRunner();
                runner.execute(String.valueOf(i));
            }
        }

        configImageButton();
        configHeaderTitle();
        fillFooter();
    }

    private void configImageButton() {
        if (formType.equals("order")) {
            bpp7_header_img.setImageResource(R.drawable.tut8_order2);
        } else {
            bpp7_header_img.setImageResource(R.drawable.tut8_damage2);
        }

        bpp7_header_img.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    if (formType.equals("order"))
                        openDialogOrder(view, formId);
                    else
                        openDialogDamage(view, formId);
                }
            }
        });
    }

    private void openDialogOrder(View view, String custId) {
        OrderHdr orderHdr2 = orderDao.getOneOrderWithItemsById(custId);

        OrderDialog dialog = new OrderDialog(view.getContext(), orderHdr2);
        WindowManager.LayoutParams lWindowParams = new WindowManager.LayoutParams();
        lWindowParams.copyFrom(dialog.getWindow().getAttributes());
        lWindowParams.width = WindowManager.LayoutParams.FILL_PARENT; // this is where the magic happens
        lWindowParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
        dialog.show();// I was told to call show first I am not sure if this it to cause layout to happen so that we can override width?
        dialog.getWindow().setAttributes(lWindowParams);
    }

    private void openDialogDamage(View view, String custId) {
        DamageHdr damageHdr2 = damageDao.getOneDamageWithItemsById(custId);

        DamageDialog dialog = new DamageDialog(view.getContext(), damageHdr2);
        WindowManager.LayoutParams lWindowParams = new WindowManager.LayoutParams();
        lWindowParams.copyFrom(dialog.getWindow().getAttributes());
        lWindowParams.width = WindowManager.LayoutParams.FILL_PARENT; // this is where the magic happens
        lWindowParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
        dialog.show();// I was told to call show first I am not sure if this it to cause layout to happen so that we can override width?
        dialog.getWindow().setAttributes(lWindowParams);
    }

    private void configHeaderTitle() {
        bpp7_header2.setText("???????? ???????? ????????");

        if (formType.equals("order")) {
            bpp7_header_title.setText("?????????????? : " + groupName1 + " : ");
        } else {
            bpp7_header_title.setText("???????????? : " + groupName1 + " : ");
        }
    }

    private class AsyncTaskRunner extends AsyncTask<String, Void, View> {
        @Override
        protected View doInBackground(String... params) {
            return getNewView(Integer.valueOf(params[0]));
        }

        @Override
        protected void onPostExecute(View view) {
            parent1.addView(view);
        }
    }

    private View getNewView(int i) {
        View view = inflater.inflate(R.layout.bpp7_goodsgrpoup_order_row, null, false);

        if (i % 2 == 0) {
            view.setBackgroundColor(Statics.getColorOdd());
        } else {
            view.setBackgroundColor(Statics.getColorEven());
        }

        GoodsGroup group = list.get(i);

        OrderStatus orderStatus = goodsGroupDao.getOrderStatus4SubGoodsGroup(formId, group.getId());
        ((TextView) view.findViewById(R.id.goodsQtyRequest)).setText(orderStatus.getOrder_qty());
        ((TextView) view.findViewById(R.id.goodsQtyRequestSum)).setText(orderStatus.getOrder_sum());
        ((TextView) view.findViewById(R.id.goodsQtyRequestSumPrice)).setText(Statics.commas.insertCommas(orderStatus.getOrder_price()));

        ImageView goodsGroupImage = (ImageView) view.findViewById(R.id.goodsGroupImage);
        TextView goodsGroupId = (TextView) view.findViewById(R.id.goodsGroupId);
        TextView goodsGroupQty = (TextView) view.findViewById(R.id.goodsQtyActive);
        TextView rownum = (TextView) view.findViewById(R.id.rownum);
        TextView goodsGroupName = (TextView) view.findViewById(R.id.goodsGroupName);

        rownum.setText(String.valueOf(++i));
        goodsGroupName.setText(group.getName());
        goodsGroupId.setText(group.getId());
        goodsGroupQty.setText(group.getNoOfProducts());
        Statics.setImg2(goodsGroupImage, "GoodsGroup", group.getId());

        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                TextView rownum = (TextView) view.findViewById(R.id.rownum);
                TextView tvGroupId = (TextView) view.findViewById(R.id.goodsGroupId);
                TextView tvGroupName = (TextView) view.findViewById(R.id.goodsGroupName);

                selectedView = Integer.parseInt((String) rownum.getText());
                --selectedView;

                Intent i = new Intent();
                i.setClass(getApplicationContext(), OrderGoods_.class);
                i.putExtra("formId", formId);
                i.putExtra("formType", formType);
                i.putExtra("groupId1", groupId1);
                i.putExtra("groupName1", groupName1);
                i.putExtra("groupId2", tvGroupId.getText());
                i.putExtra("groupName2", tvGroupName.getText());
                startActivity(i);
            }
        });

        return view;
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

    @ViewById
    TextView bpp7_footer1;
    @ViewById
    TextView bpp7_footer2;
    @ViewById
    TextView bpp7_footer3;
    @ViewById
    TextView bpp7_footer4;
    @ViewById
    TextView bpp7_footer5;
    @ViewById
    TextView bpp7_footer6;

    private void fillFooter() {
        OrderStatus status = goodsGroupDao.getOrderStatusByIdAndMainGoodsGroup(formId, groupId1);
        String countGoods = goodsGroupDao.getCountGoods4NewOrderByMainGoodsGroup(groupId1);

        bpp7_footer1.setText(String.valueOf(list.size()));
        bpp7_footer2.setText("<< ?????????? >>");
        bpp7_footer3.setText(Statics.commas.insertCommas(countGoods));
        bpp7_footer4.setText(Statics.commas.insertCommas(status.getOrder_qty()));
        bpp7_footer5.setText(Statics.commas.insertCommas(status.getOrder_sum()));
        bpp7_footer6.setText(Statics.commas.insertCommas(status.getOrder_price()));
    }
}