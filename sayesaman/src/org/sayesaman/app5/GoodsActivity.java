package org.sayesaman.app5;

import android.app.Activity;
import android.database.Cursor;
import android.view.View;
import android.widget.*;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.Fullscreen;
import com.googlecode.androidannotations.annotations.NoTitle;
import org.sayesaman.R;
import org.sayesaman.database.DatabaseHandler;

import java.util.ArrayList;
import java.util.List;

@EActivity(R.layout.app5)
@NoTitle
@Fullscreen
public class GoodsActivity extends Activity {

    Spinner spinner1;
    GridView gridView1;
    TextView textViewRecordCount;

    @App
    DatabaseHandler handler;

    @AfterViews
    public void afterViews(){
//        loadSpinnerData();
    }

/*
    private void loadSpinnerData() {
        spinner1 = (Spinner) findViewById(R.id.spinner1);
        final Cursor cursor = handler.getCursorGoodsGroup();

        List<String> labels = new ArrayList<String>();

        // looping through all rows and adding to list
        if (cursor.moveToFirst()) {
            do {
                labels.add(cursor.getString(2));
            } while (cursor.moveToNext());
        }

        ArrayAdapter<String> dataAdapter = new ArrayAdapter<String>(this, R.layout.app4_row_salepath, labels);// Creating adapter for spinner1
        dataAdapter.setDropDownViewResource(R.layout.app4_row_salepath);// Drop down layout style - list view with radio button
        spinner1.setAdapter(dataAdapter);// attaching data adapter to spinner1

        spinner1.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                int position = spinner1.getSelectedItemPosition();
                cursor.moveToPosition(position);

//                loadGridData(cursor.getString(cursor.getColumnIndex("V_GoodsManufacturerID")));
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
    }
*/

/*
    private void loadGridData(String V_GoodsManufacturerID) {
        GridView gridView1 = (GridView) findViewById(R.id.gridView1);
        final Cursor cursor = handler.getCursorGoods(V_GoodsManufacturerID);

        String[] cols = new String[]{"RowNum", "GoodsCode", "V_GoodsManufacturerName", "V_GoodsMainGroupName", "V_GoodsSubGroupName", "GoodsName", "GoodsPrice"};
        int[] names = new int[]{R.id.RowNum, R.id.GoodsCode, R.id.V_GoodsManufacturerName, R.id.V_GoodsMainGroupName, R.id.V_GoodsSubGroupName, R.id.GoodsName, R.id.GoodsPrice};

        SimpleCursorAdapter dataAdapter = new SimpleCursorAdapter(this, R.layout.app5_row_gridview, cursor, cols, names);
        gridView1.setAdapter(dataAdapter);

        textViewRecordCount = (TextView) findViewById(R.id.textViewRecordCount);
        textViewRecordCount.setText(String.valueOf(cursor.getCount()));

        gridView1.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                cursor.moveToPosition(i);

                String ID = cursor.getString(cursor.getColumnIndex("ID"));
                Toast.makeText(getBaseContext(), ID, Toast.LENGTH_SHORT).show();
                //todo:Goto Next Activity
            }
        });
    }
*/
}
