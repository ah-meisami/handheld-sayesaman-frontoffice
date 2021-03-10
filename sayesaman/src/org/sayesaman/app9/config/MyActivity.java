package org.sayesaman.app9.config;

import android.app.Activity;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.Click;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.Fullscreen;
import com.googlecode.androidannotations.annotations.NoTitle;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.database.dao.ConfigDao;
import org.sayesaman.database.model.Config;
import org.sayesaman.dialog.Statics;

/**
 * Created by ameysami on 8/28/13.
 */
@EActivity(R.layout.app9)
@NoTitle
@Fullscreen
public class MyActivity extends Activity {
    @Bean
    ConfigDao dao;

    @ViewById
    TextView app9_my_place_;
    @ViewById
    CheckBox app9_my_place;

    @ViewById
    TextView app9_local_;
    @ViewById
    EditText app9_local_part1;
    @ViewById
    EditText app9_local_part2;
    @ViewById
    EditText app9_local_part3;
    @ViewById
    EditText app9_local_part4;
    @ViewById
    EditText app9_local_port;

    @ViewById
    TextView app9_web_;
    @ViewById
    EditText app9_web_part1;
    @ViewById
    EditText app9_web_part2;
    @ViewById
    EditText app9_web_part3;
    @ViewById
    EditText app9_web_part4;
    @ViewById
    EditText app9_web_port;

    @ViewById
    Button app9_btn_save;
    @ViewById
    Button app9_btn_cancel;

    @AfterViews
    public void after() {
        app9_web_.setTypeface(Statics.getFontTypeFace_Titr());
        app9_local_.setTypeface(Statics.getFontTypeFace_Titr());
        app9_my_place_.setTypeface(Statics.getFontTypeFace_Titr());
        app9_btn_save.setTypeface(Statics.getFontTypeFace_Titr());
        app9_btn_cancel.setTypeface(Statics.getFontTypeFace_Titr());

//        Config address = readDataFromAssets();
        Config address = dao.readDataFromSd();

        app9_my_place.setChecked(address.getAmIInLocal());

        app9_local_part1.setText(address.getLocalPart1());
        app9_local_part2.setText(address.getLocalPart2());
        app9_local_part3.setText(address.getLocalPart3());
        app9_local_part4.setText(address.getLocalPart4());

        app9_local_port.setText(address.getLocalPort());

        app9_web_part1.setText(address.getWebPart1());
        app9_web_part2.setText(address.getWebPart2());
        app9_web_part3.setText(address.getWebPart3());
        app9_web_part4.setText(address.getWebPart4());
        app9_web_port.setText(address.getWebPort());

        //app9_my_place.requestFocus();
    }

    @Click
    void app9_btn_save() {
        Config address = new Config();

        address.setAmIInLocal(app9_my_place.isChecked());

        address.setLocalPart1(String.valueOf(app9_local_part1.getText()));
        address.setLocalPart2(String.valueOf(app9_local_part2.getText()));
        address.setLocalPart3(String.valueOf(app9_local_part3.getText()));
        address.setLocalPart4(String.valueOf(app9_local_part4.getText()));
        address.setLocalPort(String.valueOf(app9_local_port.getText()));

        address.setWebPart1(String.valueOf(app9_web_part1.getText()));
        address.setWebPart2(String.valueOf(app9_web_part2.getText()));
        address.setWebPart3(String.valueOf(app9_web_part3.getText()));
        address.setWebPart4(String.valueOf(app9_web_part4.getText()));
        address.setWebPort(String.valueOf(app9_web_port.getText()));

        dao.modifyXmlNode(address);
        this.finish();
    }

    @Click
    void app9_btn_cancel() {
        this.finish();
    }
}
