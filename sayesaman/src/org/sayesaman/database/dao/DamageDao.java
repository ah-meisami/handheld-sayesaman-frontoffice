package org.sayesaman.database.dao;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.EBean;

import org.sayesaman.R;
import org.sayesaman.database.DatabaseHandler;
import org.sayesaman.database.model.Customer;
import org.sayesaman.database.model.DamageHdr;
import org.sayesaman.database.model.DamageItem;
import org.sayesaman.database.model.DamageStatus;
import org.sayesaman.database.model.Goods;
import org.sayesaman.database.model.OrderHdr;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by meysami on 8/22/13.
 */
@EBean
public class DamageDao {
    @App
    DatabaseHandler handler;

    @Bean
    CustomerDao CustomerDao;

    @Bean
    GoodsDao goodsDao;

    public ArrayList<OrderHdr> getAll() {
        final Cursor c;
        String qry = "";
        qry = handler.getResources().getString(R.string.DamageDao_getAll);
        c = handler.rawQuery(qry, null);

        ArrayList<OrderHdr> resultList = new ArrayList<OrderHdr>();
        while (c.moveToNext()) {
            try {
                OrderHdr obj = new OrderHdr();
                String id = c.getString(c.getColumnIndex("ID"));
                Customer customer = CustomerDao.getCustomerSpecById(id);
                obj.setCustomer(customer);

/*
                For better performance we eliminated this

                List<OrderItem> orderItems = new ArrayList<OrderItem>();
                orderItems = getDamageItems(id);
                obj.setDamageItems(orderItems);
*/
                resultList.add(obj);
            } catch (Exception e) {
                Log.e("@sayesaman", "Error " + e.toString());
            }
        }
        c.close();

        return resultList;
    }

    public DamageHdr getOneDamageWithItemsById(String id) {
        String qry = handler.getResources().getString(R.string.DamageDao_getOneOrderWithItemsById);
        String[] args = new String[1];
        args[0] = id;
        final Cursor c = handler.rawQuery(qry, args);

        DamageHdr obj = new DamageHdr();
        while (c.moveToNext()) {
            try {
                String tourItmId = c.getString(c.getColumnIndex("ID"));
                Customer customer = CustomerDao.getCustomerSpecById(tourItmId);
                obj.setCustomer(customer);

                List<DamageItem> damageItems = new ArrayList<DamageItem>();
                damageItems = getDamageItems(id);
                obj.setDamageItems(damageItems);

            } catch (Exception e) {
                Log.e("@sayesaman", "Error " + e.toString());
            }
        }
        c.close();

        return obj;
    }

    public ArrayList<DamageItem> getDamageItems(String id) {
        String qry = handler.getResources().getString(R.string.DamageDao_getOrderItems);
        String[] args = new String[1];
        args[0] = id;
        final Cursor c = handler.rawQuery(qry, args);

        ArrayList<DamageItem> list = new ArrayList<DamageItem>();

        int i = 0;
        double qty = 0;
        double price = 0;
        double price_sum = 0;
        Goods goods = new Goods();
        while (c.moveToNext()) {
            String damageItemId = c.getString(c.getColumnIndex("ID"));
            String goodsRef = c.getString(c.getColumnIndex("GoodsRef"));
            String goodsQty = c.getString(c.getColumnIndex("GoodsQty"));
            String retCauseRef = c.getString(c.getColumnIndex("RetCauseRef"));
            String retCauseName = c.getString(c.getColumnIndex("RetCauseName"));

            qty = Double.parseDouble(goodsQty);
            goods = goodsDao.getOneById(goodsRef);
            price = goodsDao.getDamagePriceByRetCause(retCauseRef, goods);
            price_sum = price * qty;

            DamageItem obj1 = new DamageItem();
            obj1.setId(damageItemId);
            obj1.setNo(String.valueOf(++i));
            obj1.setGoods(goods);
            obj1.setQty(goodsQty);
            obj1.setRetCauseRef(retCauseRef);
            obj1.setRetCauseName(retCauseName);
            obj1.setPrice(String.valueOf(price).replace(".0", ""));
            obj1.setPrice_sum(String.valueOf(price_sum).replace(".0", ""));
            list.add(obj1);
        }
        c.close();

        return list;
    }

    public DamageStatus getDamageStatusAll() {
        String qry = handler.getResources().getString(R.string.DamageDao_getOrderStatusAll);
        final Cursor c = handler.rawQuery(qry, null);

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

    public DamageStatus getDamageStatusByIdAndMainGoodsGroupAndSubGoodsGroup(String formId, String mainGroupId, String subGroupId) {
        String qry = handler.getResources().getString(R.string.DamageDao_getDamageStatusByIdAndMainGoodsGroupAndSubGoodsGroup);
        String[] args = new String[3];
        args[0] = formId;
        args[1] = mainGroupId;
        args[2] = subGroupId;
        final Cursor c = handler.rawQuery(qry, args);

        long i = 0;
        long qty = 0;
        long qty_sum = 0;
        long price = 0;
        long price_sum = 0;
        Goods goods = new Goods();
        while (c.moveToNext()) {
            String goodsRef = c.getString(c.getColumnIndex("GoodsRef"));
            String goodsQty = c.getString(c.getColumnIndex("GoodsQty"));
            String retCauseRef = c.getString(c.getColumnIndex("RetCauseRef"));

            ++i;
            qty = Long.parseLong(goodsQty);
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

    public DamageStatus getDamageStatusByIdAndMainGoodsGroup(String formId, String mainGroupId) {
        String qry = handler.getResources().getString(R.string.DamageDao_getDamageStatusByIdAndMainGoodsGroup);
        String[] args = new String[2];
        args[0] = formId;
        args[1] = mainGroupId;
        final Cursor c = handler.rawQuery(qry, args);

        long i = 0;
        long qty = 0;
        long qty_sum = 0;
        long price = 0;
        long price_sum = 0;
        Goods goods = new Goods();
        while (c.moveToNext()) {
            String goodsRef = c.getString(c.getColumnIndex("GoodsRef"));
            String goodsQty = c.getString(c.getColumnIndex("GoodsQty"));
            String retCauseRef = c.getString(c.getColumnIndex("RetCauseRef"));

            ++i;
            qty = Long.parseLong(goodsQty);
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

    public DamageStatus getDamageStatusById(String formId) {
        String qry = handler.getResources().getString(R.string.DamageDao_getDamageStatusById);
        String[] args = new String[1];
        args[0] = formId;
        final Cursor c = handler.rawQuery(qry, args);

        long i = 0;
        long qty = 0;
        long qty_sum = 0;
        long price = 0;
        long price_sum = 0;
        Goods goods = new Goods();
        while (c.moveToNext()) {
            String goodsRef = c.getString(c.getColumnIndex("GoodsRef"));
            String goodsQty = c.getString(c.getColumnIndex("GoodsQty"));
            String retCauseRef = c.getString(c.getColumnIndex("RetCauseRef"));

            ++i;
            qty = Long.parseLong(goodsQty);
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

    public ArrayList<DamageItem> getDamageItemsForNewDamage(String id, String mainGroupId, String subGroupId) {
        String qry = handler.getResources().getString(R.string.DamageDao_getDamageItemsForNewDamage);
        String[] args = new String[6];
        args[0] = id;
        args[1] = mainGroupId;
        args[2] = subGroupId;
        args[3] = id;
        args[4] = mainGroupId;
        args[5] = subGroupId;
        final Cursor c = handler.rawQuery(qry, args);

        ArrayList<DamageItem> list = new ArrayList<DamageItem>();
        int i = 0;
        double qty = 0;
        double price = 0;
        double price_sum = 0;
        while (c.moveToNext()) {
            String damageItemId = c.getString(c.getColumnIndex("damage_itm_id"));
            String goodsQty = c.getString(c.getColumnIndex("damage_itm_qty"));
            String retCauseRef = c.getString(c.getColumnIndex("damage_itm_ret_cause_ref"));
            String retCauseName = c.getString(c.getColumnIndex("damage_itm_ret_cause_name"));
            String goodsRef = c.getString(c.getColumnIndex("GoodsRef"));
            String goodsCode = c.getString(c.getColumnIndex("GoodsCode"));
            String goodsName = c.getString(c.getColumnIndex("GoodsName"));
            String price1 = c.getString(c.getColumnIndex("Price1"));
            String price2 = c.getString(c.getColumnIndex("Price2"));
            String price3 = c.getString(c.getColumnIndex("Price3"));
            String price4 = c.getString(c.getColumnIndex("Price4"));
            String price5 = c.getString(c.getColumnIndex("Price5"));

            Goods goods = new Goods();
            goods.setId(goodsRef);
            goods.setCode(goodsCode);
            goods.setName(goodsName);
            goods.setDamagePrice1(price1);
            goods.setDamagePrice2(price2);
            goods.setDamagePrice3(price3);
            goods.setDamagePrice4(price4);
            goods.setDamagePrice5(price5);

            qty = Double.parseDouble(goodsQty);
            //goods = goodsDao.getOneById(goodsRef); //For better performance we eliminated this
            price = goodsDao.getDamagePriceByRetCause(retCauseRef, goods);
            price_sum = price * qty;

            DamageItem obj1 = new DamageItem();
            obj1.setId(damageItemId);
            obj1.setNo(String.valueOf(++i));
            obj1.setGoods(goods);
            obj1.setQty(goodsQty);
            obj1.setRetCauseRef(retCauseRef);
            obj1.setRetCauseName(retCauseName);
            obj1.setPrice(String.valueOf(price).replace(".0", ""));
            obj1.setPrice_sum(String.valueOf(price_sum).replace(".0", ""));
            list.add(obj1);
        }
        c.close();

        return list;
    }

    //=======================================================================================================================================
    public String saveItem(String hdrRef, String rowId, String goodsRef, String newQty, String newRetCause) {
        if (newQty.equals("0") && !rowId.equals("0")) {                //CRUD : delete
            String[] args = new String[]{rowId};
            handler.getDatabaseHandler().delete("tblWasteItm ", "ID = " + rowId, null);
            return "0";
        } else if (newQty.equals("0") && rowId.equals("0")) {          //CRUD : nothing
            return "0";
        } else if (!newQty.equals("0") && !rowId.equals("0")) {        //CRUD : update
            final ContentValues newValues = new ContentValues();
            newValues.put("GoodsQty", newQty);
            newValues.put("RetCauseRef", newRetCause);
            handler.getDatabaseHandler().update("tblWasteItm ", newValues, "ID = ?", new String[]{rowId});
            return rowId;
        } else if (!newQty.equals("0") && rowId.equals("0")) {         //CRUD : create new record
            final ContentValues newValues = new ContentValues();
            String newOrderItmId = newOrderItemId();
            newValues.put("ID", newOrderItmId);
            newValues.put("V_GoodsRef", goodsRef);
            newValues.put("GoodsQty", newQty);
            newValues.put("HdrRef", hdrRef);
            newValues.put("RetCauseRef", newRetCause);
            handler.getDatabaseHandler().insert("tblWasteItm ", null, newValues);
            return newOrderItmId;
        }

        return null;
    }

    private String newOrderItemId() {
        String qry = "SELECT ifnull(max(id),0) + 1 newId  from tblWasteItm ";
        final Cursor c = handler.rawQuery(qry, null);

        String newId = "";
        while (c.moveToNext()) {
            newId = c.getString(c.getColumnIndex("newId"));
        }
        c.close();

        return newId;
    }
}
