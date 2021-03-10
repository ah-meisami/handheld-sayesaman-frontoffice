package org.sayesaman.database.model.reports;

import org.sayesaman.database.model.Customer;

/**
 * Created by ameysami on 9/17/13.
 */
public class Report2Itm {
    String no;
    Customer customer;
    String goodsQty;

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public String getGoodsQty() {
        return goodsQty;
    }

    public void setGoodsQty(String goodsQty) {
        this.goodsQty = goodsQty;
    }
}
