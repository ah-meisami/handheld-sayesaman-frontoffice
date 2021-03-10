package org.sayesaman.dialog.damage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import org.sayesaman.R;
import org.sayesaman.database.model.DamageItem;
import org.sayesaman.dialog.Statics;

public class DamageItmView extends RelativeLayout {
    DamageItem damageItem;

    public DamageItmView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        // TODO Auto-generated constructor stub
    }


    public DamageItmView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();

    }

    public DamageItmView(Context context, DamageItem damageItem) {
        super(context);
        this.damageItem = damageItem;
        init();
    }

    public DamageItmView(Context context) {
        super(context);
        init();
    }

    private void init() {
        LayoutInflater inflater = (LayoutInflater) getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View view = inflater.inflate(R.layout.dialog_order_itm_view, this);

        int i = Integer.parseInt(damageItem.getNo());
        if (i % 2 == 0) {
            setBackgroundColor(Statics.getColorOdd());
        } else {
            setBackgroundColor(Statics.getColorEven());
        }

        ImageView dialog_order_itm_goods_image = (ImageView) view.findViewById(R.id.dialog_order_itm_goods_image);
        TextView dialog_order_itm_goods_code = (TextView) view.findViewById(R.id.dialog_order_itm_goods_code);
        TextView dialog_order_itm_goods_name = (TextView) view.findViewById(R.id.dialog_order_itm_goods_name);
        TextView dialog_order_itm_no = (TextView) view.findViewById(R.id.dialog_order_itm_no);
        TextView dialog_order_itm_qty = (TextView) view.findViewById(R.id.dialog_order_itm_qty);
        TextView dialog_order_itm_carton = (TextView) view.findViewById(R.id.dialog_order_itm_carton);
        TextView dialog_order_itm_unit_price = (TextView) view.findViewById(R.id.dialog_order_itm_unit_price);
        TextView dialog_order_itm_sum_price = (TextView) view.findViewById(R.id.dialog_order_itm_sum_price);
        TextView dialog_order_itm_carton_ = (TextView) view.findViewById(R.id.dialog_order_itm_carton_);

        dialog_order_itm_carton_.setText("علت مرجوعي");
        dialog_order_itm_goods_code.setText(damageItem.getGoods().getCode());
        dialog_order_itm_goods_name.setText(damageItem.getGoods().getName());
        dialog_order_itm_no.setText(damageItem.getNo());
        dialog_order_itm_qty.setText(damageItem.getQty());
        dialog_order_itm_carton.setText(damageItem.getRetCauseName());
        dialog_order_itm_unit_price.setText(Statics.commas.insertCommas(damageItem.getPrice()));
        dialog_order_itm_sum_price.setText(Statics.commas.insertCommas(damageItem.getPrice_sum()));

        Statics.setImg2(dialog_order_itm_goods_image, "Goods", damageItem.getGoods().getCode());
    }
}
