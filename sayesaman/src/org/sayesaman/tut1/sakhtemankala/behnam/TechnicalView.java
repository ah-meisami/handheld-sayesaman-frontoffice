/*
package org.sayesaman.tut1.sakhtemankala.behnam;


import java.util.ArrayList;

import dataBase.Product;
import dataBase.ProductProperties;
import dataBase.ProductPropertiesHeader;
import dataBase.ProductPropertiesItem;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

import org.sayesaman.R;

public class TechnicalView extends RelativeLayout implements OnClickListener {
    Handler handler;

    public TechnicalView(Context context) {
        super(context);
        dojobs();
    }

    public TechnicalView(Context context, AttributeSet attrs) {
        super(context, attrs);
        dojobs();
    }

    Product prod;

    public TechnicalView(Context context, Product myProduct) {
        super(context);
        this.prod = myProduct;
        dojobs();
    }

    final void dojobs() {
        try {
            handler = new Handler();
        } catch (Exception ex) {
        }
        if (prod != null) {
            ProductProperties p = new ProductProperties();
            ArrayList<ProductPropertiesHeader> h = p.getProductProperties(prod.getProdID());

            View.inflate(getContext(), R.layout.tut1_view, this);
            //******************************************************************************
            TableLayout tblparent = (TableLayout) findViewById(R.id.technical_tbl_view);
            ((TextView) findViewById(R.id.txt_header_technical)).setText(prod.getProdName());
            //******************************************************************************
            for (ProductPropertiesHeader ph : h) {
                TableRow tr = (TableRow) View.inflate(getContext(), R.layout.tut1_row_head, null);
                ((TextView) tr.findViewById(R.id.txt_caption)).setText(ph.getTitle());
                tblparent.addView(tr);
                for (ProductPropertiesItem pi : ph.getItems()) {
                    TableRow trChild = (TableRow) View.inflate(getContext(), R.layout.tut1_row_child, null);
                    ((TextView) trChild.findViewById(R.id.txt_technical_type_cap)).setText(pi.getPropertiesTitle() + ":   ");
                    ((TextView) trChild.findViewById(R.id.txt_technical_type)).setText("    " + pi.getPropertiesValue());

                    tblparent.addView(trChild);
                }
            }
        }
    }

    @Override
    public void onClick(View v) {

    }
}
*/