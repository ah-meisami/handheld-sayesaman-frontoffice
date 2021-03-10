
package org.sayesaman.database.dao;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.EBean;

import org.sayesaman.R;
import org.sayesaman.database.DatabaseHandler;
import org.sayesaman.database.model.BuyType;
import org.sayesaman.database.model.Customer;
import org.sayesaman.database.model.Goods;
import org.sayesaman.database.model.OrderHdr;
import org.sayesaman.database.model.OrderItem;
import org.sayesaman.database.model.OrderStatus;
import org.sayesaman.database.model.reports.Report1;
import org.sayesaman.database.model.reports.Report2Hdr;
import org.sayesaman.database.model.reports.Report2Itm;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by meysami on 8/22/13.
 * <p/>
 * Please read this article asap
 * Speeding up SQLite insert operations :
 * http://tech.vg.no/2011/04/04/speeding-up-sqlite-insert-operations/
 */
@EBean
public class OrderDao {
    @App
    DatabaseHandler handler;

    @Bean
    CustomerDao customerDao;

    @Bean
    GoodsDao goodsDao;


    public ArrayList<OrderHdr> getAll() {
        final Cursor c;
        String qry = "";
        qry = handler.getResources().getString(R.string.OrderDao_getAll);
        c = handler.rawQuery(qry, null);

        ArrayList<OrderHdr> resultList = new ArrayList<OrderHdr>();
        while (c.moveToNext()) {
            try {
                OrderHdr obj = new OrderHdr();
                String id = c.getString(c.getColumnIndex("ID"));
                Customer customer = customerDao.getCustomerSpecById(id);
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

    public OrderHdr getOneOrderWithItemsById(String id) {
        String qry = handler.getResources().getString(R.string.OrderDao_getOneOrderWithItemsById);
        String[] args = new String[1];
        args[0] = id;
        final Cursor c = handler.rawQuery(qry, args);

        OrderHdr obj = new OrderHdr();
        while (c.moveToNext()) {
            try {
                String tourItmId = c.getString(c.getColumnIndex("ID"));
                Customer customer = customerDao.getCustomerSpecById(tourItmId);
                obj.setCustomer(customer);

                List<OrderItem> orderItems = new ArrayList<OrderItem>();
                orderItems = getOrderItems(id);
                obj.setOrderItems(orderItems);

            } catch (Exception e) {
                Log.e("@sayesaman", "Error " + e.toString());
            }
        }
        c.close();

        return obj;
    }

    public ArrayList<OrderItem> getOrderItems(String id) {
        String qry = handler.getResources().getString(R.string.OrderDao_getOrderItems);
        String[] args = new String[1];
        args[0] = id;
        final Cursor c = handler.rawQuery(qry, args);

        ArrayList<OrderItem> list = new ArrayList<OrderItem>();
        int i = 0;
        while (c.moveToNext()) {
            OrderItem obj1 = new OrderItem();
            obj1.setNo(String.valueOf(++i));

            String order_itm_Id = c.getString(c.getColumnIndex("ID"));
            String order_itm_qty = c.getString(c.getColumnIndex("GoodsQty"));
            String goodsRef = c.getString(c.getColumnIndex("GoodsRef"));
            String goodsCode = c.getString(c.getColumnIndex("GoodsCode"));
            String goodsName = c.getString(c.getColumnIndex("GoodsName"));
            String goodsPrice = c.getString(c.getColumnIndex("GoodsPrice"));
            String cartonType = c.getString(c.getColumnIndex("CartonType"));

            Goods goods = new Goods();
            goods.setId(goodsRef);
            goods.setCode(goodsCode);
            goods.setName(goodsName);
            goods.setPrice(goodsPrice);
            goods.setCarton(cartonType);

            double qtyD = Double.parseDouble(order_itm_qty);
            double carton = Double.parseDouble(cartonType);
            double unitPrice = Double.parseDouble(goodsPrice);
            double sumPrice = qtyD * carton * unitPrice;

            //obj1.setGoods(goodsDao.getOneById(c.getString(c.getColumnIndex("GoodsRef"))));
            obj1.setId(order_itm_Id);
            obj1.setQty(order_itm_qty);
            obj1.setGoods(goods);
            obj1.setPrice(String.valueOf(unitPrice));
            obj1.setPrice_sum(String.valueOf(sumPrice));

            list.add(obj1);
        }
        c.close();

        return list;
    }

    public ArrayList<OrderItem> getOrderItemsForNewOrder(String id, String mainGroupId, String subGroupId) {
        String qry = handler.getResources().getString(R.string.OrderDao_getOrderItemsForNewOrder);
        String[] args = new String[6];
        args[0] = id;
        args[1] = mainGroupId;
        args[2] = subGroupId;
        args[3] = id;
        args[4] = mainGroupId;
        args[5] = subGroupId;
        final Cursor c = handler.rawQuery(qry, args);

        ArrayList<OrderItem> list = new ArrayList<OrderItem>();
        int i = 0;
        while (c.moveToNext()) {
            OrderItem obj1 = new OrderItem();
            obj1.setNo(String.valueOf(++i));

            String goodsRef = c.getString(c.getColumnIndex("GoodsRef"));
            String goodsCode = c.getString(c.getColumnIndex("GoodsCode"));
            String goodsName = c.getString(c.getColumnIndex("GoodsName"));
            String goodsPrice = c.getString(c.getColumnIndex("GoodsPrice"));
            String cartonType = c.getString(c.getColumnIndex("CartonType"));
            String order_itm_Id = c.getString(c.getColumnIndex("order_itm_Id"));
            String order_itm_qty = c.getString(c.getColumnIndex("order_itm_qty"));

            Goods obj2 = new Goods();
            obj2.setId(goodsRef);
            obj2.setCode(goodsCode);
            obj2.setName(goodsName);
            obj2.setPrice(goodsPrice);
            obj2.setCarton(cartonType);

            long qtyD = Long.parseLong(order_itm_qty);
            long carton = Long.parseLong(cartonType);
            long unitPrice = (Long.parseLong(goodsPrice)) * carton;
            long sumPrice = qtyD * unitPrice;

            obj1.setId(order_itm_Id);
            obj1.setQty(order_itm_qty);
            obj1.setPrice(String.valueOf(unitPrice).replace(".0", ""));
            obj1.setPrice_sum(String.valueOf(sumPrice).replace(".0", ""));
            obj1.setGoods(obj2);
            list.add(obj1);
        }
        c.close();

        return list;
    }

    public OrderStatus getOrderStatusAll() {
        String qry = handler.getResources().getString(R.string.OrderDao_getOrderStatusAll);
        final Cursor c = handler.rawQuery(qry, null);

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

    //=======================================================================================================================================
    public ArrayList<Report1> getReport1() {
        final Cursor c;
        String qry = "";
        qry = handler.getResources().getString(R.string.OrderDao_getReport1);
        c = handler.rawQuery(qry, null);

        ArrayList<Report1> resultList = new ArrayList<Report1>();

        while (c.moveToNext()) {
            try {
                Goods objGoods = new Goods();
                objGoods.setId(c.getString(c.getColumnIndex("ID")));
                objGoods.setCode(c.getString(c.getColumnIndex("GoodsCode")));
                objGoods.setName(c.getString(c.getColumnIndex("GoodsName")));

                OrderStatus objStatus = new OrderStatus();
                objStatus.setOrder_qty("0");
                objStatus.setOrder_sum("0");
                objStatus.setOrder_price("0");
                objStatus.setOrder_qty(c.getString(c.getColumnIndex("order_qty")));
                objStatus.setOrder_sum(c.getString(c.getColumnIndex("order_sum")));
                objStatus.setOrder_price(c.getString(c.getColumnIndex("order_price")));

                Report1 objReport1 = new Report1();
                objReport1.setGoods(objGoods);
                objReport1.setStatus(objStatus);

                resultList.add(objReport1);
            } catch (Exception e) {
                Log.e("@sayesaman", "Error " + e.toString());
            }
        }
        c.close();

        return resultList;
    }

    //=======================================================================================================================================
    public Report2Hdr getReport2(String goodsRef, OrderStatus reportStatus) {
        final Cursor c;
        String qry = "";
        qry = handler.getResources().getString(R.string.OrderDao_getReport2);
        String[] args = new String[1];
        args[0] = goodsRef;
        c = handler.rawQuery(qry, args);

        Report2Hdr objReport2Hdr = new Report2Hdr();
        Goods objGoods = goodsDao.getOneById(goodsRef);
        objReport2Hdr.setGoods(objGoods);
        objReport2Hdr.setReportStatus(reportStatus);
        ArrayList<Report2Itm> listReport2Itms = new ArrayList<Report2Itm>();
        int i = 0;
        while (c.moveToNext()) {
            try {

                Customer objCustomer = new Customer();
                objCustomer = customerDao.getCustomerSpecById(c.getString(c.getColumnIndex("ID")));
                String goodsQty = c.getString(c.getColumnIndex("GoodsQty"));

                Report2Itm objReport2Itm = new Report2Itm();
                objReport2Itm.setNo(String.valueOf(++i));
                objReport2Itm.setCustomer(objCustomer);
                objReport2Itm.setGoodsQty(goodsQty);

                listReport2Itms.add(objReport2Itm);
            } catch (Exception e) {
                Log.e("@sayesaman", "Error " + e.toString());
            }
        }
        c.close();

        objReport2Hdr.setReport2Itms(listReport2Itms);
        return objReport2Hdr;
    }

    //=======================================================================================================================================
    public String saveItem(String hdrRef, String orderItmId, String goodsRef, String newQty) {
        if (newQty.equals("0") && !orderItmId.equals("0")) {                //CRUD : delete
            String[] args = new String[]{orderItmId};
            handler.getDatabaseHandler().delete("tblOrderItm", "ID = " + orderItmId, null);
            return "0";
        } else if (newQty.equals("0") && orderItmId.equals("0")) {          //CRUD : nothing
            return "0";
        } else if (!newQty.equals("0") && !orderItmId.equals("0")) {        //CRUD : update
            final ContentValues newValues = new ContentValues();
            newValues.put("GoodsQty", newQty);
            handler.getDatabaseHandler().update("tblOrderItm", newValues, "ID = ?", new String[]{orderItmId});
            return orderItmId;
        } else if (!newQty.equals("0") && orderItmId.equals("0")) {         //CRUD : create new record
            final ContentValues newValues = new ContentValues();
            String newOrderItmId = newOrderItemId();
            newValues.put("ID", newOrderItmId);
            newValues.put("GoodsRef", goodsRef);
            newValues.put("GoodsQty", newQty);
            newValues.put("HdrRef", hdrRef);
            handler.getDatabaseHandler().insert("tblOrderItm", null, newValues);
            return newOrderItmId;
        }

        return null;
    }

    private String newOrderItemId() {
        String qry = "SELECT ifnull(max(id),0) + 1 newId  from tblOrderItm";
        final Cursor c = handler.rawQuery(qry, null);

        String newId = "";
        while (c.moveToNext()) {
            newId = c.getString(c.getColumnIndex("newId"));
        }
        c.close();

        return newId;
    }

    public void saveBuyType(String formId, BuyType buyType) {
        final ContentValues newValues = new ContentValues();
        newValues.put("OrderBuyTypeID", buyType.getId());
        newValues.put("OrderBuyTypeCode", buyType.getCode());
        newValues.put("OrderNatijeVisitValue", 1);
        handler.getDatabaseHandler().update("tblTourItm", newValues, "ID = ?", new String[]{formId});
    }
    //=======================================================================================================================================
}
