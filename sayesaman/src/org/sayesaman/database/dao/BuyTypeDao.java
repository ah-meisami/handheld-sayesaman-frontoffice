package org.sayesaman.database.dao;

import android.database.Cursor;

import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.EBean;

import org.sayesaman.R;
import org.sayesaman.database.DatabaseHandler;
import org.sayesaman.database.model.BuyType;

import java.util.ArrayList;

/**
 * Created by meysami on 8/22/13.
 */
@EBean
public class BuyTypeDao {
    @App
    DatabaseHandler handler;

    public ArrayList<BuyType> getListByCustLevel(String custLevel) {
        String qry = "";
        //retail
        if (custLevel.equals("2000000000")) {
            qry = handler.getResources().getString(R.string.BuyTypeDao_getListByCustLevel_2000000000);


        //pharmacy , taavoni , zanjirehei
        } else if (custLevel.equals("2000000003") || custLevel.equals("2000000005") || custLevel.equals("2000000006")) {
            qry = handler.getResources().getString(R.string.BuyTypeDao_getListByCustLevel_2000000003);


        //wholesale
        } else if (custLevel.equals("2000000004")) {
            qry = handler.getResources().getString(R.string.BuyTypeDao_getListByCustLevel_2000000004);


        //etc
        } else {
            qry = handler.getResources().getString(R.string.BuyTypeDao_getListByCustLevel_2000000000);
        }

        final Cursor c = handler.rawQuery(qry, null);

        ArrayList<BuyType> list = new ArrayList<BuyType>();
        int i = 0;
        while (c.moveToNext()) {
            BuyType obj1 = new BuyType();
            obj1.setNo(String.valueOf(++i));
            obj1.setId(c.getString(c.getColumnIndex("id")));
            obj1.setName(c.getString(c.getColumnIndex("name")));
            obj1.setCode(c.getString(c.getColumnIndex("code")));

            list.add(obj1);
        }
        c.close();

        return list;
    }

    public String getDefaultByCustLevel(String custLevel) {
        String ret = "2000000559";

        //retail
        if (custLevel.equals("2000000000")) {
            ret = "2000000183";


        //pharmacy , taavoni , zanjirehei
        } else if (custLevel.equals("2000000003") || custLevel.equals("2000000005") || custLevel.equals("2000000006")) {
            ret = "2000000156";


        //wholesale
        } else if (custLevel.equals("2000000004")) {
            ret = "2000000156";


        //etc
        } else {
            ret = "2000000183";
        }

        return ret;
    }
}
