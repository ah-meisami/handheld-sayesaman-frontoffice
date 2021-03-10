package org.sayesaman.database.model;

/**
 * Created with IntelliJ IDEA.
 * User: meysami
 * Date: 8/6/13
 * Time: 8:06 PM
 * To change this template use File | Settings | File Templates.
 */
public class Goods {
    String id;
    String code;
    String name;
    String price;
    String carton;

    String damagePrice1;
    String damagePrice2;
    String damagePrice3;
    String damagePrice4;
    String damagePrice5;

    public String getDamagePrice1() {
        return damagePrice1;
    }

    public void setDamagePrice1(String damagePrice1) {
        this.damagePrice1 = damagePrice1;
    }

    public String getDamagePrice2() {
        return damagePrice2;
    }

    public void setDamagePrice2(String damagePrice2) {
        this.damagePrice2 = damagePrice2;
    }

    public String getDamagePrice3() {
        return damagePrice3;
    }

    public void setDamagePrice3(String damagePrice3) {
        this.damagePrice3 = damagePrice3;
    }

    public String getDamagePrice4() {
        return damagePrice4;
    }

    public void setDamagePrice4(String damagePrice4) {
        this.damagePrice4 = damagePrice4;
    }

    public String getDamagePrice5() {
        return damagePrice5;
    }

    public void setDamagePrice5(String damagePrice5) {
        this.damagePrice5 = damagePrice5;
    }

    public String getCarton() {
        return carton;
    }

    public void setCarton(String carton) {
        this.carton = carton;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
