package org.sayesaman.database.model;

import java.util.ArrayList;

/**
 * Created by ameysami on 9/7/13.
 */
public class GoalHdr {
    private String dealerId;
    private String accMonth;

    private ArrayList<GoalItm> itms = new ArrayList <GoalItm>();

    public String getDealerId() {
        return dealerId;
    }

    public void setDealerId(String dealerId) {
        this.dealerId = dealerId;
    }

    public String getAccMonth() {
        return accMonth;
    }

    public void setAccMonth(String accMonth) {
        this.accMonth = accMonth;
    }

    public ArrayList<GoalItm> getItms() {
        return itms;
    }

    public void setItms(ArrayList<GoalItm> itms) {
        this.itms = itms;
    }
}
