package org.sayesaman.app7;

import android.app.Activity;
import android.content.Context;
import android.telephony.TelephonyManager;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Bean;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.Fullscreen;
import com.googlecode.androidannotations.annotations.NoTitle;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.database.dao.CustomerDao;
import org.sayesaman.database.dao.TourDao;
import org.sayesaman.database.model.Customer;
import org.sayesaman.database.model.Tour;
import org.sayesaman.dialog.Statics;
import org.sayesaman.bpp4.updatechecker.UpdateChecker;

import java.util.ArrayList;

/**
 * Created by ameysami on 8/28/13.
 */
@EActivity(R.layout.app7)
@NoTitle
@Fullscreen
public class MyActivity extends Activity {
    @Bean
    TourDao tourDao;
    @Bean
    CustomerDao customerDao;

    @ViewById
    ImageView app7_user;
    @ViewById
    TextView app7_vizitor_;
    @ViewById
    TextView app7_shomare_toor_;
    @ViewById
    TextView app7_tarikh_visit_;
    @ViewById
    TextView app7_sakhtafzar_;
    @ViewById
    TextView app7_narmafzar_;
    @ViewById
    TextView app7_sarparast_;
    @ViewById
    TextView app7_mantaghe_;
    @ViewById
    TextView app7_nahieh_;
    @ViewById
    TextView app7_masir_asli_;
    @ViewById
    TextView app7_tedad_moshtari_kol_;
    @ViewById
    TextView app7_kanal_vizitor_;
    @ViewById
    TextView app7_darkhast_kharej_masir_no_;
    @ViewById
    TextView app7_mablagh_darkhast_min_;
    @ViewById
    TextView app7_zayeat_max_;

    @AfterViews
    public void after() {
        Tour tour = tourDao.getTour();

        Statics.setImg2(app7_user, "Personnel", tour.getDealerId());

        app7_vizitor_.setText(tour.getDealerCode() + " : " + tour.getDealerName() + " : " + tour.getDealerId());
        app7_shomare_toor_.setText(tour.getNo());
        app7_tarikh_visit_.setText(tour.getDate());
        app7_kanal_vizitor_.setText(tour.getDealerSaleLeveName());
        app7_darkhast_kharej_masir_no_.setText(tour.getMaxAcceptableOrders());

        app7_mablagh_darkhast_min_.setText(Statics.commas.insertCommas(tour.getMinPriceSale()));
        app7_zayeat_max_.setText(Statics.commas.insertCommas(tour.getMaxPriceWaste()));

        app7_masir_asli_.setText(tour.getMainPathName());
        app7_sarparast_.setText(tour.getDealerSuperName());

        app7_sakhtafzar_.setText(tour.getImei());
        UpdateChecker updateChecker = new UpdateChecker(this,true);
        app7_narmafzar_.setText(String.valueOf(updateChecker.getVersionCode()));

        app7_mantaghe_.setText(tour.getSaleZone());
        app7_nahieh_.setText(tour.getSaleArea());

        ArrayList<Customer> list = customerDao.getAll("0");
        app7_tedad_moshtari_kol_.setText(Statics.commas.insertCommas(String.valueOf(list.size())));


        TelephonyManager tm = (TelephonyManager) getSystemService(Context.TELEPHONY_SERVICE);
        String imei = tm.getDeviceId();

        if (!tour.getImei().equals(imei))
            Toast.makeText(getApplicationContext(), "Your IMEI is not equal to device IMEI. Please Connect Support asap !", Toast.LENGTH_LONG).show();
    }

}
