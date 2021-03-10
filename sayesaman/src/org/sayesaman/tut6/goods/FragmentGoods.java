package org.sayesaman.tut6.goods;

import android.graphics.Typeface;
import android.support.v4.app.Fragment;
import android.widget.ImageButton;
import android.widget.TextView;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.FragmentArg;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.database.dao.GoodsDao;
import org.sayesaman.database.model.Goods;
import org.sayesaman.dialog.Statics;

@EFragment(R.layout.tut6_fragment)
public class FragmentGoods extends Fragment {
    @FragmentArg
    String fragmentArgGoodsId;

    @Bean
    GoodsDao goodsDao;

    @ViewById
    TextView goodsId;
    @ViewById
    TextView goodsCode;
    @ViewById
    TextView goodsName;
    @ViewById
    ImageButton goodsImage;
    @ViewById
    TextView goodsId_;
    @ViewById
    TextView goodsCode_;
    @ViewById
    TextView goodsName_;

    @AfterViews
    void xx() {
        Goods goods= goodsDao.getOneById(fragmentArgGoodsId);

        goodsId.setText(goods.getId());
        goodsName.setText(goods.getName());
        goodsCode.setText(goods.getCode());

        Statics.setImg2(goodsImage, "Goods", goods.getCode());

        Typeface tf = Typeface.createFromAsset(getActivity().getApplicationContext().getAssets(), "fonts/Nazanin.ttf");// Loading Font Face
        goodsId.setTypeface(tf);
        goodsName.setTypeface(tf);
        goodsCode.setTypeface(tf);

        goodsId_.setTypeface(tf);
        goodsName_.setTypeface(tf);
        goodsCode_.setTypeface(tf);
    }
}
