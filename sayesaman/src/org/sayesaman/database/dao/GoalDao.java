package org.sayesaman.database.dao;

import android.database.Cursor;

import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.EBean;

import org.sayesaman.R;
import org.sayesaman.database.DatabaseHandler;
import org.sayesaman.database.model.GoalHdr;
import org.sayesaman.database.model.GoalItm;

import java.util.ArrayList;

/**
 * Created by meysami on 8/22/13.
 */
@EBean
public class GoalDao {
    @App
    DatabaseHandler handler;

    public GoalHdr getList1() {
        String qry = "";
        GoalHdr goalHdr = new GoalHdr();
        //********************************************************//
        qry = handler.getResources().getString(R.string.GoalDao_getList1);
        final Cursor c1 = handler.rawQuery(qry, null);

        while (c1.moveToNext()) {
            goalHdr.setDealerId(c1.getString(c1.getColumnIndex("DealerId")));
            goalHdr.setAccMonth(c1.getString(c1.getColumnIndex("AccMonth")));
        }
        c1.close();
        //********************************************************//
        ArrayList<GoalItm> itms = new ArrayList<GoalItm>();

        qry = handler.getResources().getString(R.string.GoalDao_getList2);
        final Cursor c2 = handler.rawQuery(qry, null);
        while (c2.moveToNext()) {
            GoalItm obj1 = new GoalItm();

            obj1.setGoodsId(c2.getString(c2.getColumnIndex("GoodsID")));
            obj1.setGoodsCode(c2.getString(c2.getColumnIndex("GoodsCode")));
            obj1.setGoodsName(c2.getString(c2.getColumnIndex("GoodsName")));
            obj1.setGoodsScore(c2.getString(c2.getColumnIndex("GoodsScore")));

            obj1.setGoodsSubGroupId(c2.getString(c2.getColumnIndex("GoodsGroupID")));
            obj1.setGoodsSubGroupName(c2.getString(c2.getColumnIndex("GoodsGroupName")));

            obj1.setQtyGoal(c2.getString(c2.getColumnIndex("MonthQtyGoal")));
            obj1.setQtySale(c2.getString(c2.getColumnIndex("MonthQtySale")));
            obj1.setQtyDamage(c2.getString(c2.getColumnIndex("MonthQtyWaste")));

            obj1.setPriceSale(c2.getString(c2.getColumnIndex("MonthPriceSale")));
            obj1.setPriceDamage(c2.getString(c2.getColumnIndex("MonthPriceWaste")));

            itms.add(obj1);
        }
        c2.close();
        goalHdr.setItms(itms);
        //********************************************************//
        return goalHdr;
    }
}
