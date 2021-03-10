package org.sayesaman.database.dao;

import android.database.Cursor;

import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.EBean;

import org.sayesaman.R;
import org.sayesaman.database.DatabaseHandler;
import org.sayesaman.database.model.SalePath;

import java.util.ArrayList;

/**
 * Created by meysami on 8/22/13.
 */
@EBean
public class SalePathDao {
    @App
    DatabaseHandler handler;

    public ArrayList<SalePath> getAll() {
        String qry = handler.getResources().getString(R.string.get_all_sale_path);
        final Cursor c = handler.rawQuery(qry, null);
        ArrayList<SalePath> resultList = new ArrayList<SalePath>();

        while (c.moveToNext()) {
            SalePath salePath = new SalePath();
            salePath.setId(c.getString(c.getColumnIndex("V_SalePathRef")));
            salePath.setName(c.getString(c.getColumnIndex("V_SalePathName")));
            salePath.setQty(c.getString(c.getColumnIndex("CustQty")));

            resultList.add(salePath);
        }
        c.close();

        return resultList;
    }

    public SalePath getOneById(String id) {
        String qry = handler.getResources().getString(R.string.get_one_sale_path);
        String[] args = new String[1];
        args[0] = id;
        final Cursor c = handler.rawQuery(qry, args);

        SalePath obj1 = new SalePath();
        while (c.moveToNext()) {
            obj1.setId(c.getString(c.getColumnIndex("V_SalePathRef")));
            obj1.setName(c.getString(c.getColumnIndex("V_SalePathName")));
            obj1.setQty(c.getString(c.getColumnIndex("CustQty")));
        }
        c.close();

        return obj1;
    }
}
