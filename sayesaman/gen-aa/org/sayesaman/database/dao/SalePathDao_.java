//
// DO NOT EDIT THIS FILE, IT HAS BEEN GENERATED USING AndroidAnnotations.
//


package org.sayesaman.database.dao;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import org.sayesaman.database.DatabaseHandler;

public final class SalePathDao_
    extends SalePathDao
{

    private Context context_;

    private SalePathDao_(Context context) {
        context_ = context;
        init_();
    }

    public void afterSetContentView_() {
        if (!(context_ instanceof Activity)) {
            return ;
        }
    }

    /**
     * You should check that context is an activity before calling this method
     * 
     */
    public View findViewById(int id) {
        Activity activity_ = ((Activity) context_);
        return activity_.findViewById(id);
    }

    @SuppressWarnings("all")
    private void init_() {
        if (context_ instanceof Activity) {
            Activity activity = ((Activity) context_);
            handler = ((DatabaseHandler) activity.getApplication());
        }
    }

    public static SalePathDao_ getInstance_(Context context) {
        return new SalePathDao_(context);
    }

    public void rebind(Context context) {
        context_ = context;
        init_();
    }

}
