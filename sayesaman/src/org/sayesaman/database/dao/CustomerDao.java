package org.sayesaman.database.dao;

import android.database.Cursor;
import android.util.Log;

import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.EBean;

import org.sayesaman.R;
import org.sayesaman.database.DatabaseHandler;
import org.sayesaman.database.model.Customer;
import org.sayesaman.database.model.DamageStatus;
import org.sayesaman.database.model.Goods;
import org.sayesaman.database.model.OrderStatus;

import java.util.ArrayList;

/**
 * Created by meysami on 8/22/13.
 */
@EBean
public class CustomerDao {
    @App
    DatabaseHandler handler;

    @Bean
    GoodsDao goodsDao;

    public ArrayList<Customer> getAll(String salePath) {
        final Cursor c;

        String qry = "";
        if (salePath.equals("0")) {
            qry = handler.getResources().getString(R.string.CustomerDao_getAll0);
            c = handler.rawQuery(qry, null);
        } else {
            qry = handler.getResources().getString(R.string.CustomerDao_getAll1);

            String[] args = new String[1];
            args[0] = salePath;
            c = handler.rawQuery(qry, args);
        }


        ArrayList<Customer> resultList = new ArrayList<Customer>();
        while (c.moveToNext()) {
            try {
                Customer customer = new Customer();
                customer.setId(c.getString(c.getColumnIndex("ID")));
                customer.setCode(c.getString(c.getColumnIndex("CustCode")));
                customer.setName(c.getString(c.getColumnIndex("CustName")));
                customer.setRealName(c.getString(c.getColumnIndex("CustRealName")));
                customer.setAddress(c.getString(c.getColumnIndex("CustAddress")));
                customer.setPhone(c.getString(c.getColumnIndex("CustPhone")));
                customer.setMobile(c.getString(c.getColumnIndex("CustMobile")));

                /*
                //for better performance we use this code to load customer specifications in another thread
                OrderStatus order = checkStatusOrder(customer.getId());
                customer.setOrder_qty(order.getOrder_qty());
                customer.setOrder_sum(order.getOrder_sum());

                DamageStatus damage = checkStatusDamage(customer.getId());
                customer.setDamage_qty(damage.getDamage_qty());
                customer.setDamage_sum(damage.getDamage_sum());
                */
                resultList.add(customer);
            } catch (Exception e) {
                Log.e("@sayesaman", "Error " + e.toString());
            }
        }
        c.close();

        return resultList;
    }

    public OrderStatus checkStatusOrder(String id) {
        String qry = handler.getResources().getString(R.string.CustomerDao_checkStatusOrder);
        String[] args = new String[1];
        args[0] = id;
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

    public DamageStatus checkStatusDamage(String id) {
        String qry = handler.getResources().getString(R.string.CustomerDao_checkStatusDamage);
        String[] args = new String[1];
        args[0] = id;
        final Cursor c = handler.rawQuery(qry, args);

        double i = 0;
        double qty = 0;
        double qty_sum = 0;
        double price = 0;
        double price_sum = 0;
        Goods goods = new Goods();
        while (c.moveToNext()) {
            String goodsRef = c.getString(c.getColumnIndex("GoodsRef"));
            String goodsQty = c.getString(c.getColumnIndex("GoodsQty"));
            String retCauseRef = c.getString(c.getColumnIndex("RetCauseRef"));

            ++i;
            qty = Double.parseDouble(goodsQty);
            qty_sum = qty_sum + qty;
            goods = goodsDao.getOneById(goodsRef);
            price = goodsDao.getDamagePriceByRetCause(retCauseRef, goods);
            price_sum = price_sum + (price * qty);
        }
        c.close();

        DamageStatus damage = new DamageStatus();
        damage.setDamage_qty(String.valueOf(i).replace(".0", ""));
        damage.setDamage_sum(String.valueOf(qty_sum).replace(".0", ""));
        damage.setDamage_price(String.valueOf(price_sum).replace(".0", ""));
        return damage;
    }

    public Customer getCustomerSpecById(String id) {
        String qry = handler.getResources().getString(R.string.CustomerDao_getOne);
        String[] args = new String[1];
        args[0] = id;
        final Cursor c = handler.rawQuery(qry, args);

        Customer customer = new Customer();
        while (c.moveToNext()) {
            customer.setId(c.getString(c.getColumnIndex("ID")));
            customer.setCode(c.getString(c.getColumnIndex("CustCode")));
            customer.setName(c.getString(c.getColumnIndex("CustName")));
            customer.setRealName(c.getString(c.getColumnIndex("CustRealName")));
            customer.setAddress(c.getString(c.getColumnIndex("CustAddress")));
            customer.setPhone(c.getString(c.getColumnIndex("CustPhone")));
            customer.setMobile(c.getString(c.getColumnIndex("CustMobile")));

            customer.setCustActRef(c.getString(c.getColumnIndex("CustActRef")));
            customer.setCustActName(c.getString(c.getColumnIndex("CustActName")));
            customer.setCustCtgrRef(c.getString(c.getColumnIndex("CustCtgrRef")));
            customer.setCustCtgrName(c.getString(c.getColumnIndex("CustCtgrName")));
            customer.setCustLevelRef(c.getString(c.getColumnIndex("CustLevelRef")));
            customer.setCustLevelName(c.getString(c.getColumnIndex("CustLevelName")));

            customer.setPelak(c.getString(c.getColumnIndex("CustVisitCode")));

            customer.setBuyTypeRef(c.getString(c.getColumnIndex("BuyTypeRef")));
            customer.setBuyTypeName(c.getString(c.getColumnIndex("BuyTypeName")));

            customer.setPathId(c.getString(c.getColumnIndex("PathId")));
            customer.setPathName(c.getString(c.getColumnIndex("PathName")));

            OrderStatus orderStatus = checkStatusOrder(customer.getId());
            customer.setOrderStatus(orderStatus);

            DamageStatus damageStatus = checkStatusDamage(customer.getId());
            customer.setDamageStatus(damageStatus);
        }
        c.close();

        return customer;
    }

    public OrderStatus getOrderStatusByPath(String salePathId) {
        String qry = handler.getResources().getString(R.string.CustomerDao_getOrderStatusByPath);
        String[] args = new String[1];
        args[0] = salePathId;
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

    public DamageStatus getDamageStatusByPath(String salePathId) {
        String qry = handler.getResources().getString(R.string.CustomerDao_getDamageStatusByPath);
        String[] args = new String[1];
        args[0] = salePathId;
        final Cursor c = handler.rawQuery(qry, args);

        double i = 0;
        double qty = 0;
        double qty_sum = 0;
        double price = 0;
        double price_sum = 0;
        Goods goods = new Goods();
        while (c.moveToNext()) {
            String goodsRef = c.getString(c.getColumnIndex("GoodsRef"));
            String goodsQty = c.getString(c.getColumnIndex("GoodsQty"));
            String retCauseRef = c.getString(c.getColumnIndex("RetCauseRef"));

            ++i;
            qty = Double.parseDouble(goodsQty);
            qty_sum = qty_sum + qty;


            goods = goodsDao.getOneById(goodsRef);
            price = goodsDao.getDamagePriceByRetCause(retCauseRef, goods);
            price = price * qty;
            price_sum = price_sum + price;
        }
        c.close();

        DamageStatus damage = new DamageStatus();
        damage.setDamage_qty(String.valueOf(i).replace(".0", ""));
        damage.setDamage_sum(String.valueOf(qty_sum).replace(".0", ""));
        damage.setDamage_price(String.valueOf(price_sum).replace(".0", ""));
        return damage;
    }
}
