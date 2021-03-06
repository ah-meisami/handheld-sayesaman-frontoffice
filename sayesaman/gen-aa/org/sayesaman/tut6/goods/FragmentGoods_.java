//
// DO NOT EDIT THIS FILE, IT HAS BEEN GENERATED USING AndroidAnnotations.
//


package org.sayesaman.tut6.goods;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import org.sayesaman.R.layout;
import org.sayesaman.database.dao.GoodsDao_;

public final class FragmentGoods_
    extends FragmentGoods
{

    private View contentView_;

    private void init_(Bundle savedInstanceState) {
        injectFragmentArguments_();
        goodsDao = GoodsDao_.getInstance_(getActivity());
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
    }

    private void afterSetContentView_() {
        goodsId_ = ((TextView) findViewById(org.sayesaman.R.id.goodsId_));
        goodsImage = ((ImageButton) findViewById(org.sayesaman.R.id.goodsImage));
        goodsCode = ((TextView) findViewById(org.sayesaman.R.id.goodsCode));
        goodsCode_ = ((TextView) findViewById(org.sayesaman.R.id.goodsCode_));
        goodsName = ((TextView) findViewById(org.sayesaman.R.id.goodsName));
        goodsId = ((TextView) findViewById(org.sayesaman.R.id.goodsId));
        goodsName_ = ((TextView) findViewById(org.sayesaman.R.id.goodsName_));
        ((GoodsDao_) goodsDao).afterSetContentView_();
        xx();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        contentView_ = super.onCreateView(inflater, container, savedInstanceState);
        if (contentView_ == null) {
            contentView_ = inflater.inflate(layout.tut6_fragment, container, false);
        }
        return contentView_;
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        afterSetContentView_();
    }

    public View findViewById(int id) {
        if (contentView_ == null) {
            return null;
        }
        return contentView_.findViewById(id);
    }

    public static FragmentGoods_.FragmentBuilder_ builder() {
        return new FragmentGoods_.FragmentBuilder_();
    }

    private void injectFragmentArguments_() {
        Bundle args_ = getArguments();
        if (args_!= null) {
            if (args_.containsKey("fragmentArgGoodsId")) {
                try {
                    fragmentArgGoodsId = args_.getString("fragmentArgGoodsId");
                } catch (ClassCastException e) {
                    Log.e("FragmentGoods_", "Could not cast argument to the expected type, the field is left to its default value", e);
                }
            }
        }
    }

    public static class FragmentBuilder_ {

        private Bundle args_;

        private FragmentBuilder_() {
            args_ = new Bundle();
        }

        public FragmentGoods build() {
            FragmentGoods_ fragment_ = new FragmentGoods_();
            fragment_.setArguments(args_);
            return fragment_;
        }

        public FragmentGoods_.FragmentBuilder_ fragmentArgGoodsId(String fragmentArgGoodsId) {
            args_.putString("fragmentArgGoodsId", fragmentArgGoodsId);
            return this;
        }

    }

}
