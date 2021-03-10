package org.sayesaman.app3;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import org.sayesaman.R;
import org.sayesaman.database.model.Goods;
import org.sayesaman.dialog.Statics;

import java.util.ArrayList;

public class GridViewAdapter extends BaseAdapter {
    private Activity activity;
    private static LayoutInflater inflater = null;
    private ArrayList<Goods> data;

    public GridViewAdapter(MyActivity1 myActivity, ArrayList<Goods> list) {
        activity = myActivity;
        data = list;
    }

    @Override
    public int getCount() {
        return data.size();
    }

    @Override
    public Object getItem(int position) {
        return data.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    public static class ViewHolder {
        public ImageView imgViewFlag;
        public TextView txtViewTitle;
        public TextView goodsName;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder view;
        LayoutInflater inflator = activity.getLayoutInflater();

        if (convertView == null) {
            view = new ViewHolder();
            convertView = inflator.inflate(R.layout.app3_row_gridview, null);

            view.txtViewTitle = (TextView) convertView.findViewById(R.id.textView1);
            view.imgViewFlag = (ImageView) convertView.findViewById(R.id.imageView1);
            view.goodsName = (TextView) convertView.findViewById(R.id.goodsName);

            convertView.setTag(view);
        } else {
            view = (ViewHolder) convertView.getTag();
        }

        Goods goods = data.get(position);
        view.txtViewTitle.setText(goods.getCode());
        view.goodsName.setText(goods.getName());
        Statics.setImg2(view.imgViewFlag, "Goods", goods.getCode());

        return convertView;
    }

}
