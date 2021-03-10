package org.sayesaman.database.model;

import java.util.List;

/**
 * Created by ameysami on 8/26/13.
 */
public class OrderStatus {
    private String order_qty;
    private String order_sum;
    private String order_price;

    public OrderStatus(String order_qty, String order_sum, String order_price) {
        this.order_qty = order_qty;
        this.order_sum = order_sum;
        this.order_price = order_price;
    }

    public OrderStatus() {
    }

    public String getOrder_price() {
        return order_price;
    }

    public void setOrder_price(String order_price) {
        this.order_price = order_price;
    }

    public String getOrder_qty() {
        return order_qty;
    }

    public void setOrder_qty(String order_qty) {
        this.order_qty = order_qty;
    }

    public String getOrder_sum() {
        return order_sum;
    }

    public void setOrder_sum(String order_sum) {
        this.order_sum = order_sum;
    }
}
