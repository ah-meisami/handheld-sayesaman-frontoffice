package org.sayesaman.database.dao;

import android.database.Cursor;

import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.EBean;

import org.sayesaman.R;
import org.sayesaman.database.DatabaseHandler;
import org.sayesaman.database.model.Goods;

import java.util.ArrayList;

/**
 * Created by meysami on 8/22/13.
 */
@EBean
public class GoodsDao {
    @App
    DatabaseHandler handler;

    public ArrayList<Goods> getAll() {
        String qry = handler.getResources().getString(R.string.GoodsDao_getAll);
        final Cursor c = handler.rawQuery(qry, null);
        ArrayList<Goods> resultList = new ArrayList<Goods>();

        while (c.moveToNext()) {
            Goods goods = new Goods();
            goods.setId(c.getString(c.getColumnIndex("ID")));
            goods.setCode(c.getString(c.getColumnIndex("GoodsCode")));
            goods.setName(c.getString(c.getColumnIndex("GoodsName")));
            goods.setPrice(c.getString(c.getColumnIndex("GoodsPrice")));
            goods.setCarton(c.getString(c.getColumnIndex("CartonType")));
            resultList.add(goods);
        }
        c.close();

        return resultList;
    }

    public Goods getOneById(String id) {
        String qry = handler.getResources().getString(R.string.GoodsDao_getOneById);
        String[] args = new String[1];
        args[0] = id;
        final Cursor c = handler.rawQuery(qry, args);

        Goods goods = new Goods();
        while (c.moveToNext()) {
            goods.setId(c.getString(c.getColumnIndex("ID")));
            goods.setCode(c.getString(c.getColumnIndex("GoodsCode")));
            goods.setName(c.getString(c.getColumnIndex("GoodsName")));
            goods.setPrice(c.getString(c.getColumnIndex("GoodsPrice")));
            goods.setCarton(c.getString(c.getColumnIndex("CartonType")));

            goods.setDamagePrice1(c.getString(c.getColumnIndex("DamagePrice1")));
            goods.setDamagePrice2(c.getString(c.getColumnIndex("DamagePrice2")));
            goods.setDamagePrice3(c.getString(c.getColumnIndex("DamagePrice3")));
            goods.setDamagePrice4(c.getString(c.getColumnIndex("DamagePrice4")));
            goods.setDamagePrice5(c.getString(c.getColumnIndex("DamagePrice5")));
        }
        c.close();

        return goods;
    }

    public ArrayList<Goods> getAllBySubGroup(String groupId) {
        String qry = "";
        qry = handler.getResources().getString(R.string.GoodsDao_getAllBySubGroup);

        String[] args = new String[1];
        args[0] = groupId;
        final Cursor c = handler.rawQuery(qry, args);
        ArrayList<Goods> resultList = new ArrayList<Goods>();

        while (c.moveToNext()) {
            Goods goods = new Goods();
            goods.setId(c.getString(c.getColumnIndex("ID")));
            goods.setCode(c.getString(c.getColumnIndex("GoodsCode")));
            goods.setName(c.getString(c.getColumnIndex("GoodsName")));
            goods.setPrice(c.getString(c.getColumnIndex("GoodsPrice")));
            goods.setCarton(c.getString(c.getColumnIndex("CartonType")));
            resultList.add(goods);
        }
        c.close();

        return resultList;
    }

    public Long getDamagePriceByRetCause(String retCauseRef, Goods goods) {
        long price = 0;

        if (retCauseRef.equals("2000000023")) {
            price = Long.parseLong(goods.getDamagePrice1());
        } else if (retCauseRef.equals("2000000024")) {
            price = Long.parseLong(goods.getDamagePrice2());
        } else if (retCauseRef.equals("2000000025")) {
            price = Long.parseLong(goods.getDamagePrice3());
        } else if (retCauseRef.equals("2000000026")) {
            price = Long.parseLong(goods.getDamagePrice4());
        } else if (retCauseRef.equals("2000000027")) {
            price = Long.parseLong(goods.getDamagePrice5());
        }

        return price;
    }
}
