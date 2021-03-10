package org.sayesaman.database.model;

/**
 * Created by ameysami on 8/26/13.
 */
public class DamageStatus {
    private String damage_qty;
    private String damage_sum;
    private String damage_price;

    public String getDamage_price() {
        return damage_price;
    }

    public void setDamage_price(String damage_price) {
        this.damage_price = damage_price;
    }

    public String getDamage_qty() {
        return damage_qty;
    }

    public void setDamage_qty(String damage_qty) {
        this.damage_qty = damage_qty;
    }

    public String getDamage_sum() {
        return damage_sum;
    }

    public void setDamage_sum(String damage_sum) {
        this.damage_sum = damage_sum;
    }
}
