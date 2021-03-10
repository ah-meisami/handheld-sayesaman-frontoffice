package org.sayesaman.database.model;

/**
 * Created by ameysami on 8/17/13.
 */
public class Customer {
    private String id;
    private String code;
    private String name;
    private String realName;
    private String phone;
    private String mobile;
    private String address;

    private String custActRef;
    private String custActName;
    private String custCtgrRef;
    private String custCtgrName;
    private String custLevelRef;
    private String custLevelName;

    private String pathId;
    private String pathName;
    private String pelak;

    private OrderStatus orderStatus;
    private DamageStatus damageStatus;

    private String buyTypeRef;
    private String buyTypeName;


    public String getPathId() {
        return pathId;
    }

    public void setPathId(String pathId) {
        this.pathId = pathId;
    }

    public String getPathName() {
        return pathName;
    }

    public void setPathName(String pathName) {
        this.pathName = pathName;
    }

    public String getBuyTypeRef() {
        return buyTypeRef;
    }

    public void setBuyTypeRef(String buyTypeRef) {
        this.buyTypeRef = buyTypeRef;
    }

    public String getBuyTypeName() {
        return buyTypeName;
    }

    public void setBuyTypeName(String buyTypeName) {
        this.buyTypeName = buyTypeName;
    }

    public DamageStatus getDamageStatus() {
        return damageStatus;
    }

    public void setDamageStatus(DamageStatus damageStatus) {
        this.damageStatus = damageStatus;
    }

    public OrderStatus getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(OrderStatus orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getPelak() {
        return pelak;
    }

    public void setPelak(String pelak) {
        this.pelak = pelak;
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

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCustActRef() {
        return custActRef;
    }

    public void setCustActRef(String custActRef) {
        this.custActRef = custActRef;
    }

    public String getCustActName() {
        return custActName;
    }

    public void setCustActName(String custActName) {
        this.custActName = custActName;
    }

    public String getCustCtgrRef() {
        return custCtgrRef;
    }

    public void setCustCtgrRef(String custCtgrRef) {
        this.custCtgrRef = custCtgrRef;
    }

    public String getCustCtgrName() {
        return custCtgrName;
    }

    public void setCustCtgrName(String custCtgrName) {
        this.custCtgrName = custCtgrName;
    }

    public String getCustLevelRef() {
        return custLevelRef;
    }

    public void setCustLevelRef(String custLevelRef) {
        this.custLevelRef = custLevelRef;
    }

    public String getCustLevelName() {
        return custLevelName;
    }

    public void setCustLevelName(String custLevelName) {
        this.custLevelName = custLevelName;
    }
}
