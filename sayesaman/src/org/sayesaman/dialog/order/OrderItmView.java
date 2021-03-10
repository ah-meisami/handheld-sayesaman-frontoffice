package org.sayesaman.dialog.order;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import org.sayesaman.R;
import org.sayesaman.database.model.OrderItem;
import org.sayesaman.dialog.Statics;

public class OrderItmView extends RelativeLayout {
    OrderItem orderItem;

    public OrderItmView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        // TODO Auto-generated constructor stub
    }

    public OrderItmView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();

    }

    public OrderItmView(Context context, OrderItem orderItem) {
        super(context);
        this.orderItem = orderItem;
        init();
    }

    public OrderItmView(Context context) {
        super(context);
        init();
    }

    private void init() {
        LayoutInflater inflater = (LayoutInflater) getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View view = inflater.inflate(R.layout.dialog_order_itm_view, this);

        int i = Integer.parseInt(orderItem.getNo());
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

        dialog_order_itm_goods_code.setText(orderItem.getGoods().getCode());
        dialog_order_itm_goods_name.setText(orderItem.getGoods().getName());
        dialog_order_itm_no.setText(orderItem.getNo());
        dialog_order_itm_qty.setText(orderItem.getQty());
        dialog_order_itm_carton.setText(orderItem.getGoods().getCarton());
        dialog_order_itm_unit_price.setText(Statics.commas.insertCommas(orderItem.getPrice().replace(".0", "")));
        dialog_order_itm_sum_price.setText(Statics.commas.insertCommas(orderItem.getPrice_sum().replace(".0", "")));

        Statics.setImg2(dialog_order_itm_goods_image, "Goods", orderItem.getGoods().getCode());
    }
}
