package org.sayesaman.database.model.reports;

import org.sayesaman.database.model.Goods;
import org.sayesaman.database.model.OrderStatus;

/**
 * Created by ameysami on 9/17/13.
 */
public class Report1{
    Goods goods;
    OrderStatus status;

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public OrderStatus getStatus() {
        return status;
    }

    public void setStatus(OrderStatus status) {
        this.status = status;
    }
}
