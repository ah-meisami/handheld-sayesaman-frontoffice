/*
  Dynamic Layouts in Android
* http://www.dreamincode.net/forums/topic/130521-android-part-iii-dynamic-layouts/
* */
package org.sayesaman.tut2.dynamicui;

import android.app.Activity;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

/**
 * Created by User on 8/15/13.
 */
public class MyActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        ScrollView sv = new ScrollView(this);
        LinearLayout ll = new LinearLayout(this);
        ll.setOrientation(LinearLayout.VERTICAL);
        sv.addView(ll);
        sv.setLayoutParams(new ViewGroup.LayoutParams(80, 80));

        TextView tv = new TextView(this);
        tv.setText("TextView");
        ll.addView(tv);

        EditText et = new EditText(this);
        et.setText("EditText");
        ll.addView(et);

        Button b = new Button(this);
        b.setText("Button)");
        ll.addView(b);

        for (int i = 0; i < 20; i++) {
            CheckBox cb = new CheckBox(this);
            cb.setText("CheckBox");
            ll.addView(cb);
        }
        this.setContentView(sv);
    }
}
