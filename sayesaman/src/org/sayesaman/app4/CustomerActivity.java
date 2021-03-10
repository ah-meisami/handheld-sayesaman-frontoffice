package org.sayesaman.app4;

import android.app.Activity;
import android.widget.*;
import com.googlecode.androidannotations.annotations.*;
import org.sayesaman.R;
import org.sayesaman.database.dao.CustomerDao;
import org.sayesaman.database.dao.SalePathDao;
import org.sayesaman.database.model.SalePath;

import java.util.ArrayList;

@EActivity(R.layout.app4)
@NoTitle
@Fullscreen
public class CustomerActivity extends Activity {
    @ViewById
    Spinner spinner1;
    GridView gridView1;
    TextView textViewRecordCount;


    private ArrayList<SalePath> salePathArrayList = null;
    private SalePathAdapter salePathAdapter;

    @Bean
    SalePathDao dao;

    @Bean
    CustomerDao customer;

    @AfterViews
    void loadSpinnerData() {
        salePathArrayList = dao.getAll();
        this.salePathAdapter = new SalePathAdapter(this, R.layout.app4_row_salepath, salePathArrayList);
        spinner1.setAdapter(salePathAdapter);
    }

    @ItemSelect
    public void spinner1ItemSelected(boolean selected, SalePath selectedSalePath) {
        if (selected) {
            Toast.makeText(getApplicationContext(), selectedSalePath.getName(), Toast.LENGTH_SHORT).show();
      //      loadGridData(selectedSalePath.getId());
        }
    }
/*
    private void loadGridData(String V_SalePathRef) {
        GridView gridView1 = (GridView) findViewById(R.id.gridView1);
        final Cursor cursor = customer.getAll(V_SalePathRef);

        String[] cols = new String[]{"RowNum", "CustCode", "CustName", "CustRealName", "CustAddress", "CustPhone"};
        int[] names = new int[]{R.id.RowNum, R.id.CustCode, R.id.CustName, R.id.CustRealName, R.id.CustAddress, R.id.CustPhone};

        SimpleCursorAdapter dataAdapter = new SimpleCursorAdapter(this, R.layout.app3_row_gridview_border, cursor, cols, names);

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
