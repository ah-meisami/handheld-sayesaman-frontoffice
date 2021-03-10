package org.sayesaman.database.dao;

import android.database.Cursor;

import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.EBean;

import org.sayesaman.database.DatabaseHandler;
import org.sayesaman.database.model.RetCause;

import java.util.ArrayList;

/**
 * Created by meysami on 8/22/13.
 */
@EBean
public class RetCauseDao {
    @App
    DatabaseHandler handler;


    public RetCause getNext(String id) {
        ArrayList<RetCause> retCauses = new ArrayList<RetCause>();
        String qry = "SELECT * FROM tblRetCause Order By ID";
        final Cursor c = handler.rawQuery(qry, null);

        while (c.moveToNext()) {
            RetCause obj = new RetCause();
            obj.setId(c.getString(c.getColumnIndex("ID")));
            obj.setName(c.getString(c.getColumnIndex("Name")));
            retCauses.add(obj);
        }
        c.close();


        if (id.equals("") || id == null) {
            return retCauses.get(retCauses.size()-1);
        } else {
            for (int i = 0; i < retCauses.size(); i++) {
                if (retCauses.get(i).getId().equals(id))
                    if (i == 0)
                        return retCauses.get(retCauses.size()-1);
                    else
                        return retCauses.get(--i);
            }
        }

        return null;
    }
}
