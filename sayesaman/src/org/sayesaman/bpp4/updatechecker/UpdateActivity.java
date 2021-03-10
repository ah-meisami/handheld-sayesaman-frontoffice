package org.sayesaman.bpp4.updatechecker;

import android.app.Activity;
import android.widget.Button;
import android.widget.TextView;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.Click;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.Fullscreen;
import com.googlecode.androidannotations.annotations.NoTitle;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.database.DatabaseHandler;
import org.sayesaman.database.dao.ConfigDao;

@EActivity(R.layout.bpp4)
@NoTitle
@Fullscreen
public class UpdateActivity extends Activity {
    @ViewById
    TextView bpp4_version_code;
    @ViewById
    TextView bpp4_version_code_;
    @ViewById
    TextView bpp4_server_address;
    @ViewById
    TextView bpp4_server_address_;
    @ViewById
    Button bpp4_new_testing_add;
    @ViewById
    Button bpp4_new_testing_remove;
    @ViewById
    Button bpp4_btn_update;

    UpdateChecker checker;

    @Bean
    ConfigDao dao;

    @App
    DatabaseHandler handler;

    @AfterViews
    public void after() {
        checker = new UpdateChecker(this, true, dao.getServerUrl());
        bpp4_version_code.setText(String.valueOf(checker.getVersionCode()));
        bpp4_server_address.setText(dao.getServerUrl());
    }

    @Click
    public void bpp4_btn_update() {
        checker.checkForUpdateByVersionCode(dao.getServerUrl() + "/update/Sayesaman-v.txt");
    }

    @Click
    public void bpp4_new_testing_add() {
        handler.newTestingSqliteAdd();
    }

    @Click
    public void bpp4_new_testing_remove(){
        handler.newTestingSqliteRemove();
    }
}