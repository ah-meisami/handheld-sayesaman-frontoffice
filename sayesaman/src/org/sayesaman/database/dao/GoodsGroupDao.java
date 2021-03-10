package org.sayesaman.database.dao;

import android.database.Cursor;

import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.EBean;

import org.sayesaman.R;
import org.sayesaman.database.DatabaseHandler;
import org.sayesaman.database.model.GoodsGroup;
import org.sayesaman.database.model.OrderStatus;

import java.util.ArrayList;

/**
 * Created by meysami on 8/22/13.
 */
@EBean
public class GoodsGroupDao {
    @App
    DatabaseHandler handler;

    public ArrayList<GoodsGroup> getList1() {
        String qry = handler.getResources().getString(R.string.GoodsGroupDao_getList1);
        final Cursor c = handler.rawQuery(qry, null);
        ArrayList<GoodsGroup> list = new ArrayList<GoodsGroup>();

        String id;
        String name;
        while (c.moveToNext()) {
            id = c.getString(c.getColumnIndex("id"));
            name = c.getString(c.getColumnIndex("name"));

            GoodsGroup obj1 = new GoodsGroup();
            obj1.setId(id);
            obj1.setName(name);
            obj1.setList(getList2(id));

            list.add(obj1);
        }
        c.close();

        return list;
    }

    public ArrayList<GoodsGroup> getList2(String id) {
        String qry = handler.getResources().getString(R.string.GoodsGroupDao_getList2);
        String[] args = new String[1];
        args[0] = id;
        final Cursor c = handler.rawQuery(qry, args);

        ArrayList<GoodsGroup> list = new ArrayList<GoodsGroup>();
        while (c.moveToNext()) {
            GoodsGroup obj1 = new GoodsGroup();
            obj1.setId(c.getString(c.getColumnIndex("id")));
            obj1.setName(c.getString(c.getColumnIndex("name")));

            list.add(obj1);
        }
        c.close();

        return list;
    }

    public ArrayList<GoodsGroup> getList4CreateNew1(String type) {
        String qry = "";
        if (type.equals("order"))
            qry = handler.getResources().getString(R.string.GoodsGroupDao_getList4CreateNew_order1);
        else if (type.equals("damage"))
            qry = handler.getResources().getString(R.string.GoodsGroupDao_getList4CreateNew_damage1);

        final Cursor c = handler.rawQuery(qry, null);

        ArrayList<GoodsGroup> list = new ArrayList<GoodsGroup>();
        int i = 0;
        while (c.moveToNext()) {
            GoodsGroup obj1 = new GoodsGroup();
            obj1.setNo(String.valueOf(++i));
            obj1.setId(c.getString(c.getColumnIndex("id")));
            obj1.setName(c.getString(c.getColumnIndex("name")));
            obj1.setNoOfProducts(c.getString(c.getColumnIndex("noOfProducts")));

            list.add(obj1);
        }
        c.close();

        return list;
    }

    public ArrayList<GoodsGroup> getList4CreateNew2(String type, String mainGroupId) {
        String qry = "";
        if (type.equals("order"))
            qry = handler.getResources().getString(R.string.GoodsGroupDao_getList4CreateNew_order2);
        else if (type.equals("damage"))
            qry = handler.getResources().getString(R.string.GoodsGroupDao_getList4CreateNew_damage2);

        String[] args = new String[1];
        args[0] = mainGroupId;
        final Cursor c = handler.rawQuery(qry, args);

        ArrayList<GoodsGroup> list = new ArrayList<GoodsGroup>();
        int i = 0;
        while (c.moveToNext()) {
            GoodsGroup obj1 = new GoodsGroup();
            obj1.setNo(String.valueOf(++i));
            obj1.setId(c.getString(c.getColumnIndex("id")));
            obj1.setName(c.getString(c.getColumnIndex("name")));
            obj1.setNoOfProducts(c.getString(c.getColumnIndex("noOfProducts")));

            list.add(obj1);
        }
        c.close();

        return list;
    }

    public OrderStatus getOrderStatus4MainGoodsGroup(String formId, String mainGroupId) {
        String qry = handler.getResources().getString(R.string.GoodsGroupDao_getOrderStatus4MainGoodsGroup);
        String[] args = new String[2];
        args[0] = formId;
        args[1] = mainGroupId;
        final Cursor c = handler.rawQuery(qry, args);

        OrderStatus status = new OrderStatus();
        status.setOrder_qty("0");
        status.setOrder_sum("0");
        status.setOrder_price("0");

        while (c.moveToNext()) {
            status.setOrder_qty(c.getString(c.getColumnIndex("order_qty")));
            status.setOrder_sum(c.getString(c.getColumnIndex("order_sum")));
            status.setOrder_price(c.getString(c.getColumnIndex("order_price")));
        }
        c.close();

        return status;
    }

    public OrderStatus getOrderStatus4SubGoodsGroup(String formId, String subGroupId) {
        String qry = handler.getResources().getString(R.string.GoodsGroupDao_getOrderStatus4SubGoodsGroup);
        String[] args = new String[2];
        args[0] = formId;
        args[1] = subGroupId;
        final Cursor c = handler.rawQuery(qry, args);

        OrderStatus status = new OrderStatus();
        status.setOrder_qty("0");
        status.setOrder_sum("0");
        status.setOrder_price("0");

        while (c.moveToNext()) {
            status.setOrder_qty(c.getString(c.getColumnIndex("order_qty")));
            status.setOrder_sum(c.getString(c.getColumnIndex("order_sum")));
            status.setOrder_price(c.getString(c.getColumnIndex("order_price")));
        }
        c.close();

        return status;
    }

    public OrderStatus getOrderStatusById(String formId) {
        String qry = handler.getResources().getString(R.string.GoodsGroupDao_getOrderStatusById);
        String[] args = new String[1];
        args[0] = formId;
        final Cursor c = handler.rawQuery(qry, args);

        OrderStatus status = new OrderStatus();
        status.setOrder_qty("0");
        status.setOrder_sum("0");
        status.setOrder_price("0");

        while (c.moveToNext()) {
            status.setOrder_qty(c.getString(c.getColumnIndex("order_qty")));
            status.setOrder_sum(c.getString(c.getColumnIndex("order_sum")));
            status.setOrder_price(c.getString(c.getColumnIndex("order_price")));
        }
        c.close();

        return status;
    }

    public String getCountGoods4NewOrder() {
        String qry = handler.getResources().getString(R.string.GoodsGroupDao_getCountGoods4NewOrder);
        final Cursor c = handler.rawQuery(qry, null);

        String tmp = "0";
        while (c.moveToNext()) {
            tmp = c.getString(c.getColumnIndex("order_qty"));
        }
        c.close();

        return tmp;
    }

    public String getCountGoods4NewDamage() {
        String qry = handler.getResources().getString(R.string.GoodsGroupDao_getCountGoods4NewDamage);
        final Cursor c = handler.rawQuery(qry, null);

        String tmp = "0";
        while (c.moveToNext()) {
            tmp = c.getString(c.getColumnIndex("damage_qty"));
        }
        c.close();

        return tmp;
    }

    public OrderStatus getOrderStatusByIdAndMainGoodsGroup(String formId, String mainGroupId) {
        String qry = handler.getResources().getString(R.string.GoodsGroupDao_getOrderStatusByIdAndMainGoodsGroup);
        String[] args = new String[2];
        args[0] = formId;
        args[1] = mainGroupId;
        final Cursor c = handler.rawQuery(qry, args);

        OrderStatus status = new OrderStatus();
        status.setOrder_qty("0");
        status.setOrder_sum("0");
        status.setOrder_price("0");

        while (c.moveToNext()) {
            status.setOrder_qty(c.getString(c.getColumnIndex("order_qty")));
            status.setOrder_sum(c.getString(c.getColumnIndex("order_sum")));
            status.setOrder_price(c.getString(c.getColumnIndex("order_price")));
        }
        c.close();

        return status;
    }

    public OrderStatus getOrderStatusByIdAndMainGoodsGroupAndSubGoodsGroup(String formId, String mainGroupId, String subGroupId) {
        String qry = handler.getResources().getString(R.string.GoodsGroupDao_getOrderStatusByIdAndMainGoodsGroupAndSubGoodsGroup);
        String[] args = new String[3];
        args[0] = formId;
        args[1] = mainGroupId;
        args[2] = subGroupId;
        final Cursor c = handler.rawQuery(qry, args);

        OrderStatus status = new OrderStatus();
        status.setOrder_qty("0");
        status.setOrder_sum("0");
        status.setOrder_price("0");

        while (c.moveToNext()) {
            status.setOrder_qty(c.getString(c.getColumnIndex("order_qty")));
            status.setOrder_sum(c.getString(c.getColumnIndex("order_sum")));
            status.setOrder_price(c.getString(c.getColumnIndex("order_price")));
        }
        c.close();

        return status;
    }

    public String getCountGoods4NewOrderByMainGoodsGroup(String mainGroupId) {
        String qry = handler.getResources().getString(R.string.GoodsGroupDao_getCountGoods4NewOrderByMainGoodsGroup);
        String[] args = new String[1];
        args[0] = mainGroupId;
        final Cursor c = handler.rawQuery(qry, args);

        String tmp = "0";
        while (c.moveToNext()) {
            tmp = c.getString(c.getColumnIndex("order_qty"));
        }
        c.close();

        return tmp;
    }

    public String getCountGoods4NewDamageByMainGoodsGroup(String mainGroupId) {
        String qry = handler.getResources().getString(R.string.GoodsGroupDao_getCountGoods4NewDamageByMainGoodsGroup);
        String[] args = new String[1];
        args[0] = mainGroupId;
        final Cursor c = handler.rawQuery(qry, args);

        String tmp = "0";
        while (c.moveToNext()) {
            tmp = c.getString(c.getColumnIndex("order_qty"));
        }
        c.close();

        return tmp;
    }
}
