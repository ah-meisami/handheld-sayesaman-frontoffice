package org.sayesaman.bpp7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;

import org.sayesaman.R;
import org.sayesaman.database.model.BuyType;
import org.sayesaman.dialog.Statics;

import java.util.ArrayList;

/**
 * Created by meysami on 8/20/13.
 */
public class AdapterSpinnerBuyType extends BaseAdapter {
    private Context context;
    private static LayoutInflater inflater = null;
    private ArrayList<BuyType> data;

    public AdapterSpinnerBuyType(Context context, ArrayList<BuyType> d) {
        context = context;
        data = d;
        inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    }

    @Override
    public int getCount() {
        return data.size();
    }

    @Override
    public Object getItem(int i) {
        return data.get(i);
    }

    @Override
    public long getItemId(int i) {
        return i;
    }


    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View vi = convertView;
        if (convertView == null)
            vi = inflater.inflate(R.layout.bpp7_spinner_buytype, null);

        LinearLayout spinner_buytype_layout = (LinearLayout) vi.findViewById(R.id.spinner_buytype_layout);
        TextView spinner_item1 = (TextView) vi.findViewById(R.id.spinner_buytype_item1);
        TextView spinner_item2 = (TextView) vi.findViewById(R.id.spinner_buytype_item2);

        BuyType buyType = data.get(position);
        spinner_buytype_layout.setBackgroundColor(Statics.getColorEven());
        /*if(Integer.valueOf(buyType.getNo())%2==0){
            spinner_buytype_layout.setBackgroundColor(Statics.getColorEven());
        } else{
            spinner_buytype_layout.setBackgroundColor(Statics.getColorOdd());
        }*/

        spinner_item1.setText(buyType.getNo());
        spinner_item2.setText(buyType.getName());

        return vi;
    }

    public int getPositionById(String buyTypeRef) {
        for (int i = 0; i < data.size(); i++) {
            if (data.get(i).getId().equals(buyTypeRef))
                return i;
        }

        return 0;
    }

    public BuyType getObjByPosition(int i) {
        return data.get(i);
    }
}
