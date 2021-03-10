package org.sayesaman.app4;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import android.widget.Toast;
import org.sayesaman.R;
import org.sayesaman.database.model.SalePath;

import java.util.ArrayList;

/**
 * Created with IntelliJ IDEA.
 * User: ameysami
 * Android: How to bind spinner to custom object list?
 * http://stackoverflow.com/questions/1625249/android-how-to-bind-spinner-to-custom-object-list
 */
public class SalePathAdapter extends ArrayAdapter<SalePath> {
    private final ArrayList<SalePath> items;
    private final Context context;


    public SalePathAdapter(Context context, int textViewResourceId, ArrayList<SalePath> items) {
        super(context, textViewResourceId, items);
        this.items = items;
        this.context = context;
    }

    @Override
    public int getCount() {
        return items.size();
    }


    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        //convertView = inflater.sakhtemankala(R.layout.app4_row_salepath, null);
        View rowView = inflater.inflate(R.layout.app4_row_salepath, parent, false);

        TextView label = (TextView) super.getView(position, convertView, parent);
        label.setTextColor(Color.BLACK);
        label.setText(this.getItem(position).getName());
        return label;
/*
        SalePath o = items.get(position);
        if (o != null) {
            TextView tvSalePathName = (TextView) rowView.findViewById(R.id.tvSalePathName);
            if (tvSalePathName != null) {
                tvSalePathName.setText(o.getName());
            }
        }
*/
    }

    @Override
    public View getDropDownView(int position, View convertView, ViewGroup parent) {
        TextView label = (TextView) super.getView(position, convertView, parent);
        label.setTextColor(Color.BLACK);
        label.setText(this.getItem(position).getName());
        return label;
    }
}


