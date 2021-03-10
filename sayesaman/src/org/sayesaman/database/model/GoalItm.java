package org.sayesaman.database.model;

/**
 * Created by ameysami on 9/7/13.
 */
public class GoalItm {
    private String goodsId;
    private String goodsCode;
    private String goodsName;
    private String goodsScore;

    private String goodsSubGroupId;
    private String goodsSubGroupName;

    private String qtyGoal;
    private String qtySale;
    private String qtyDamage;

    private String priceSale;
    private String priceDamage;

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsCode() {
        return goodsCode;
    }

    public void setGoodsCode(String goodsCode) {
        this.goodsCode = goodsCode;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsScore() {
        return goodsScore;
    }

    public void setGoodsScore(String goodsScore) {
        this.goodsScore = goodsScore;
    }

    public String getGoodsSubGroupId() {
        return goodsSubGroupId;
    }

    public void setGoodsSubGroupId(String goodsSubGroupId) {
        this.goodsSubGroupId = goodsSubGroupId;
    }

    public String getGoodsSubGroupName() {
        return goodsSubGroupName;
    }

    public void setGoodsSubGroupName(String goodsSubGroupName) {
        this.goodsSubGroupName = goodsSubGroupName;
    }

    public String getQtyGoal() {
        return qtyGoal;
    }

    public void setQtyGoal(String qtyGoal) {
        this.qtyGoal = qtyGoal;
    }

    public String getQtySale() {
        return qtySale;
    }

    public void setQtySale(String qtySale) {
        this.qtySale = qtySale;
    }

    public String getQtyDamage() {
        return qtyDamage;
    }

    public void setQtyDamage(String qtyDamage) {
        this.qtyDamage = qtyDamage;
    }

    public String getPriceDamage() {
        return priceDamage;
    }

    public void setPriceDamage(String priceDamage) {
        this.priceDamage = priceDamage;
    }

    public String getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(String priceSale) {
        this.priceSale = priceSale;
    }
}
