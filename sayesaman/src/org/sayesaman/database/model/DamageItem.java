package org.sayesaman.database.model;

/**
 * Created by ameysami on 9/11/13.
 */
public class DamageItem {
    private String no;
    private String id;
    private Goods goods;
    private String qty;

    private String retCauseRef;
    private String retCauseName;

    private String price;
    private String price_sum;

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPrice_sum() {
        return price_sum;
    }

    public void setPrice_sum(String price_sum) {
        this.price_sum = price_sum;
    }

    public String getRetCauseRef() {
        return retCauseRef;
    }

    public void setRetCauseRef(String retCauseRef) {
        this.retCauseRef = retCauseRef;
    }

    public String getRetCauseName() {
        return retCauseName;
    }

    public void setRetCauseName(String retCauseName) {
        this.retCauseName = retCauseName;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public String getQty() {
        return qty;
    }

    public void setQty(String qty) {
        this.qty = qty;
    }
}
