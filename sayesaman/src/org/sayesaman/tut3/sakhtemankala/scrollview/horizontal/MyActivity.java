package org.sayesaman.tut3.sakhtemankala.scrollview.horizontal;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import org.sayesaman.R;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by User on 8/15/13.
 */
public class MyActivity extends Activity {
    LayoutInflater inflater;

    public static final int MAXI = 30;
    public static final int MAXJ = 50;
    public static final int MAXK = 2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.tut3);
        //************************************************************************************************
        initImages();
        inflater = (LayoutInflater) this.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        //************************************************************************************************

        final LinearLayout parent1 = (LinearLayout) findViewById(R.id.tut3_list_goods);

        for (int i = 0; i < MAXI; i++) {
            addview2Parent1(i, parent1);
        }

        LinearLayout parent2 = (LinearLayout) findViewById(R.id.tut3_list_property_head);
        for (int i = 0; i < MAXI; i++) {
            addview2Parent2(i, parent2);
        }
    }

    private void addview2Parent1(int i, LinearLayout parent) {
        View viewGoods = inflater.inflate(R.layout.tut3_goods, null, false);

        ImageView productImg1 = (ImageView) viewGoods.findViewById(R.id.productImg);
        productImg1.setImageResource(map.get("sakhtemankala" + String.valueOf(i % 8)));

        TextView productName1 = (TextView) viewGoods.findViewById(R.id.productName);
        productName1.setText("sakhteman kala " + String.valueOf(++i));

        TextView rowNum1 = (TextView) viewGoods.findViewById(R.id.rowNum);
        rowNum1.setText(String.valueOf(i));

        parent.addView(viewGoods);
    }

    private void addview2Parent2(int i, LinearLayout parent) {
        View viewPropertyHead = inflater.inflate(R.layout.tut3_property_head, null, false);

        TextView caption = (TextView) viewPropertyHead.findViewById(R.id.caption_head);
        caption.setText("kala" + String.valueOf(i));


        LinearLayout linearLayoutPropertyItemList = (LinearLayout) viewPropertyHead.findViewById(R.id.tut3_list_property_item);
        for (int k = 0; k < MAXK; k++) {
            addViewPropertyItem2Parent(i, k, linearLayoutPropertyItemList);
        }

        parent.addView(viewPropertyHead);
    }

    private void addViewPropertyItem2Parent(int i, int k, LinearLayout parent) {
        View viewPropertyHead = inflater.inflate(R.layout.tut3_property_item, null, false);

        TextView caption = (TextView) viewPropertyHead.findViewById(R.id.caption_item);
        caption.setText(String.valueOf(i) + String.valueOf(++k));
        parent.addView(viewPropertyHead);
    }

    Map<String, Integer> map = new HashMap<String, Integer>();

    private void initImages() {
        map.put("sakhtemankala0", R.drawable.sakhtemankala0);
        map.put("sakhtemankala1", R.drawable.sakhtemankala1);
        map.put("sakhtemankala2", R.drawable.sakhtemankala2);
        map.put("sakhtemankala3", R.drawable.sakhtemankala3);
        map.put("sakhtemankala4", R.drawable.sakhtemankala4);
        map.put("sakhtemankala5", R.drawable.sakhtemankala5);
        map.put("sakhtemankala6", R.drawable.sakhtemankala6);
        map.put("sakhtemankala7", R.drawable.sakhtemankala7);
    }
}

