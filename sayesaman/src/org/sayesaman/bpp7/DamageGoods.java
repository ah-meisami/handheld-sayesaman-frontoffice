package org.sayesaman.bpp7;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
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
import org.sayesaman.database.dao.GoodsDao;
import org.sayesaman.database.dao.GoodsGroupDao;
import org.sayesaman.database.dao.RetCauseDao;
import org.sayesaman.database.model.DamageHdr;
import org.sayesaman.database.model.DamageItem;
import org.sayesaman.database.model.DamageStatus;
import org.sayesaman.database.model.Goods;
import org.sayesaman.database.model.GoodsGroup;
import org.sayesaman.database.model.RetCause;
import org.sayesaman.dialog.Statics;
import org.sayesaman.dialog.damage.DamageDialog;

import java.util.ArrayList;

/**
 * Created by ameysami on 8/26/13.
 */
@EActivity(R.layout.bpp7_damage)
@NoTitle
@Fullscreen
public class DamageGoods extends Activity {
    LayoutInflater inflater;
    LinearLayout parent1;
    String formId = "";
    String formType = "";
    String groupId1 = "";
    String groupName1 = "";
    String groupId2 = "";
    String groupName2 = "";

    @ViewById
    ImageView bpp7_header_img;

    @ViewById
    TextView bpp7_header_title;

    @Bean
    GoodsDao goodsDao;

    @Bean
    GoodsGroupDao goodsGroupDao;
    ArrayList<GoodsGroup> goodsGroups = new ArrayList<GoodsGroup>();

    @Bean
    CustomerDao customerDao;

    @Bean
    DamageDao damageDao;
    ArrayList<DamageItem> damageItems = new ArrayList<DamageItem>();

    @Bean
    RetCauseDao retCauseDao;

    @AfterViews
    protected void after() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            formId = extras.getString("formId");
            formType = extras.getString("formType");
            groupId1 = extras.getString("groupId1");
            groupName1 = extras.getString("groupName1");
            groupId2 = extras.getString("groupId2");
            groupName2 = extras.getString("groupName2");
        }

        inflater = (LayoutInflater) this.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        parent1 = (LinearLayout) findViewById(R.id.bpp7_list_items);

        initDamage();
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
                    openDialogDamage(view, formId);
                }
            }
        });
    }

    private void configHeaderTitle() {
        if (formType.equals("order")) {
            bpp7_header_title.setText("درخواست : " + groupName1 + " : " + groupName2);
        } else {
            bpp7_header_title.setText("ضایعات : " + groupName1 + " : " + groupName2);
        }
    }

    private void initDamage() {
        damageItems = damageDao.getDamageItemsForNewDamage(formId, groupId1, groupId2);
        if (damageItems.size() == 0) {
            TextView v = new TextView(this);
            v.setText("رکوردی يافت نشد.");
            v.setTypeface(Statics.getFontTypeFace_Titr());
            v.setTextSize(30);
            v.setTextColor(Color.RED);
            parent1.addView(v);
        } else {
            for (int i = 0; i < damageItems.size(); i++) {
                AsyncTaskRunnerDamage runner = new AsyncTaskRunnerDamage();
                runner.execute(String.valueOf(i));
            }
        }
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

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 1) {
            if (resultCode == RESULT_OK) {
                String numQty = data.getStringExtra("numQty");
                String viewIndex = data.getStringExtra("viewIndex");
                String oprType = data.getStringExtra("oprType");

                //Toast.makeText(getApplicationContext(), "damage", 50).show();
                View parent = parent1.getChildAt(Integer.parseInt(viewIndex));

                TextView tvId = (TextView) parent.findViewById(R.id.bpp7_row_id);
                TextView tvNo = (TextView) parent.findViewById(R.id.bpp7_row_no);
                TextView tvGoodsRef = (TextView) parent.findViewById(R.id.bpp7_row_goods_id);
                TextView tvQty = (TextView) parent.findViewById(R.id.bpp7_row_order_qty);
                TextView tvPrice = (TextView) parent.findViewById(R.id.bpp7_row_price);
                TextView tvPriceSum = (TextView) parent.findViewById(R.id.bpp7_row_price_sum);
                TextView tvRetRef = (TextView) parent.findViewById(R.id.bpp7_row_ret_cause_ref);
                TextView tvRetName = (TextView) parent.findViewById(R.id.bpp7_row_ret_cause_name);

                Long no = Long.parseLong(tvNo.getText().toString());

                if (tvRetRef.getText().toString().trim().equals("")) {
                    fillRetCauseAndThenGetPriceOfGoods(parent);
                }

                    /*
                    if (Long.parseLong(numQty) < 1)
                        if (no % 2 == 0) {
                            parent.setBackgroundColor(Statics.getColorEven());
                        } else {
                            parent.setBackgroundColor(Statics.getColorOdd());
                        }
                    */

                tvQty.setText(numQty);
                parent.setBackgroundColor(Statics.getColorHighLight());

                long y = Long.parseLong(String.valueOf(numQty)) * Long.parseLong(tvPrice.getText().toString().replace(".0", "").replace(",", ""));
                tvPriceSum.setText(Statics.commas.insertCommas(String.valueOf(y)).replace(".0", ""));

                String id = damageDao.saveItem(formId, tvId.getText().toString(), tvGoodsRef.getText().toString(), tvQty.getText().toString(), tvRetRef.getText().toString());
                tvId.setText(id);

                fillFooter();
            }
        }
    }

    private class AsyncTaskRunnerDamage extends AsyncTask<String, Void, View> {
        @Override
        protected View doInBackground(String... params) {
            /*
            try {
                Thread.sleep(50);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            */
            return getViewDamage(Integer.valueOf(params[0]));
        }

        @Override
        protected void onPostExecute(View view) {
            parent1.addView(view);
        }
    }

    private View getViewDamage(int i) {
        View view = inflater.inflate(R.layout.bpp7_damage_row, null, false);
        Goods goods = damageItems.get(i).getGoods();
        //*******************************************************************************************
        if (i % 2 == 0) {
            view.setBackgroundColor(Statics.getColorOdd());
        } else {
            view.setBackgroundColor(Statics.getColorEven());
        }
        //*******************************************************************************************
        TextView tvNo = (TextView) view.findViewById(R.id.bpp7_row_no);
        TextView tvId = (TextView) view.findViewById(R.id.bpp7_row_id);
        TextView tvGoodsRef = (TextView) view.findViewById(R.id.bpp7_row_goods_id);
        TextView tvGoodsCode = (TextView) view.findViewById(R.id.bpp7_row_goods_code);
        TextView tvGoodsName = (TextView) view.findViewById(R.id.bpp7_row_goods_name);
        ImageView ivGoods = (ImageView) view.findViewById(R.id.bpp7_row_order_goods_image);
        TextView tvQty = (TextView) view.findViewById(R.id.bpp7_row_order_qty);
        TextView tvPrice = (TextView) view.findViewById(R.id.bpp7_row_price);
        TextView tvPriceSum = (TextView) view.findViewById(R.id.bpp7_row_price_sum);
        TextView tvRetRef = (TextView) view.findViewById(R.id.bpp7_row_ret_cause_ref);
        TextView tvRetName = (TextView) view.findViewById(R.id.bpp7_row_ret_cause_name);
        //*******************************************************************************************
        tvNo.setText(damageItems.get(i).getNo());
        tvId.setText(damageItems.get(i).getId());
        tvGoodsRef.setText(goods.getId());
        tvGoodsCode.setText(goods.getCode());
        tvGoodsName.setText(goods.getName());
        tvQty.setText(Statics.commas.insertCommas(damageItems.get(i).getQty()));
        tvPrice.setText(damageItems.get(i).getPrice());
        tvPriceSum.setText(Statics.commas.insertCommas(damageItems.get(i).getPrice_sum()));
        tvRetRef.setText(damageItems.get(i).getRetCauseRef());
        tvRetName.setText(damageItems.get(i).getRetCauseName());
        tvPrice.setText(damageItems.get(i).getPrice());
        tvPriceSum.setText(Statics.commas.insertCommas(damageItems.get(i).getPrice_sum()));
        Statics.setImg2(ivGoods, "Goods", goods.getCode());

        if (Long.parseLong(damageItems.get(i).getQty()) > 0) {
            view.setBackgroundColor(Statics.getColorHighLight());
        }
        //*******************************************************************************************
        ((Button) view.findViewById(R.id.bpp7_row_btn_plus)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    TextView tvId = (TextView) parent.findViewById(R.id.bpp7_row_id);
                    TextView tvNo = (TextView) parent.findViewById(R.id.bpp7_row_no);
                    TextView tvGoodsRef = (TextView) parent.findViewById(R.id.bpp7_row_goods_id);
                    TextView tvQty = (TextView) parent.findViewById(R.id.bpp7_row_order_qty);
                    TextView tvPrice = (TextView) parent.findViewById(R.id.bpp7_row_price);
                    TextView tvPriceSum = (TextView) parent.findViewById(R.id.bpp7_row_price_sum);
                    TextView tvRetRef = (TextView) parent.findViewById(R.id.bpp7_row_ret_cause_ref);
                    TextView tvRetName = (TextView) parent.findViewById(R.id.bpp7_row_ret_cause_name);

                    Long no = Long.parseLong(tvNo.getText().toString().replace(",", ""));
                    Long qty = Long.parseLong(tvQty.getText().toString().replace(",", ""));

                    if (tvRetRef.getText().toString().trim().equals("")) {
                        fillRetCauseAndThenGetPriceOfGoods(parent);
                    }

                    if (qty != 10000) {
                        tvQty.setText(String.valueOf(++qty));
                        parent.setBackgroundColor(Statics.getColorHighLight());
                    }

                    long y = Long.parseLong(String.valueOf(qty)) * Long.parseLong(tvPrice.getText().toString().replace(".0", "").replace(",", ""));
                    tvPriceSum.setText(Statics.commas.insertCommas(String.valueOf(y)).replace(".0", ""));

                    String id = damageDao.saveItem(formId, tvId.getText().toString(), tvGoodsRef.getText().toString(), tvQty.getText().toString(), tvRetRef.getText().toString());
                    tvId.setText(id);
                }

                fillFooter();
            }
        });

        ((Button) view.findViewById(R.id.bpp7_row_btn_minus)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    TextView tvId = (TextView) parent.findViewById(R.id.bpp7_row_id);
                    TextView tvNo = (TextView) parent.findViewById(R.id.bpp7_row_no);
                    TextView tvGoodsRef = (TextView) parent.findViewById(R.id.bpp7_row_goods_id);
                    TextView tvQty = (TextView) parent.findViewById(R.id.bpp7_row_order_qty);
                    TextView tvPrice = (TextView) parent.findViewById(R.id.bpp7_row_price);
                    TextView tvPriceSum = (TextView) parent.findViewById(R.id.bpp7_row_price_sum);
                    TextView tvRetRef = (TextView) parent.findViewById(R.id.bpp7_row_ret_cause_ref);
                    TextView tvRetName = (TextView) parent.findViewById(R.id.bpp7_row_ret_cause_name);

                    Long no = Long.parseLong(tvNo.getText().toString().replace(",", ""));
                    Long qty = Long.parseLong(tvQty.getText().toString().replace(",", ""));

                    if (tvRetRef.getText().toString().trim().equals(""))
                        fillRetCauseAndThenGetPriceOfGoods(parent);

                    if (qty >= 1)
                        tvQty.setText(String.valueOf(--qty));

                    if (qty < 1)
                        if (no % 2 == 0) {
                            parent.setBackgroundColor(Statics.getColorEven());
                        } else {
                            parent.setBackgroundColor(Statics.getColorOdd());
                        }

                    long y = Long.parseLong(String.valueOf(qty)) * Long.parseLong(tvPrice.getText().toString().replace(".0", "").replace(",", ""));
                    tvPriceSum.setText(Statics.commas.insertCommas(String.valueOf(y)).replace(".0", ""));

                    String id = damageDao.saveItem(formId, tvId.getText().toString(), tvGoodsRef.getText().toString(), tvQty.getText().toString(), tvRetRef.getText().toString());
                    tvId.setText(id);
                }

                fillFooter();
            }
        });
        //*******************************************************************************************
        ((Button) view.findViewById(R.id.bpp7_row_btn_retcause)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    fillRetCauseAndThenGetPriceOfGoods(parent);

                    TextView tvId = (TextView) parent.findViewById(R.id.bpp7_row_id);
                    TextView tvQty = (TextView) parent.findViewById(R.id.bpp7_row_order_qty);
                    TextView tvPrice = (TextView) parent.findViewById(R.id.bpp7_row_price);
                    TextView tvPriceSum = (TextView) parent.findViewById(R.id.bpp7_row_price_sum);
                    TextView tvGoodsRef = (TextView) parent.findViewById(R.id.bpp7_row_goods_id);
                    TextView tvRetRef = (TextView) parent.findViewById(R.id.bpp7_row_ret_cause_ref);

                    Long qty = Long.parseLong(tvQty.getText().toString().replace(",", ""));

                    long y = Long.parseLong(String.valueOf(qty)) * Long.parseLong(tvPrice.getText().toString().replace(".0", "").replace(",", ""));
                    tvPriceSum.setText(Statics.commas.insertCommas(String.valueOf(y)).replace(".0", ""));

                    String id = damageDao.saveItem(formId, tvId.getText().toString(), tvGoodsRef.getText().toString(), tvQty.getText().toString(), tvRetRef.getText().toString());
                    tvId.setText(id);
                }

                fillFooter();
            }
        });
        //*******************************************************************************************
        view.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View view) {
                TextView tvNo = (TextView) view.findViewById(R.id.bpp7_row_no);
                TextView tvQty = (TextView) view.findViewById(R.id.bpp7_row_order_qty);

                Long k = Long.parseLong(tvNo.getText().toString());
                String viewIndex = String.valueOf(--k);
                String numQty = tvQty.getText().toString();

                Intent i = new Intent();
                i.setClass(getApplicationContext(), org.sayesaman.keypad.Keypad_.class);
                i.putExtra("numQty", numQty);
                i.putExtra("viewIndex", viewIndex);
                i.putExtra("oprType", "damage");
                startActivityForResult(i, 1);

                return false;
            }
        });
        //*******************************************************************************************
        ivGoods.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                View parent = (View) view.getParent();
                if (parent != null) {
                    TextView bpp1_code = (TextView) parent.findViewById(R.id.bpp7_row_goods_code);
                    TextView bpp1_name = (TextView) parent.findViewById(R.id.bpp7_row_goods_name);

                    final Dialog dialog = new Dialog(DamageGoods.this);
                    dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
                    dialog.setContentView(R.layout.dialog_goods);
                    dialog.getWindow().getAttributes().windowAnimations = R.style.DialogAnimation;
                    dialog.show();

                    ImageView imageView123 = (ImageView) dialog.findViewById(R.id.imageView123);
                    Statics.setImg3(imageView123, "Goods", bpp1_code.getText().toString(), 200, 400);

                    TextView custCode2 = (TextView) dialog.findViewById(R.id.app3_header_desc2);
                    custCode2.setTypeface(Statics.getFontTypeFace_Titr());
                    custCode2.setText(bpp1_code.getText().toString());

                    TextView custName2 = (TextView) dialog.findViewById(R.id.app3_header_desc1);
                    custName2.setTypeface(Statics.getFontTypeFace_Titr());
                    custName2.setText(bpp1_name.getText().toString());
                }
            }
        });
        //*******************************************************************************************
        return view;
    }

    private void fillRetCauseAndThenGetPriceOfGoods(View view) {
        TextView tvRetRef = (TextView) view.findViewById(R.id.bpp7_row_ret_cause_ref);
        TextView tvRetName = (TextView) view.findViewById(R.id.bpp7_row_ret_cause_name);

        RetCause retCause = retCauseDao.getNext(tvRetRef.getText().toString().trim());

        tvRetRef.setText(retCause.getId());
        tvRetName.setText(retCause.getName());


        TextView tvGoodsRef = (TextView) view.findViewById(R.id.bpp7_row_goods_id);
        TextView tvQty = (TextView) view.findViewById(R.id.bpp7_row_order_qty);
        TextView tvPrice = (TextView) view.findViewById(R.id.bpp7_row_price);

        Goods goods = goodsDao.getOneById(tvGoodsRef.getText().toString());
        double x = goodsDao.getDamagePriceByRetCause(retCause.getId(), goods);
        tvPrice.setText(Statics.commas.insertCommas(String.valueOf(x).replace(".0", "")));
    }

    @ViewById
    TextView bpp7_footer1;
    @ViewById
    TextView bpp7_footer2;
    @ViewById
    TextView bpp7_footer3;
    @ViewById
    TextView bpp7_footer4;

    private void fillFooter() {
        bpp7_footer1.setText(String.valueOf(damageItems.size()));
        bpp7_footer2.setText("<< مجموع >>");
        DamageStatus status = damageDao.getDamageStatusByIdAndMainGoodsGroupAndSubGoodsGroup(formId, groupId1, groupId2);
        bpp7_footer3.setText(Statics.commas.insertCommas(status.getDamage_sum()));
        bpp7_footer4.setText(Statics.commas.insertCommas(status.getDamage_price()));
    }
}