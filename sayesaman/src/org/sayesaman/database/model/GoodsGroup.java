package org.sayesaman.database.model;

import java.util.ArrayList;

/**
 * Created by meysami on 8/22/13.
 */
public class GoodsGroup {
    private String no;
    private String id;
    private String name;
    private String noOfProducts;
    private ArrayList<GoodsGroup> subGroups = new ArrayList <GoodsGroup>();

    public String getNoOfProducts() {
        return noOfProducts;
    }

    public void setNoOfProducts(String noOfProducts) {
        this.noOfProducts = noOfProducts;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ArrayList<GoodsGroup> getList() {
        return subGroups;
    }

    public void setList(ArrayList<GoodsGroup> list) {
        this.subGroups = list;
    }
}
