package org.sayesaman.app6.expandablelist;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import org.sayesaman.R;
import org.sayesaman.database.model.GoodsGroup;
import org.sayesaman.dialog.Statics;

import java.util.ArrayList;

public class ExpandableListAdapter extends BaseExpandableListAdapter {
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    private ArrayList<GoodsGroup> _list;
    private Context _context;
    private LayoutInflater _iInflater;

    public ExpandableListAdapter(Context context, ArrayList<GoodsGroup> list) {
        this._context = context;
        this._list = list;
        this._iInflater = LayoutInflater.from(context);
    }

    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    @Override
    public Object getGroup(int position) {
        return this._list.get(position);
    }

    @Override
    public int getGroupCount() {
        return this._list.size();
    }

    @Override
    public long getGroupId(int position) {
        return position;
    }


    @Override
    public View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
        GoodsGroup mainGroup = (GoodsGroup) _list.get(groupPosition);

        if (convertView == null) {
            LayoutInflater infalInflater = (LayoutInflater) this._context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = infalInflater.inflate(R.layout.app6_list_group, null);
        }

        if (groupPosition % 2 == 0)
            convertView.setBackgroundColor(Color.WHITE);
        else
            convertView.setBackgroundColor(Color.BLUE);


        TextView main_group_name = (TextView) convertView.findViewById(R.id.main_group_name);
        main_group_name.setText(mainGroup.getName());
        main_group_name.setTypeface(Statics.getFontTypeFace_Titr());

        return convertView;
    }

    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    @Override
    public Object getChild(int groupPosition, int childPosititon) {
        return this._list.get(groupPosition).getList().get(childPosititon);
    }

    @Override
    public long getChildId(int groupPosition, int childPosition) {
        return childPosition;
    }

    @Override
    public View getChildView(int groupPosition, final int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
        if (convertView == null) {
            LayoutInflater infalInflater = (LayoutInflater) this._context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = infalInflater.inflate(R.layout.app6_list_item, null);
        }

        final GoodsGroup subGroup = (GoodsGroup) _list.get(groupPosition).getList().get(childPosition);

        TextView sub_group_id = (TextView) convertView.findViewById(R.id.sub_group_id);
        sub_group_id.setText(subGroup.getId());

        TextView sub_group_name = (TextView) convertView.findViewById(R.id.sub_group_name);
        sub_group_name.setText(subGroup.getName());
        sub_group_name.setTypeface(Statics.getFontTypeFace_Nazanin());

        ImageView sub_group_image = (ImageView) convertView.findViewById(R.id.sub_group_image);
        Statics.setImg2(sub_group_image, "GoodsGroup", subGroup.getId());

        return convertView;
    }

    @Override
    public int getChildrenCount(int groupPosition) {
        return this._list.get(groupPosition).getList().size();
    }

    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    @Override
    public boolean hasStableIds() {
        return false;
    }

    @Override
    public boolean isChildSelectable(int groupPosition, int childPosition) {
        return true;
    }
}
