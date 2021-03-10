package org.sayesaman.app3;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import org.sayesaman.R;
import org.sayesaman.database.model.GoodsGroup;

import java.util.ArrayList;

/**
 * Created by meysami on 8/20/13.
 */
public class ListViewAdapter extends BaseAdapter {
    private Activity activity;
    private static LayoutInflater inflater = null;
    private ArrayList<GoodsGroup> data;

    public ListViewAdapter(MyActivity1 a, ArrayList<GoodsGroup> d) {
        activity = a;
        data = d;
        inflater = (LayoutInflater) activity.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
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
            vi = inflater.inflate(R.layout.app3_row_list, null);

        TextView goodsGroupName = (TextView) vi.findViewById(R.id.goodsGroupName);
        TextView goodsGroupQty = (TextView) vi.findViewById(R.id.goodsQtyActive);
        ImageView goodsGroupImage = (ImageView) vi.findViewById(R.id.goodsGroupImage);

        GoodsGroup group = data.get(position);
        goodsGroupName.setText(group.getName());
        goodsGroupImage.setImageResource(R.drawable.app2_btn02);

        return vi;
    }
}
