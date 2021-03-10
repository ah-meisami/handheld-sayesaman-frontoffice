package org.sayesaman.database.dao;

import android.database.Cursor;

import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.EBean;

import org.sayesaman.R;
import org.sayesaman.database.DatabaseHandler;
import org.sayesaman.database.model.Tour;

/**
 * Created by meysami on 8/22/13.
 */
@EBean
public class TourDao {
    @App
    DatabaseHandler handler;

    public Tour getTour() {
        String qry = handler.getResources().getString(R.string.get_tour);

        final Cursor c = handler.rawQuery(qry, null);

        Tour tour = new Tour();

        while (c.moveToNext()) {
            tour.setId(c.getString(c.getColumnIndex("ID")));
            tour.setNo(c.getString(c.getColumnIndex("TourNo")));
            tour.setDate(c.getString(c.getColumnIndex("TourDate")));
            tour.setDealerSuperName(c.getString(c.getColumnIndex("SupervisorName")));
            tour.setDealerName(c.getString(c.getColumnIndex("DealerName")));
            tour.setDealerId(c.getString(c.getColumnIndex("V_DealerRef")));
            tour.setDealerCode(c.getString(c.getColumnIndex("PersonnelCode")));
            tour.setDealerPhone(c.getString(c.getColumnIndex("PersonnelPhone")));
            tour.setDealerSaleLeveId(c.getString(c.getColumnIndex("V_CustLevelRef")));
            tour.setDealerSaleLeveName(c.getString(c.getColumnIndex("V_CustLevelName")));
            tour.setMainPathId(c.getString(c.getColumnIndex("V_Main_SalePathRef")));
            tour.setMainPathName(c.getString(c.getColumnIndex("V_Main_SalePathName")));
            tour.setMaxAcceptableOrders(c.getString(c.getColumnIndex("MaxOrder")));
            tour.setMinPriceSale(c.getString(c.getColumnIndex("MinPriceSale")));
            tour.setMaxPriceWaste(c.getString(c.getColumnIndex("MaxPriceWaste")));
            tour.setImei(c.getString(c.getColumnIndex("IMEI")));
            tour.setSaleZone(c.getString(c.getColumnIndex("SaleZoneName")));
            tour.setSaleArea(c.getString(c.getColumnIndex("SaleAreaName")));
        }
        c.close();

        return tour;
    }
}
