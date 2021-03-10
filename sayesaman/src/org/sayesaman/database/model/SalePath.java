package org.sayesaman.database.model;

import android.database.Cursor;

import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.EBean;

import org.sayesaman.R;
import org.sayesaman.database.DatabaseHandler;

import java.util.ArrayList;

/**
 * Created with IntelliJ IDEA.
 * User: ameysami
 * Date: 8/14/13
 * Time: 10:13 PM
 * To change this template use File | Settings | File Templates.
 */
public class SalePath {
    private String id;
    private String name;
    private String qty;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getQty() {
        return qty;
    }

    public void setQty(String qty) {
        this.qty = qty;
    }

}
