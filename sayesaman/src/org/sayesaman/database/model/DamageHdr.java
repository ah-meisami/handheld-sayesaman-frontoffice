package org.sayesaman.database.model;

import java.util.List;

/**
 * Created by ameysami on 8/26/13.
 */
public class DamageHdr {
    private Customer customer;
    private List<DamageItem> damageItems;

    public List<DamageItem> getDamageItems() {
        return damageItems;
    }

    public void setDamageItems(List<DamageItem> damageItems) {
        this.damageItems = damageItems;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}