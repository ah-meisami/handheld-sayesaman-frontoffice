package org.sayesaman.database.model;

/**
 * Created with IntelliJ IDEA.
 * User: ameysami
 * Date: 8/6/13
 * Time: 4:19 PM
 * To change this template use File | Settings | File Templates.
 */
public class Tour {
    String id;
    String no;
    String date;

    String dealerId;
    String dealerCode;
    String dealerPhone;
    String dealerName;
    String dealerSuperName;

    String dealerSaleLeveId;
    String dealerSaleLeveName;

    String mainPathId;
    String mainPathName;

    String maxAcceptableOrders;
    String minPriceSale;
    String maxPriceWaste;

    String saleZone;
    String saleArea;
    String imei;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDealerCode() {
        return dealerCode;
    }

    public void setDealerCode(String dealerCode) {
        this.dealerCode = dealerCode;
    }

    public String getDealerPhone() {
        return dealerPhone;
    }

    public void setDealerPhone(String dealerPhone) {
        this.dealerPhone = dealerPhone;
    }

    public String getDealerName() {
        return dealerName;
    }

    public void setDealerName(String dealerName) {
        this.dealerName = dealerName;
    }

    public String getDealerSuperName() {
        return dealerSuperName;
    }

    public void setDealerSuperName(String dealerSuperName) {
        this.dealerSuperName = dealerSuperName;
    }

    public String getDealerSaleLeveId() {
        return dealerSaleLeveId;
    }

    public void setDealerSaleLeveId(String dealerSaleLeveId) {
        this.dealerSaleLeveId = dealerSaleLeveId;
    }

    public String getDealerSaleLeveName() {
        return dealerSaleLeveName;
    }

    public void setDealerSaleLeveName(String dealerSaleLeveName) {
        this.dealerSaleLeveName = dealerSaleLeveName;
    }

    public String getMainPathId() {
        return mainPathId;
    }

    public void setMainPathId(String mainPathId) {
        this.mainPathId = mainPathId;
    }

    public String getMainPathName() {
        return mainPathName;
    }

    public void setMainPathName(String mainPathName) {
        this.mainPathName = mainPathName;
    }

    public String getMaxAcceptableOrders() {
        return maxAcceptableOrders;
    }

    public void setMaxAcceptableOrders(String maxAcceptableOrders) {
        this.maxAcceptableOrders = maxAcceptableOrders;
    }

    public String getMinPriceSale() {
        return minPriceSale;
    }

    public void setMinPriceSale(String minPriceSale) {
        this.minPriceSale = minPriceSale;
    }

    public String getMaxPriceWaste() {
        return maxPriceWaste;
    }

    public void setMaxPriceWaste(String maxPriceWaste) {
        this.maxPriceWaste = maxPriceWaste;
    }

    public String getDealerId() {
        return dealerId;
    }

    public void setDealerId(String dealerId) {
        this.dealerId = dealerId;
    }

    public String getSaleZone() {
        return saleZone;
    }

    public void setSaleZone(String saleZone) {
        this.saleZone = saleZone;
    }

    public String getSaleArea() {
        return saleArea;
    }

    public void setSaleArea(String saleArea) {
        this.saleArea = saleArea;
    }

    public String getImei() {
        return imei;
    }

    public void setImei(String imei) {
        this.imei = imei;
    }
}
