package org.sayesaman.app2;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.Toast;

import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.Click;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.Fullscreen;
import com.googlecode.androidannotations.annotations.NoTitle;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.database.DatabaseHandler;

/**
 * Created with IntelliJ IDEA.
 * User: a_meysami
 * Date: 11/26/12
 * Time: 8:49 AM
 * To change this template use File | Settings | File Templates.
 */
@EActivity(R.layout.app2)
@NoTitle
@Fullscreen
public class MainActivity extends Activity {
    @App
    DatabaseHandler handler;

    @ViewById
    ImageView app2_btn01;
    @ViewById
    ImageView app2_btn02;
    @ViewById
    ImageView app2_btn03;
    @ViewById
    ImageView app2_btn04;
    @ViewById
    ImageView app2_btn05;
    @ViewById
    ImageView app2_btn06;
    @ViewById
    ImageView app2_btn07;
    @ViewById
    ImageView app2_btn08;
    @ViewById
    ImageView app2_btn09;
    @ViewById
    ImageView app2_btn10;
    @ViewById
    ImageView app2_btn11;
    @ViewById
    ImageView app2_btn12;
    @ViewById
    ImageView app2_btn13;
    @ViewById
    ImageView app2_btn14;
    @ViewById
    ImageView app2_btn15;
    @ViewById
    ImageView app2_btn16;
    @ViewById
    ImageView app2_btn17;
    @ViewById
    ImageView app2_btn18;
    @ViewById
    ImageView app2_btn19;

    @Click
    void app2_btn01() {
        if (handler.isConnected()) {
            Toast.makeText(this, "1", Toast.LENGTH_SHORT).show();

            Intent i = new Intent();
            i.setClass(getApplicationContext(), org.sayesaman.app7.MyActivity_.class);
            startActivity(i);
        }
    }

    @Click
    void app2_btn02() {
        Toast.makeText(this, "2", Toast.LENGTH_SHORT).show();

        final Intent intent = new Intent();
        ComponentName cName = new ComponentName("org.mapsforge.applications.android.advancedmapviewer", "org.mapsforge.applications.android.advancedmapviewer.AdvancedMapViewer");
        intent.setComponent(cName);
        startActivity(intent);
    }

    @Click
    void app2_btn03() {
        if (handler.isConnected()) {
            Toast.makeText(this, "3", Toast.LENGTH_SHORT).show();

            Intent i = new Intent();
            i.setClass(getApplicationContext(), org.sayesaman.bpp1.MyActivity_.class);
            startActivity(i);
        }
    }

    @Click
    void app2_btn04() {
        if (handler.isConnected()) {
            Toast.makeText(this, "4", Toast.LENGTH_SHORT).show();

            Intent i = new Intent();
            i.setClass(getApplicationContext(), org.sayesaman.bpp2.MyActivity_.class);
            startActivity(i);
        }
    }

    @Click
    void app2_btn05() {
        if (handler.isConnected()) {
            Toast.makeText(this, "5", Toast.LENGTH_SHORT).show();

            Intent i = new Intent();
            i.setClass(getApplicationContext(), org.sayesaman.app3.MyActivity1_.class);
            startActivity(i);
        }
    }

    @Click
    void app2_btn06() {
        if (handler.isConnected()) {
            Toast.makeText(this, "6", Toast.LENGTH_SHORT).show();

            Intent i = new Intent();
            i.setClass(getApplicationContext(), org.sayesaman.bpp3.MyActivity_.class);
            startActivity(i);
        }
    }

    @Click
    void app2_btn07() {
        if (handler.isConnected()) {
            Toast.makeText(this, "7", Toast.LENGTH_SHORT).show();

            Intent i = new Intent();
            i.setClass(getApplicationContext(), org.sayesaman.tut4.path.PageViewActivity_.class);
            startActivity(i);
        }
    }

    @Click
    void app2_btn08() {
        if (handler.isConnected()) {
            Toast.makeText(this, "8", Toast.LENGTH_SHORT).show();

            Intent i = new Intent();
            i.setClass(getApplicationContext(), org.sayesaman.bpp8.MyActivity_.class);
            startActivity(i);
        }
    }

    @Click
    void app2_btn09() {
        Toast.makeText(this, "9", Toast.LENGTH_SHORT).show();

        Intent i = new Intent();
        i.setClass(getApplicationContext(), org.sayesaman.bpp4.updatechecker.UpdateActivity_.class);
        startActivity(i);
    }

    @Click
    void app2_btn10() {
        Toast.makeText(this, "10", Toast.LENGTH_SHORT).show();

        Intent i = new Intent();
        i.setClass(getApplicationContext(), org.sayesaman.app9.config.MyActivity_.class);
        startActivity(i);
    }

    @Click
    void app2_btn11() {
        Toast.makeText(this, "11", Toast.LENGTH_SHORT).show();

        Intent i = new Intent();
        i.setClass(getApplicationContext(), org.sayesaman.bpp5.info.MyActivity_.class);
        startActivity(i);
    }

    @Click
    void app2_btn12() {
        Toast.makeText(this, "12", Toast.LENGTH_SHORT).show();

        finish();
    }

    @Click
    void app2_btn13() {
        Toast.makeText(this, "13", Toast.LENGTH_SHORT).show();

        final Intent intent = new Intent();
        ComponentName cName = new ComponentName("net.cloud.computing", "net.cloud.computing.app1.Activity1");
        intent.setComponent(cName);
        startActivity(intent);
    }

    @Click
    void app2_btn14() {
        Toast.makeText(this, "14", Toast.LENGTH_SHORT).show();

        final Intent intent = new Intent();
        ComponentName cName = new ComponentName("net.cloud.computing.inventory", "net.cloud.computing.inventory.app1.Activity1");
        intent.setComponent(cName);
        startActivity(intent);
    }

    @Click
    void app2_btn15() {
        Toast.makeText(this, "15", Toast.LENGTH_SHORT).show();

        Intent intent = new Intent("com.google.zxing.client.android.SCAN");
//        intent.putExtra("SCAN_MODE", "PRODUCT_MODE");
        startActivityForResult(intent, 0);
    }

    @Click
    void app2_btn16() {
        Toast.makeText(this, "در حال آماده سازی", Toast.LENGTH_SHORT).show();
    }

    @Click
    void app2_btn17() {
        Toast.makeText(this, "در حال آماده سازی", Toast.LENGTH_SHORT).show();
    }

    @Click
    void app2_btn18() {
        Toast.makeText(this, "در حال آماده سازی", Toast.LENGTH_SHORT).show();
    }

    @Click
    void app2_btn19() {
        Toast.makeText(this, "در حال آماده سازی", Toast.LENGTH_SHORT).show();
    }

    public void onActivityResult(int requestCode, int resultCode, Intent intent) {
        if (requestCode == 0) {
            if (resultCode == RESULT_OK) {
                String contents = intent.getStringExtra("SCAN_RESULT");
                String format = intent.getStringExtra("SCAN_RESULT_FORMAT");
                // Handle successful scan
                String msg = "بارکد " + contents + " با فرمت " + format + " شناسایی شد.";
                Toast.makeText(this, msg, Toast.LENGTH_LONG).show();
            } else if (resultCode == RESULT_CANCELED) {
                // Handle cancel
            }
        }
    }
}