package org.sayesaman.database.model.reports;

import org.sayesaman.database.model.Customer;
import org.sayesaman.database.model.Goods;
import org.sayesaman.database.model.OrderStatus;

import java.util.ArrayList;

/**
 * Created by ameysami on 9/17/13.
 */
public class Report2Hdr {
    Goods goods;
    ArrayList<Report2Itm> report2Itms;
    OrderStatus reportStatus;

    public OrderStatus getReportStatus() {
        return reportStatus;
    }

    public void setReportStatus(OrderStatus reportStatus) {
        this.reportStatus = reportStatus;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public ArrayList<Report2Itm> getReport2Itms() {
        return report2Itms;
    }

    public void setReport2Itms(ArrayList<Report2Itm> report2Itms) {
        this.report2Itms = report2Itms;
    }
}
