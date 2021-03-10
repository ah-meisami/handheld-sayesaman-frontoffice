package org.sayesaman.database.model;

import java.util.List;

/**
 * Created by ameysami on 8/26/13.
 */
public class OrderHdr {
    private Customer customer;
    private List<OrderItem> orderItems;

    public List<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(List<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}